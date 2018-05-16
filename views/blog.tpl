<!-- ========== Page Title ========== -->
{{ define "view" }}

<style>
    .pt-plax-md-light {
    background: url(/public/bgcontato1.jpg);
    background-size: cover;
}


</style>

<header class="page-title pt-light pt-plax-md-light" data-stellar-background-ratio="0.4">
    <div class="bg-overlay">
      <div class="container">
        <div class="row">

          <div class="col-sm-6">
            <h1>Blog</h1>
            <span class="subheading">Nossos últimos artigos</span>
          </div>
          

        </div>
      </div>
    </div>
   </header>



   <!-- ========== Blog - 1 Column ========== -->
   <div style="background-color:#F4FFF4">
   <div id="blog" class="section container blog-classic" >
     <div class="row">
       <div class="col-md-8">


         <!-- Blog Post 1 -->
         <div class="col-md-12">
           <div class="blog-post wow fadeIn" data-wow-delay=".1s" data-wow-duration="2s">

           <!-- Image -->
           <a href="/post-modelo" class="post-img"><img src="http://placehold.it/750x400" alt="Blog Post 1"></a>

           <div class="bp-content">
             
             <!-- Meta data -->
             <div class="post-meta">
               <a href="#" class="post-date">
                 <i class="fa fa-calendar-o"></i>
                 <span>15 de Maio de 2018</span>
               </a>
               <a href="#" class="post-comments">
                 <i class="fa fa-comments-o"></i>
                 <span>12</span>
               </a>
             </div><!-- / .meta -->

             <!-- Post Title -->
             <a href="/post-modelo" class="post-title"><h3 style="color:#21519E">Post Modelo</h3></a>

             <!-- Blurb -->
             <p style="color:#00AF00">Exemplo de um post modelo...</p>

             <!-- Link -->
             <a href="/post-modelo" class="btn btn-small" style="background-color:#21519E">Ler Mais</a>

           </div><!-- / .bp-content -->

           </div><!-- / .blog-post -->
         </div><!-- / .col-md-12 -->


        
                         
         
         <!-- Pagination -->
         <nav class="blog-pagination mb-sm-100">
           <ul class="pagination">
             <li>
               <a href="#" aria-label="Previous">
                 <span aria-hidden="true"><i class="fa fa-angle-double-left"></i></span>
               </a>
             </li>
             <li><a href="#">1</a></li>
             <li>
               <a href="#" aria-label="Next">
                 <span aria-hidden="true"><i class="fa fa-angle-double-right"></i></span>
               </a>
             </li>
           </ul>
         </nav>

       </div><!-- / .col-md-8 -->



       <!-- ========== Sidebar ========== -->

       <aside class="col-md-offset-1 col-md-3 sidebar">

         <!-- Search - Widget -->
         <div class="col-md-12 ws-s search-widget">
           <div class="form-group">
             <input type="search" placeholder="Pesquisar ..." class="form-control">
             <button class="inside-input-btn"><i class="fa fa-search"></i></button>
           </div>
         </div>


         <!-- Tags - Widget -->
         <div class="col-md-12 ws-s tags-widget">
           <h5 class="header-widget"style="color:#21519E"> Categorias</h5>
           <ul class="tag-list">
             <li><a href="#">Categoria 1</a></li>
             <li><a href="#">Categoria 2</a></li>
             <li><a href="#">Categoria 3</a></li>
           </ul>
         </div>
         

         <!-- Recent Posts - Widget -->
         

       </aside><!-- / .sidebar -->

     </div><!-- / .row -->
   </div><!-- / .container -->
</div>
   {{end}}