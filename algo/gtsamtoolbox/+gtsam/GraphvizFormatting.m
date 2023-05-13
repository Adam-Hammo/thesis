%class GraphvizFormatting, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GraphvizFormatting()
%
classdef GraphvizFormatting < gtsam.DotWriter
  properties
    ptr_gtsamGraphvizFormatting = 0
  end
  methods
    function obj = GraphvizFormatting(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        base_ptr = gtsam_wrapper(2274, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(2275);
      else
        error('Arguments do not match any overload of gtsam.GraphvizFormatting constructor');
      end
      obj = obj@gtsam.DotWriter(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGraphvizFormatting = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2276, obj.ptr_gtsamGraphvizFormatting);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
