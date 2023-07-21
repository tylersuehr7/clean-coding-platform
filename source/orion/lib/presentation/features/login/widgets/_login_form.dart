part of login;

class _LoginForm extends StatelessWidget {
  final _LoginCubit loginCubit;
  const _LoginForm(this.loginCubit);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Form(
      child: BlocConsumer<_LoginCubit, _LoginScreenUiState>(
        bloc: loginCubit,
        builder: (context, state) => Column(
          children: [
            TextFormField(
              enabled: !state.isLoading,
              controller: usernameController,
              validator: (value) => loginCubit.validateUsername(value),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                hintText: "Username",
              ),
            ),
            const SizedBox(height: grid2),
            TextFormField(
              enabled: !state.isLoading,
              controller: passwordController,
              validator: (value) => loginCubit.validatePassword(value),
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            const SizedBox(height: grid4),
            if (state.isLoading)
              const Padding(
                padding: EdgeInsets.only(left: grid4, right: grid4, bottom: grid3),
                child: LinearProgressIndicator(),
              ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: state.isDisableSubmit ? null : () {
                  final String username = usernameController.text;
                  final String password = passwordController.text;
                  loginCubit.performLogin(username, password);
                },
                child: const Text("Login")
              )
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: state.isLoading ? null : () {
                  // TODO: open create account screen
                },
                child: const Text("I don't have an account")
              )
            )
          ],
        ),
        listener: (context, state) {
          final String? errorMessage = state.errorMessage;
          if (errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: theme.colorScheme.error,
              content: Text(errorMessage)
            ));
          }
        },
      )
    );
  }
}
