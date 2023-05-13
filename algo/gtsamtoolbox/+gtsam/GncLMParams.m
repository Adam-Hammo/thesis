%class GncLMParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GncLMParams(LevenbergMarquardtParams baseOptimizerParams)
%GncLMParams()
%
%-------Methods-------
%print(string str) : returns void
%setKnownInliers(KeyVector knownIn) : returns void
%setKnownOutliers(KeyVector knownOut) : returns void
%setLossType(GncLossType type) : returns void
%setMaxIterations(size_t maxIter) : returns void
%setMuStep(double step) : returns void
%setRelativeCostTol(double value) : returns void
%setVerbosityGNC(Verbosity value) : returns void
%setWeightsTol(double value) : returns void
%
classdef GncLMParams < handle
  properties
    ptr_gtsamGncLMParams = 0
  end
  methods
    function obj = GncLMParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3214, varargin{2});
        end
        gtsam_wrapper(3213, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.LevenbergMarquardtParams')
        my_ptr = gtsam_wrapper(3215, varargin{1});
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3216);
      else
        error('Arguments do not match any overload of gtsam.GncLMParams constructor');
      end
      obj.ptr_gtsamGncLMParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3217, obj.ptr_gtsamGncLMParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = print(this, varargin)
      % PRINT usage: print(string str) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3218, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3219, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.print');
    end

    function varargout = setKnownInliers(this, varargin)
      % SETKNOWNINLIERS usage: setKnownInliers(KeyVector knownIn) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        gtsam_wrapper(3220, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.setKnownInliers');
    end

    function varargout = setKnownOutliers(this, varargin)
      % SETKNOWNOUTLIERS usage: setKnownOutliers(KeyVector knownOut) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        gtsam_wrapper(3221, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.setKnownOutliers');
    end

    function varargout = setLossType(this, varargin)
      % SETLOSSTYPE usage: setLossType(GncLossType type) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GncLossType')
        gtsam_wrapper(3222, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.setLossType');
    end

    function varargout = setMaxIterations(this, varargin)
      % SETMAXITERATIONS usage: setMaxIterations(size_t maxIter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(3223, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.setMaxIterations');
    end

    function varargout = setMuStep(this, varargin)
      % SETMUSTEP usage: setMuStep(double step) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3224, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.setMuStep');
    end

    function varargout = setRelativeCostTol(this, varargin)
      % SETRELATIVECOSTTOL usage: setRelativeCostTol(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3225, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.setRelativeCostTol');
    end

    function varargout = setVerbosityGNC(this, varargin)
      % SETVERBOSITYGNC usage: setVerbosityGNC(Verbosity value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GncParams<gtsam::LevenbergMarquardtParams>.Verbosity')
        gtsam_wrapper(3226, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.setVerbosityGNC');
    end

    function varargout = setWeightsTol(this, varargin)
      % SETWEIGHTSTOL usage: setWeightsTol(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3227, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMParams.setWeightsTol');
    end

  end

  methods(Static = true)
  end
end
