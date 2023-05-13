%class GncGaussNewtonParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GncGaussNewtonParams(GaussNewtonParams baseOptimizerParams)
%GncGaussNewtonParams()
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
classdef GncGaussNewtonParams < handle
  properties
    ptr_gtsamGncGaussNewtonParams = 0
  end
  methods
    function obj = GncGaussNewtonParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3199, varargin{2});
        end
        gtsam_wrapper(3198, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussNewtonParams')
        my_ptr = gtsam_wrapper(3200, varargin{1});
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3201);
      else
        error('Arguments do not match any overload of gtsam.GncGaussNewtonParams constructor');
      end
      obj.ptr_gtsamGncGaussNewtonParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3202, obj.ptr_gtsamGncGaussNewtonParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = print(this, varargin)
      % PRINT usage: print(string str) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3203, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3204, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.print');
    end

    function varargout = setKnownInliers(this, varargin)
      % SETKNOWNINLIERS usage: setKnownInliers(KeyVector knownIn) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        gtsam_wrapper(3205, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.setKnownInliers');
    end

    function varargout = setKnownOutliers(this, varargin)
      % SETKNOWNOUTLIERS usage: setKnownOutliers(KeyVector knownOut) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        gtsam_wrapper(3206, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.setKnownOutliers');
    end

    function varargout = setLossType(this, varargin)
      % SETLOSSTYPE usage: setLossType(GncLossType type) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GncLossType')
        gtsam_wrapper(3207, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.setLossType');
    end

    function varargout = setMaxIterations(this, varargin)
      % SETMAXITERATIONS usage: setMaxIterations(size_t maxIter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(3208, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.setMaxIterations');
    end

    function varargout = setMuStep(this, varargin)
      % SETMUSTEP usage: setMuStep(double step) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3209, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.setMuStep');
    end

    function varargout = setRelativeCostTol(this, varargin)
      % SETRELATIVECOSTTOL usage: setRelativeCostTol(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3210, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.setRelativeCostTol');
    end

    function varargout = setVerbosityGNC(this, varargin)
      % SETVERBOSITYGNC usage: setVerbosityGNC(Verbosity value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GncParams<gtsam::GaussNewtonParams>.Verbosity')
        gtsam_wrapper(3211, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.setVerbosityGNC');
    end

    function varargout = setWeightsTol(this, varargin)
      % SETWEIGHTSTOL usage: setWeightsTol(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3212, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonParams.setWeightsTol');
    end

  end

  methods(Static = true)
  end
end
