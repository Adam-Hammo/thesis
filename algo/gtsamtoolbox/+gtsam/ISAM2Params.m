%class ISAM2Params, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ISAM2Params()
%
%-------Methods-------
%getFactorization() : returns string
%print(string s) : returns void
%setFactorization(string factorization) : returns void
%setOptimizationParams(ISAM2GaussNewtonParams gauss_newton__params) : returns void
%setOptimizationParams(ISAM2DoglegParams dogleg_params) : returns void
%setRelinearizeThreshold(double threshold) : returns void
%setRelinearizeThreshold(ISAM2ThresholdMap threshold_map) : returns void
%
classdef ISAM2Params < handle
  properties
    ptr_gtsamISAM2Params = 0
  end
  methods
    function obj = ISAM2Params(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2710, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2711);
      else
        error('Arguments do not match any overload of gtsam.ISAM2Params constructor');
      end
      obj.ptr_gtsamISAM2Params = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2712, obj.ptr_gtsamISAM2Params);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getFactorization(this, varargin)
      % GETFACTORIZATION usage: getFactorization() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2713, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.getFactorization');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2714, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2715, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.print');
    end

    function varargout = setFactorization(this, varargin)
      % SETFACTORIZATION usage: setFactorization(string factorization) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2716, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setFactorization');
    end

    function varargout = setOptimizationParams(this, varargin)
      % SETOPTIMIZATIONPARAMS usage: setOptimizationParams(ISAM2GaussNewtonParams gauss_newton__params) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.ISAM2GaussNewtonParams')
        gtsam_wrapper(2717, this, varargin{:});
        return
      end
      % SETOPTIMIZATIONPARAMS usage: setOptimizationParams(ISAM2DoglegParams dogleg_params) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.ISAM2DoglegParams')
        gtsam_wrapper(2718, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setOptimizationParams');
    end

    function varargout = setRelinearizeThreshold(this, varargin)
      % SETRELINEARIZETHRESHOLD usage: setRelinearizeThreshold(double threshold) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(2719, this, varargin{:});
        return
      end
      % SETRELINEARIZETHRESHOLD usage: setRelinearizeThreshold(ISAM2ThresholdMap threshold_map) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.ISAM2ThresholdMap')
        gtsam_wrapper(2720, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setRelinearizeThreshold');
    end

  end

  methods(Static = true)
  end
end
