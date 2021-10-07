Category.incude(:products).where('name LIKE ?  ', "%#{params[:store]}%")
category.products.where('name LIKE ?  ', "%#{params[:search]}%")




Category.includes(:products).where('categories.name LIKE ?  ', "%#{params[:store]}%")




Product.includes(:categories).where('categories.name LIKE ?  ', "%#{params[:store]}%" )




Product.where('name LIKE ?  ', "%#{params[:search]}%").includes(:category).where('category.name LIKE ?  ', "%#{params[:store]}%" )
Category.includes(:products).where('categories.name LIKE ?  ', "%#{params[:store]}%")


Product.where('name LIKE ?  ', "%#{params[:search]}%").includes(:category).where('category.name LIKE ?  ', "%#{params[:store]}%")