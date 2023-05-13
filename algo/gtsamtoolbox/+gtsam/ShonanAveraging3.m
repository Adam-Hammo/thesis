%class ShonanAveraging3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ShonanAveraging3(vector<BinaryMeasurement<Rot3>> measurements, ShonanAveragingParameters3 parameters)
%ShonanAveraging3(string g2oFile)
%ShonanAveraging3(string g2oFile, ShonanAveragingParameters3 parameters)
%ShonanAveraging3(BetweenFactorPose3s factors)
%ShonanAveraging3(BetweenFactorPose3s factors, ShonanAveragingParameters3 parameters)
%
%-------Methods-------
%buildGraphAt(size_t p) : returns gtsam::NonlinearFactorGraph
%checkOptimality(Values values) : returns bool
%computeA_(Values values) : returns Matrix
%computeLambda_(Values values) : returns Matrix
%computeMinEigenValue(Values values) : returns double
%computeMinEigenVector(Values values) : returns pair< double, Vector >
%cost(Values values) : returns double
%costAt(size_t p, Values values) : returns double
%createOptimizerAt(size_t p, Values initial) : returns gtsam::LevenbergMarquardtOptimizer
%denseD() : returns Matrix
%denseL() : returns Matrix
%denseQ() : returns Matrix
%initializeRandomly() : returns gtsam::Values
%initializeRandomlyAt(size_t p) : returns gtsam::Values
%initializeWithDescent(size_t p, Values values, Vector minEigenVector, double minEigenValue) : returns gtsam::Values
%keys(size_t i) : returns gtsam::KeyVector
%measured(size_t i) : returns gtsam::Rot3
%nrUnknowns() : returns size_t
%numberMeasurements() : returns size_t
%projectFrom(size_t p, Values values) : returns gtsam::Values
%roundSolution(Values values) : returns gtsam::Values
%run(Values initial, size_t min_p, size_t max_p) : returns pair< gtsam::Values, double >
%tryOptimizingAt(size_t p, Values initial) : returns gtsam::Values
%
classdef ShonanAveraging3 < handle
  properties
    ptr_gtsamShonanAveraging3 = 0
  end
  methods
    function obj = ShonanAveraging3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(4034, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'std.vectorBinaryMeasurementRot3') && isa(varargin{2},'gtsam.ShonanAveragingParameters3')
        my_ptr = gtsam_wrapper(4035, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'std.vectorBinaryMeasurementRot3')
        my_ptr = gtsam_wrapper(4036, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'char')
        my_ptr = gtsam_wrapper(4037, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.ShonanAveragingParameters3')
        my_ptr = gtsam_wrapper(4038, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'gtsam.BetweenFactorPose3s')
        my_ptr = gtsam_wrapper(4039, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.BetweenFactorPose3s') && isa(varargin{2},'gtsam.ShonanAveragingParameters3')
        my_ptr = gtsam_wrapper(4040, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.ShonanAveraging3 constructor');
      end
      obj.ptr_gtsamShonanAveraging3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(4041, obj.ptr_gtsamShonanAveraging3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = buildGraphAt(this, varargin)
      % BUILDGRAPHAT usage: buildGraphAt(size_t p) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(4042, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.buildGraphAt');
    end

    function varargout = checkOptimality(this, varargin)
      % CHECKOPTIMALITY usage: checkOptimality(Values values) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4043, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.checkOptimality');
    end

    function varargout = computeA_(this, varargin)
      % COMPUTEA_ usage: computeA_(Values values) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4044, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.computeA_');
    end

    function varargout = computeLambda_(this, varargin)
      % COMPUTELAMBDA_ usage: computeLambda_(Values values) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4045, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.computeLambda_');
    end

    function varargout = computeMinEigenValue(this, varargin)
      % COMPUTEMINEIGENVALUE usage: computeMinEigenValue(Values values) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4046, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.computeMinEigenValue');
    end

    function varargout = computeMinEigenVector(this, varargin)
      % COMPUTEMINEIGENVECTOR usage: computeMinEigenVector(Values values) : returns pair< double, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(4047, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.computeMinEigenVector');
    end

    function varargout = cost(this, varargin)
      % COST usage: cost(Values values) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4048, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.cost');
    end

    function varargout = costAt(this, varargin)
      % COSTAT usage: costAt(size_t p, Values values) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4049, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.costAt');
    end

    function varargout = createOptimizerAt(this, varargin)
      % CREATEOPTIMIZERAT usage: createOptimizerAt(size_t p, Values initial) : returns gtsam.LevenbergMarquardtOptimizer
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4050, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.createOptimizerAt');
    end

    function varargout = denseD(this, varargin)
      % DENSED usage: denseD() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4051, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.denseD');
    end

    function varargout = denseL(this, varargin)
      % DENSEL usage: denseL() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4052, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.denseL');
    end

    function varargout = denseQ(this, varargin)
      % DENSEQ usage: denseQ() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4053, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.denseQ');
    end

    function varargout = initializeRandomly(this, varargin)
      % INITIALIZERANDOMLY usage: initializeRandomly() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4054, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.initializeRandomly');
    end

    function varargout = initializeRandomlyAt(this, varargin)
      % INITIALIZERANDOMLYAT usage: initializeRandomlyAt(size_t p) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(4055, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.initializeRandomlyAt');
    end

    function varargout = initializeWithDescent(this, varargin)
      % INITIALIZEWITHDESCENT usage: initializeWithDescent(size_t p, Values values, Vector minEigenVector, double minEigenValue) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'double')
        varargout{1} = gtsam_wrapper(4056, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.initializeWithDescent');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys(size_t i) : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(4057, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.keys');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured(size_t i) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(4058, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.measured');
    end

    function varargout = nrUnknowns(this, varargin)
      % NRUNKNOWNS usage: nrUnknowns() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4059, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.nrUnknowns');
    end

    function varargout = numberMeasurements(this, varargin)
      % NUMBERMEASUREMENTS usage: numberMeasurements() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4060, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.numberMeasurements');
    end

    function varargout = projectFrom(this, varargin)
      % PROJECTFROM usage: projectFrom(size_t p, Values values) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4061, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.projectFrom');
    end

    function varargout = roundSolution(this, varargin)
      % ROUNDSOLUTION usage: roundSolution(Values values) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4062, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.roundSolution');
    end

    function varargout = run(this, varargin)
      % RUN usage: run(Values initial, size_t min_p, size_t max_p) : returns pair< gtsam.Values, double >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(4063, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.run');
    end

    function varargout = tryOptimizingAt(this, varargin)
      % TRYOPTIMIZINGAT usage: tryOptimizingAt(size_t p, Values initial) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4064, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging3.tryOptimizingAt');
    end

  end

  methods(Static = true)
  end
end
