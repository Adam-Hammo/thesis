%class NonlinearEquality2CalibratedCamera, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEquality2CalibratedCamera(Key key1, Key key2, double mu)
%
%-------Methods-------
%evaluateError(CalibratedCamera x1, CalibratedCamera x2) : returns Vector
%
classdef NonlinearEquality2CalibratedCamera < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEquality2CalibratedCamera = 0
  end
  methods
    function obj = NonlinearEquality2CalibratedCamera(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3163, varargin{2});
        end
        base_ptr = gtsam_wrapper(3162, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'gtsam.Key') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3164, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'gtsam.Key')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3165, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEquality2CalibratedCamera constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEquality2CalibratedCamera = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3166, obj.ptr_gtsamNonlinearEquality2CalibratedCamera);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(CalibratedCamera x1, CalibratedCamera x2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.CalibratedCamera') && isa(varargin{2},'gtsam.CalibratedCamera')
        varargout{1} = gtsam_wrapper(3167, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearEquality2CalibratedCamera.evaluateError');
    end

  end

  methods(Static = true)
  end
end
