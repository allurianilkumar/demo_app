class GadgetsController < ApplicationController

#layout "gadgets"

def index
  @search = Gadget.search(params[:q])
  @gadgets = @search.result
end

def new
   @gadget = Gadget.new
end

def create
 # render :text => params.inspect and return 
  @gadget = Gadget.new(title: params[:gadget][:title],
  name_method_or_gadget: params[:gadget][:name_method_or_gadget],
  useful_for: params[:gadget][:useful_for],
  analysis_group: params[:gadget][:analysis_group],
  type_of_method_or_gadget: params[:gadget][:type_of_method_or_gadget],
  gadget_description: params[:gadget][:gadget_description],
  cost: params[:gadget][:cost],
  currencys_id: params[:gadget][:currencys_id],
  companay_name: params[:gadget][:companay_name],
  company_description: params[:gadget][:company_description],
  companay_website: params[:gadget][:companay_website],
  technology_used: params[:gadget][:technology_used],
  scientific_descrition: params[:gadget][:scientific_descrition],
  qualfiy_area_interest: params[:gadget][:qualfiy_area_interest],
  explanation_by_evaluator: params[:gadget][:explanation_by_evaluator],
  name: params[:gadget][:name],
  comments_suggestion_of_evalutor: params[:gadget][:comments_suggestion_of_evalutor])

   analysys_array = params[:gadget][:analysis_group]
   # render :text => analysys_array.inspect and return
     if !analysys_array.nil?   
     # render :text => analysys_array.inspect and return
       analysys_array.each do |f| 
        @gadget.analysis_groups << AnalysisGroup.find_by_id(f.to_i)
       end
     end

  type_of_method_or_gadget_array = params[:gadget][:type_of_method_or_gadget]

    if !type_of_method_or_gadget_array.nil?   

      type_of_method_or_gadget_array.each do |t| 
        #render :text => f.select(:name).inspect and return
        @gadget.type_of_methods <<  TypeOfMethod.find(t.to_i)

      end

    end

  qualfiy_area_interest_array = params[:gadget][:qualfiy_area_interest]
    if !qualfiy_area_interest_array.nil?   
      qualfiy_area_interest_array.each do |p| 
        @gadget.qualify_area_of_interests <<  QualifyAreaOfInterest.find(p.to_i)
      end
    end
  
  if @gadget.save
    flash[:notice] =  'Gadget successfully created.' 
    redirect_to gadgets_path
  else
    flash[:error] =  'Problem creating Gadget.' 
    render 'new'
  end
end

def show
  @gadget = Gadget.find(params[:id])
end

def edit
  @gadget = Gadget.find(params[:id])
  if !@gadget.nil?
    render 'edit'
  else
    render 'index'
  end
end
def update
    @gadget = Gadget.find(params[:id])
    @gadget.title = params[:gadget][:title]
    @gadget.companay_name = params[:gadget][:companay_name]
    @gadget.name_method_or_gadget = params[:gadget][:name_method_or_gadget]
    @gadget.useful_for = params[:gadget][:useful_for]
    @gadget.gadget_description = params[:gadget][:gadget_description]
    @gadget.cost = params[:gadget][:cost]
    @gadget.company_description = params[:gadget][:company_description]
    @gadget.companay_website = params[:gadget][:companay_website]
    
    if @gadget.save
      redirect_to gadgets_path
    else
      render 'edit'
    end
end

def destroy
  @gadget = Gadget.find(params[:id]).destroy
  redirect_to  gadgets_path
end


end
