%class GncGaussNewtonOptimizer, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GncGaussNewtonOptimizer(NonlinearFactorGraph graph, Values initialValues, GncParams<GaussNewtonParams> params)
%
%-------Methods-------
%getInlierCostThresholds() : returns Vector
%getWeights() : returns Vector
%optimize() : returns gtsam::Values
%setInlierCostThresholds(double inth) : returns void
%setInlierCostThresholdsAtProbability(double alpha) : returns void
%setWeights(Vector w) : returns void
%
classdef GncGaussNewtonOptimizer < handle
  properties
    ptr_gtsamGncGaussNewtonOptimizer = 0
  end
  methods
    function obj = GncGaussNewtonOptimizer(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3229, varargin{2});
        end
        gtsam_wrapper(3228, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.GncParamsGaussNewtonParams')
        my_ptr = gtsam_wrapper(3230, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.GncGaussNewtonOptimizer constructor');
      end
      obj.ptr_gtsamGncGaussNewtonOptimizer = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3231, obj.ptr_gtsamGncGaussNewtonOptimizer);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getInlierCostThresholds(this, varargin)
      % GETINLIERCOSTTHRESHOLDS usage: getInlierCostThresholds() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3232, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonOptimizer.getInlierCostThresholds');
    end

    function varargout = getWeights(this, varargin)
      % GETWEIGHTS usage: getWeights() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3233, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonOptimizer.getWeights');
    end

    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3234, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonOptimizer.optimize');
    end

    function varargout = setInlierCostThresholds(this, varargin)
      % SETINLIERCOSTTHRESHOLDS usage: setInlierCostThresholds(double inth) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3235, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonOptimizer.setInlierCostThresholds');
    end

    function varargout = setInlierCostThresholdsAtProbability(this, varargin)
      % SETINLIERCOSTTHRESHOLDSATPROBABILITY usage: setInlierCostThresholdsAtProbability(double alpha) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3236, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonOptimizer.setInlierCostThresholdsAtProbability');
    end

    function varargout = setWeights(this, varargin)
      % SETWEIGHTS usage: setWeights(Vector w) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        gtsam_wrapper(3237, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonOptimizer.setWeights');
    end

  end

  methods(Static = true)
  end
end
