require 'ncurses'
require 'logger'
require 'rbcurse'
require 'rbcurse/rwidget'

VER::start_ncurses
@window = VER::Window.root_window
@window.printstring 0, 30, "Demo of Ruby Curses Widgets - rbcurse", $normalcolor, 'reverse'
  while((ch = @window.getchar()) != KEY_F1 )
      @form = Form.new @window
       @form.handle_key(ch)
       @form.bind(:ENTER) { |f|   f.label && f.label.bgcolor = 'red' if f.respond_to? :label}
@form.bind(:LEAVE) { |f|  f.label && f.label.bgcolor = 'black'   if f.respond_to? :label}
  colorlabel = Label.new @form, {'text' => "Select a color:", "row" => 2, "col" => 10, "color"=>"cyan", "mnemonic" => 'S'}
  field = Field.new @form do
      name   "Name"
      row  5
      col  12
      display_length  30
      set_label Label.new @form, {'text' => "Name", 'color'=>'cyan','mnemonic'=> 'N'}
  end
end
  
