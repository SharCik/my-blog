module ApplicationHelper

	  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "SZ"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def see_mini_logo(page_title)
    if page_title != 'About me'
      link_to image_tag("logo_1.png" , alt: "Rails"), "#", id: "logo1" 
    end
  end 

  def pages_footer1(page_title)
    if page_title == 'About me'
      link_to "What I do",   what_path
    elsif page_title == 'What I do'
   		link_to "About me",   root_path
    else
    	link_to "About me",   root_path
    end
  end 

  def pages_footer2(page_title)
    if page_title == 'About me'
      link_to "Contact",   contact_path
    elsif page_title == 'What I do'
      link_to "Contact",   contact_path
    else
      link_to "What I do",   what_path
    end
  end

end
