class PostsController < ApplicationController
    
   http_basic_authenticate_with name: "afsal", password: "1234", except: [:finalshow,:new, :show]


    def index
        @posts = Post.all
      
    end

    def show
     @post = Post.find(params[:id])

    end

    def new
         
    end

    def view
        @post = Post.find(params[:id])


    end

    def finalshow
        @posts = Post.all
        
    end



    def create
        @post = Post.new(post_params)

        @post.save
        redirect_to @post
    end

    private def post_params
        params.require(:post).permit(:title, :date, :name, :nmail, :status, :image, :body)

    end
   
    def edit
       @post = Post.find(params[:id])

    end


   def destroy
       @post = Post.find(params[:id])
       @post.destroy

       
      
       redirect_to @post;
   end



   def search
     @query = params[:query]
     @posts = Post.where("posts.title LIKE ?",["%#{@query}%"])
     render "index"

   end

   def searchf
     
    @query = params[:query]
    @posts = Post.where("posts.title LIKE ?",["%#{@query}%"])
    render "finalshow"

   end


def send_mail

    WelcomeMailer.send_welcome_mail.deliver_now

end




end
