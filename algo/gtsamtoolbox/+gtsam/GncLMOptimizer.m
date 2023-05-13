%class GncLMOptimizer, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GncLMOptimizer(NonlinearFactorGraph graph, Values initialValues, GncParams<LevenbergMarquardtParams> params)
%
%-------Methods-------
%getInlierCostThresholds() : returns Vector
%getWeights() : returns Vector
%optimize() : returns gtsam::Values
%setInlierCostThresholds(double inth) : returns void
%setInlierCostThresholdsAtProbability(double alpha) : returns void
%setWeights(Vector w) : returns void
%
classdef GncLMOptimizer < handle
  properties
    ptr_gtsamGncLMOptimizer = 0
  end
  methods
    function obj = GncLMOptimizer(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3239, varargin{2});
        end
        gtsam_wrapper(3238, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.GncParamsLevenbergMarquardtParams')
        my_ptr = gtsam_wrapper(3240, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.GncLMOptimizer constructor');
      end
      obj.ptr_gtsamGncLMOptimizer = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3241, obj.ptr_gtsamGncLMOptimizer);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getInlierCostThresholds(this, varargin)
      % GETINLIERCOSTTHRESHOLDS usage: getInlierCostThresholds() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3242, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMOptimizer.getInlierCostThresholds');
    end

    function varargout = getWeights(this, varargin)
      % GETWEIGHTS usage: getWeights() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3243, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMOptimizer.getWeights');
    end

    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3244, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMOptimizer.optimize');
    end

    function varargout = setInlierCostThresholds(this, varargin)
      % SETINLIERCOSTTHRESHOLDS usage: setInlierCostThresholds(double inth) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3245, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMOptimizer.setInlierCostThresholds');
    end

    function varargout = setInlierCostThresholdsAtProbability(this, varargin)
      % SETINLIERCOSTTHRESHOLDSATPROBABILITY usage: setInlierCostThresholdsAtProbability(double alpha) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3246, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMOptimizer.setInlierCostThresholdsAtProbability');
    end

    function varargout = setWeights(this, varargin)
      % SETWEIGHTS usage: setWeights(Vector w) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        gtsam_wrapper(3247, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncLMOptimizer.setWeights');
    end

  end

  methods(Static = true)
  end
end
