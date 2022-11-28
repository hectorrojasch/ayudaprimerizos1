1- Para crear roles se debe entrar a consola(rails c)

2- Crear una variable de instancia con el user al que se le desea dar el rol common, sailsman, admin

por ej. -- rol = User.Last

3- rol.update!(role: :admin) por ejemplo.
