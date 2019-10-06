//mensaje de se ha insertado pj
function InsertarCorrectamentePJ(){
    Swal.fire({        
        type: 'success',
        title: 'EXITO',
        text: 'Se ha podido insertar exitosamente'     
    }).then(function () {
        window.location.href = "http://localhost:8080/ProyectoConstruccion/View/ProcesoJuridico/indexpj.jsp";
    });
}

//mensaje de se ha insertado cita
function InsertarCorrectamenteC(){
    Swal.fire({        
        type: 'success',
        title: 'EXITO',
        text: 'Se ha podido insertar exitosamente'     
    }).then(function () {
        window.location.href = "http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp";
    });
}

//mensaje de Actualizar una cita 
function ActualizarCorrectamenteC(){
    Swal.fire({        
        type: 'success',
        title: 'EXITO',
        text: 'Se ha actualizado exitosamente'     
    }).then(function () {
        window.location.href = "http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp";
    });
}


//mensaje de se ha insertado correctamente,cita,pj,usuario
function InsertarCorrectamente(){
    Swal.fire({        
        type: 'success',
        title: 'EXITO',
        text: 'Se ha podido insertar exitosamente'     
    });
}

//mensaje de Actualizar una cita o alguna otra informacion
function ActualizarCorrectamente(){
    Swal.fire({        
        type: 'success',
        title: 'EXITO',
        text: 'Se ha actualizado exitosamente'     
    });
}


//no tiene permiso
function NoPermiso(link){
    Swal.fire({        
        type: 'error',
        title: 'ERROR',
        text: 'Su usuario no tiene permisos para acceder a esta funcionalidad'       
    });
}    

//mensaje de se ha cargado correctamnete (REGISTROS)
function InsertarCorrectamenteRegistros(){
    Swal.fire({        
        type: 'success',
        title: 'EXITO',
        text: 'Se cargarón correctamente los registros'       
    }).then(function () {
        window.location.href = "http://localhost:8080/ProyectoConstruccion/View/Registros.jsp";
    });
}

//No se ha logueado
function ErrorLogin(){
    Swal.fire({        
        type: 'error',
        title: 'ERROR',
        text: 'Primero debe ingresar su usuario y contraseña',   
       backdrop: '#61bbe6'
    }).then(function () {
        window.location.href = "http://localhost:8080/ProyectoConstruccion/index.jsp";
    });
}








//cerrar sesion???
$("#btn3").click(function(){
    Swal.fire({
    title: 'Esta seguro?',
    text: "Quiere cerrar sesion?",
    type: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Cerrar sesion'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
          type: 'success',
          title: 'EXITO',
          text: 'ha cerrado sesion correctamente',   
      });
    }
  });
});




$("#btn").click(function(){
    /*Swal.fire({
        //error
        type: 'error',
        title: 'Error',
        text: 'Â¡Algo saliÃ³ mal!',        
    });*/
    Swal.fire({        
        type: 'success',
        title: 'Ã‰xito',
        text: 'Â¡Perfecto!',        
    });
});	
$("#btn").click(function(){
    /*Swal.fire({
        //error
        type: 'error',
        title: 'Error',
        text: 'Â¡Algo saliÃ³ mal!',        
    });*/
    Swal.fire({        
        type: 'success',
        title: 'Ã‰xito',
        text: 'Â¡Perfecto!',        
    }).then(function () {
        window.location.href = "";
    });
});