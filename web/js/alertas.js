//mensaje de se ha insertado correctamente
function InsertarCorrectamente(){
    Swal.fire({        
        type: 'success',
        title: 'EXITO',
        text: 'Se ha podido insertar exitosamente'     
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
function InsertarCorrectamente(){
    Swal.fire({        
        type: 'success',
        title: 'EXITO',
        text: 'Se cargarón correctamente los registros'       
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