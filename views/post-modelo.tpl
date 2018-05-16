{{ define "view" }}

<style>
    .pt-plax-md-light {
    background: url(/public/bgcontato1.jpg);
    background-size: cover;
}


</style>

  <!-- ========== Page Title ========== -->

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



  <!-- ========== Single Blog Post ========== -->
  <div style="background-color:#F4FFF4">>
  <div id="blog" class="section container blog-classic">
    <div class="row">
      <div class="col-md-8 mb-sm-160">
        
          <!-- Blog Post -->
          <div class="col-md-12 blog-post-single wow fadeIn" data-wow-delay=".1s" data-wow-duration="2s">

            <!-- Image -->
            <img class="img-responsive post-img" src="http://placehold.it/750x400" alt="Blog Post 1">

            <!-- Meta data -->
            <div class="post-meta">
              <a href="#" class="post-date">
                <i class="fa fa-calendar-o"></i>
                <span>15 de maio de 2018</span>
              </a>
              <a href="#" class="post-comments">
                <i class="fa fa-comments-o"></i>
                <span>4</span>
              </a>
            </div><!-- / .meta -->

            <!-- Title -->
            <h2 class="post-title" style="color:#21519E">Post Modelo</h2>
            

            <div class="blog-post-content">
              <!-- Intro -->
              <blockquote>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore
              </blockquote>

              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.</p>
              <br>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam vero natus inventore accusamus, minima libero porro dignissimos assumenda, magnam animi rerum, voluptas! Consequatur quas expedita iure dicta, saepe
              </p>
                <!-- Left Quote -->
                <blockquote class="alt-blockquote col-md-6 left-blog-quote">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et 
                  <footer>
                    <cite>by Henry Hill</cite>
                  </footer>
                </blockquote>
              <p>
                aperiam neque debitis eum est optio. Quod labore unde repellat atque tempora consectetur, accusantium molestias asperiores at esse tenetur, veniam aliquam deserunt accusamus magni ipsum dolor nulla a dignissimos consequuntur ut quas? Unde a, quibusdam adipisci aliquam expedita deleniti modi veritatis debitis, blanditiis vitae perferendis numquam. Iste ipsam, sunt eligendi, officia corporis vitae non rem ut earum, qui amet error. Dolore iure dicta consequuntur facilis et autem non architecto magnam sunt, nostrum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat, qui accusamus. Magnam a laudantium et dolor officia molestias quibusdam quasi laborum, autem omnis eaque, incidunt error eos pariatur velit totam deleniti itaque, saepe praesentium excepturi! Fugit omnis nobis, aspernatur, recusandae porro, sint repellendus temporibus sequi labore animi accusamus consectetur adipisicing elit.
              </p>
              <br>
              <!-- List -->
              <ul class="flat-list">
                <li><i class="fa fa-check">Graphic Design</i></li>
                <li><i class="fa fa-check">Web Design</i></li>
                <li><i class="fa fa-check">iOS Development</i></li>
                <li><i class="fa fa-check">Search Engine Optimization</i></li>
              </ul>
              <br>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
              </p>
            </div>
            
          </div><!-- / .blog-post-single -->
          
          

          <!-- ========== Comments ========== -->

          
          
          <!-- Post Navigation -->
          

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