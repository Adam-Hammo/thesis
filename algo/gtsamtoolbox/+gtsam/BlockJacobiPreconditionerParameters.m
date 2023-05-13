%class BlockJacobiPreconditionerParameters, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BlockJacobiPreconditionerParameters()
%
classdef BlockJacobiPreconditionerParameters < gtsam.PreconditionerParameters
  properties
    ptr_gtsamBlockJacobiPreconditionerParameters = 0
  end
  methods
    function obj = BlockJacobiPreconditionerParameters(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2242, varargin{2});
        end
        base_ptr = gtsam_wrapper(2241, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(2243);
      else
        error('Arguments do not match any overload of gtsam.BlockJacobiPreconditionerParameters constructor');
      end
      obj = obj@gtsam.PreconditionerParameters(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamBlockJacobiPreconditionerParameters = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2244, obj.ptr_gtsamBlockJacobiPreconditionerParameters);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
