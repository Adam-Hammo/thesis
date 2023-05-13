%class DiscreteKey, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
classdef DiscreteKey < handle
  properties
    ptr_gtsamDiscreteKey = 0
  end
  methods
    function obj = DiscreteKey(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(563, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.DiscreteKey constructor');
      end
      obj.ptr_gtsamDiscreteKey = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(564, obj.ptr_gtsamDiscreteKey);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
