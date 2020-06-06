<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <title>
            Biblioteca-BOR
        </title>
        <style>
            .fondo{
                    /* The image used */
                    background-image: url("https://cdn.pixabay.com/photo/2019/11/23/03/13/books-4646129_960_720.jpg");
                    /* Full height */
                    height: 100%;

                    /* Center and scale the image nicely */
                    background-position: center;
                    background-repeat: no-repeat;
                    background-size: cover;
                    }
        </style>
    </head>
    <style type="text/css">
    font-weigth:bold
    </style>
    
    <body class="fondo">
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ebaf0c;color: #ffffff;">
            <a class="navbar-brand" href="#">
                
                <svg class="bi bi-book-half" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M12.786 1.072C11.188.752 9.084.71 7.646 2.146A.5.5 0 0 0 7.5 2.5v11a.5.5 0 0 0 .854.354c.843-.844 2.115-1.059 3.47-.92 1.344.14 2.66.617 3.452 1.013A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.276-.447L15.5 2.5l.224-.447-.002-.001-.004-.002-.013-.006-.047-.023a12.582 12.582 0 0 0-.799-.34 12.96 12.96 0 0 0-2.073-.609zM15 2.82v9.908c-.846-.343-1.944-.672-3.074-.788-1.143-.118-2.387-.023-3.426.56V2.718c1.063-.929 2.631-.956 4.09-.664A11.956 11.956 0 0 1 15 2.82z"/>
                    <path fill-rule="evenodd" d="M3.214 1.072C4.813.752 6.916.71 8.354 2.146A.5.5 0 0 1 8.5 2.5v11a.5.5 0 0 1-.854.354c-.843-.844-2.115-1.059-3.47-.92-1.344.14-2.66.617-3.452 1.013A.5.5 0 0 1 0 13.5v-11a.5.5 0 0 1 .276-.447L.5 2.5l-.224-.447.002-.001.004-.002.013-.006a5.017 5.017 0 0 1 .22-.103 12.958 12.958 0 0 1 2.7-.869z"/>
                  </svg>
                BOR
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="#">
                    <svg class="bi bi-house-fill" width="1em" height="1em" viewBox="0 1.5 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M8 3.293l6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                        <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                      </svg>
                      Home 
                      <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Aulas</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Profesores
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Aulas</a>
                    <a class="dropdown-item" href="#">Libros</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Agregar Aula</a>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <svg class="bi bi-award-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path d="M8 0l1.669.864 1.858.282.842 1.68 1.337 1.32L13.4 6l.306 1.854-1.337 1.32-.842 1.68-1.858.282L8 12l-1.669-.864-1.858-.282-.842-1.68-1.337-1.32L2.6 6l-.306-1.854 1.337-1.32.842-1.68L6.331.864 8 0z"/>
                        <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1 4 11.794z"/>
                      </svg>
                    Titulo
                    </a>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button type="button" class="btn btn-outline-dark">Search</button>
                <!--<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>-->
              </form>
            </div>
          </nav>


          <br>
 
          
          <<blockquote class="blockquote text-center">
            <p class="p-0 mb-16 bg-transparent text-white" style="font-size:50px;font-family:Cambria;" >Siempre imaginé el paraíso como una especie de biblioteca.</p>
            <footer class="blockquote-footer" style="font-size:35px;font-family:garamond;color: whitesmoke;">Jorge Luis Borges</footer>
          </blockquote>

          <br>
          
          <div class="container">
                <div class="row">
                    <div class="col-md">
                        <div class="d-flex justify-content-center">
                            <div class="card border-warning mb-3">
                                <img src="https://www.65ymas.com/uploads/s1/19/86/23/donde-y-como-se-pueden-donar-libros-que-ya-no-queremos.jpeg" class="card-img-top" alt="...">
                                <div class="card-header">Header</div>
                                <div class="card-body text-warning">
                                <h5 class="card-title">Warning card title</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </div>
                        </div>
                    </div>
    
                    <div class="col-md">
                        <div class="d-flex justify-content-center">
                            <div class="card border-warning mb-3">
                                <img src="https://www.65ymas.com/uploads/s1/19/86/23/donde-y-como-se-pueden-donar-libros-que-ya-no-queremos.jpeg" class="card-img-top" alt="...">
                                <div class="card-header">Header</div>
                                <div class="card-body text-warning">
                                <h5 class="card-title">Warning card title</h5>
                                    <p class="card-text">
                                        Some quick example text to build on the card title and make up the bulk of the card's content.
                                        <a href="FormularioInsertarLibro.jsp">Insertar Libro</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
    
                    <div class="col-md">
                        <div class="d-flex justify-content-center">
                            <div class="card border-warning mb-3">
                                <img src="https://www.65ymas.com/uploads/s1/19/86/23/donde-y-como-se-pueden-donar-libros-que-ya-no-queremos.jpeg" class="card-img-top" alt="...">
                                <div class="card-header">Header</div>
                                <div class="card-body text-warning">
                                <h5 class="card-title">Warning card title</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>  
                <div class="d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                        </ul>
                    </nav>
                </div>
                

         
          </div>
    </body>
</html>
