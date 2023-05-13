%class ISAM2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ISAM2()
%ISAM2(ISAM2Params params)
%ISAM2(ISAM2 other)
%
%-------Methods-------
%calculateBestEstimate() : returns gtsam::Values
%calculateEstimate() : returns gtsam::Values
%calculateEstimateCal3Bundler(size_t key) : returns gtsam::Cal3Bundler
%calculateEstimateCal3DS2(size_t key) : returns gtsam::Cal3DS2
%calculateEstimateCal3_S2(size_t key) : returns gtsam::Cal3_S2
%calculateEstimateEssentialMatrix(size_t key) : returns gtsam::EssentialMatrix
%calculateEstimateMatrix(size_t key) : returns Matrix
%calculateEstimatePinholeCameraCal3Bundler(size_t key) : returns gtsam::PinholeCamera<gtsam::Cal3Bundler>
%calculateEstimatePinholeCameraCal3Fisheye(size_t key) : returns gtsam::PinholeCamera<gtsam::Cal3Fisheye>
%calculateEstimatePinholeCameraCal3Unified(size_t key) : returns gtsam::PinholeCamera<gtsam::Cal3Unified>
%calculateEstimatePinholeCameraCal3_S2(size_t key) : returns gtsam::PinholeCamera<gtsam::Cal3_S2>
%calculateEstimatePoint2(size_t key) : returns Point2
%calculateEstimatePoint3(size_t key) : returns Point3
%calculateEstimatePose2(size_t key) : returns gtsam::Pose2
%calculateEstimatePose3(size_t key) : returns gtsam::Pose3
%calculateEstimateRot2(size_t key) : returns gtsam::Rot2
%calculateEstimateRot3(size_t key) : returns gtsam::Rot3
%calculateEstimateVector(size_t key) : returns Vector
%dot(KeyFormatter keyFormatter) : returns string
%equals(ISAM2 other, double tol) : returns bool
%error(VectorValues x) : returns double
%getDelta() : returns gtsam::VectorValues
%getFactorsUnsafe() : returns gtsam::NonlinearFactorGraph
%getFixedVariables() : returns gtsam::KeySet
%getLinearizationPoint() : returns gtsam::Values
%getVariableIndex() : returns gtsam::VariableIndex
%gradientAtZero() : returns gtsam::VectorValues
%marginalCovariance(size_t key) : returns Matrix
%params() : returns gtsam::ISAM2Params
%print(string s, KeyFormatter keyFormatter) : returns void
%printStats() : returns void
%printStats() : returns void
%saveGraph(string s) : returns void
%saveGraph(string s, KeyFormatter keyFormatter) : returns void
%update() : returns gtsam::ISAM2Result
%update(NonlinearFactorGraph newFactors, Values newTheta) : returns gtsam::ISAM2Result
%update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices) : returns gtsam::ISAM2Result
%update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices, KeyGroupMap constrainedKeys) : returns gtsam::ISAM2Result
%update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices, KeyGroupMap constrainedKeys, KeyList noRelinKeys) : returns gtsam::ISAM2Result
%update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices, KeyGroupMap constrainedKeys, KeyList noRelinKeys, KeyList extraReelimKeys) : returns gtsam::ISAM2Result
%update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices, KeyGroupMap constrainedKeys, KeyList noRelinKeys, KeyList extraReelimKeys, bool force_relinearize) : returns gtsam::ISAM2Result
%update(NonlinearFactorGraph newFactors, Values newTheta, ISAM2UpdateParams updateParams) : returns gtsam::ISAM2Result
%valueExists(Key key) : returns bool
%
classdef ISAM2 < handle
  properties
    ptr_gtsamISAM2 = 0
  end
  methods
    function obj = ISAM2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2739, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2740);
      elseif nargin == 1 && isa(varargin{1},'gtsam.ISAM2Params')
        my_ptr = gtsam_wrapper(2741, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'gtsam.ISAM2')
        my_ptr = gtsam_wrapper(2742, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.ISAM2 constructor');
      end
      obj.ptr_gtsamISAM2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2743, obj.ptr_gtsamISAM2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = calculateBestEstimate(this, varargin)
      % CALCULATEBESTESTIMATE usage: calculateBestEstimate() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2744, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateBestEstimate');
    end

    function varargout = calculateEstimate(this, varargin)
      % CALCULATEESTIMATE usage: calculateEstimate() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2745, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimate');
    end

    function varargout = calculateEstimateCal3Bundler(this, varargin)
      % CALCULATEESTIMATECAL3BUNDLER usage: calculateEstimateCal3Bundler(size_t key) : returns gtsam.Cal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2746, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimateCal3Bundler');
    end

    function varargout = calculateEstimateCal3DS2(this, varargin)
      % CALCULATEESTIMATECAL3DS2 usage: calculateEstimateCal3DS2(size_t key) : returns gtsam.Cal3DS2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2747, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimateCal3DS2');
    end

    function varargout = calculateEstimateCal3_S2(this, varargin)
      % CALCULATEESTIMATECAL3_S2 usage: calculateEstimateCal3_S2(size_t key) : returns gtsam.Cal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2748, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimateCal3_S2');
    end

    function varargout = calculateEstimateEssentialMatrix(this, varargin)
      % CALCULATEESTIMATEESSENTIALMATRIX usage: calculateEstimateEssentialMatrix(size_t key) : returns gtsam.EssentialMatrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2749, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimateEssentialMatrix');
    end

    function varargout = calculateEstimateMatrix(this, varargin)
      % CALCULATEESTIMATEMATRIX usage: calculateEstimateMatrix(size_t key) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2750, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimateMatrix');
    end

    function varargout = calculateEstimatePinholeCameraCal3Bundler(this, varargin)
      % CALCULATEESTIMATEPINHOLECAMERACAL3BUNDLER usage: calculateEstimatePinholeCameraCal3Bundler(size_t key) : returns gtsam.PinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2751, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimatePinholeCameraCal3Bundler');
    end

    function varargout = calculateEstimatePinholeCameraCal3Fisheye(this, varargin)
      % CALCULATEESTIMATEPINHOLECAMERACAL3FISHEYE usage: calculateEstimatePinholeCameraCal3Fisheye(size_t key) : returns gtsam.PinholeCameraCal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2752, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimatePinholeCameraCal3Fisheye');
    end

    function varargout = calculateEstimatePinholeCameraCal3Unified(this, varargin)
      % CALCULATEESTIMATEPINHOLECAMERACAL3UNIFIED usage: calculateEstimatePinholeCameraCal3Unified(size_t key) : returns gtsam.PinholeCameraCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2753, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimatePinholeCameraCal3Unified');
    end

    function varargout = calculateEstimatePinholeCameraCal3_S2(this, varargin)
      % CALCULATEESTIMATEPINHOLECAMERACAL3_S2 usage: calculateEstimatePinholeCameraCal3_S2(size_t key) : returns gtsam.PinholeCameraCal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2754, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimatePinholeCameraCal3_S2');
    end

    function varargout = calculateEstimatePoint2(this, varargin)
      % CALCULATEESTIMATEPOINT2 usage: calculateEstimatePoint2(size_t key) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2755, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimatePoint2');
    end

    function varargout = calculateEstimatePoint3(this, varargin)
      % CALCULATEESTIMATEPOINT3 usage: calculateEstimatePoint3(size_t key) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2756, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimatePoint3');
    end

    function varargout = calculateEstimatePose2(this, varargin)
      % CALCULATEESTIMATEPOSE2 usage: calculateEstimatePose2(size_t key) : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2757, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimatePose2');
    end

    function varargout = calculateEstimatePose3(this, varargin)
      % CALCULATEESTIMATEPOSE3 usage: calculateEstimatePose3(size_t key) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2758, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimatePose3');
    end

    function varargout = calculateEstimateRot2(this, varargin)
      % CALCULATEESTIMATEROT2 usage: calculateEstimateRot2(size_t key) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2759, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimateRot2');
    end

    function varargout = calculateEstimateRot3(this, varargin)
      % CALCULATEESTIMATEROT3 usage: calculateEstimateRot3(size_t key) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2760, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimateRot3');
    end

    function varargout = calculateEstimateVector(this, varargin)
      % CALCULATEESTIMATEVECTOR usage: calculateEstimateVector(size_t key) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2761, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.calculateEstimateVector');
    end

    function varargout = dot(this, varargin)
      % DOT usage: dot(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(2762, this, varargin{:});
        return
      end
      % DOT usage: dot() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2763, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.dot');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(ISAM2 other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.ISAM2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2764, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(VectorValues x) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2765, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.error');
    end

    function varargout = getDelta(this, varargin)
      % GETDELTA usage: getDelta() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2766, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.getDelta');
    end

    function varargout = getFactorsUnsafe(this, varargin)
      % GETFACTORSUNSAFE usage: getFactorsUnsafe() : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2767, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.getFactorsUnsafe');
    end

    function varargout = getFixedVariables(this, varargin)
      % GETFIXEDVARIABLES usage: getFixedVariables() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2768, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.getFixedVariables');
    end

    function varargout = getLinearizationPoint(this, varargin)
      % GETLINEARIZATIONPOINT usage: getLinearizationPoint() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2769, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.getLinearizationPoint');
    end

    function varargout = getVariableIndex(this, varargin)
      % GETVARIABLEINDEX usage: getVariableIndex() : returns gtsam.VariableIndex
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2770, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.getVariableIndex');
    end

    function varargout = gradientAtZero(this, varargin)
      % GRADIENTATZERO usage: gradientAtZero() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2771, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.gradientAtZero');
    end

    function varargout = marginalCovariance(this, varargin)
      % MARGINALCOVARIANCE usage: marginalCovariance(size_t key) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2772, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.marginalCovariance');
    end

    function varargout = params(this, varargin)
      % PARAMS usage: params() : returns gtsam.ISAM2Params
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2773, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.params');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2774, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2775, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2776, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.print');
    end

    function varargout = printStats(this, varargin)
      % PRINTSTATS usage: printStats() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2777, this, varargin{:});
        return
      end
      % PRINTSTATS usage: printStats() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2778, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.printStats');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2779, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2780, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2781, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.saveGraph');
    end

    function varargout = update(this, varargin)
      % UPDATE usage: update() : returns gtsam.ISAM2Result
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2782, this, varargin{:});
        return
      end
      % UPDATE usage: update(NonlinearFactorGraph newFactors, Values newTheta) : returns gtsam.ISAM2Result
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(2783, this, varargin{:});
        return
      end
      % UPDATE usage: update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices) : returns gtsam.ISAM2Result
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.FactorIndices')
        varargout{1} = gtsam_wrapper(2784, this, varargin{:});
        return
      end
      % UPDATE usage: update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices, KeyGroupMap constrainedKeys) : returns gtsam.ISAM2Result
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.FactorIndices') && isa(varargin{4},'gtsam.KeyGroupMap')
        varargout{1} = gtsam_wrapper(2785, this, varargin{:});
        return
      end
      % UPDATE usage: update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices, KeyGroupMap constrainedKeys, KeyList noRelinKeys) : returns gtsam.ISAM2Result
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 5 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.FactorIndices') && isa(varargin{4},'gtsam.KeyGroupMap') && isa(varargin{5},'gtsam.KeyList')
        varargout{1} = gtsam_wrapper(2786, this, varargin{:});
        return
      end
      % UPDATE usage: update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices, KeyGroupMap constrainedKeys, KeyList noRelinKeys, KeyList extraReelimKeys) : returns gtsam.ISAM2Result
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 6 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.FactorIndices') && isa(varargin{4},'gtsam.KeyGroupMap') && isa(varargin{5},'gtsam.KeyList') && isa(varargin{6},'gtsam.KeyList')
        varargout{1} = gtsam_wrapper(2787, this, varargin{:});
        return
      end
      % UPDATE usage: update(NonlinearFactorGraph newFactors, Values newTheta, FactorIndices removeFactorIndices, KeyGroupMap constrainedKeys, KeyList noRelinKeys, KeyList extraReelimKeys, bool force_relinearize) : returns gtsam.ISAM2Result
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 7 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.FactorIndices') && isa(varargin{4},'gtsam.KeyGroupMap') && isa(varargin{5},'gtsam.KeyList') && isa(varargin{6},'gtsam.KeyList') && isa(varargin{7},'logical')
        varargout{1} = gtsam_wrapper(2788, this, varargin{:});
        return
      end
      % UPDATE usage: update(NonlinearFactorGraph newFactors, Values newTheta, ISAM2UpdateParams updateParams) : returns gtsam.ISAM2Result
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.ISAM2UpdateParams')
        varargout{1} = gtsam_wrapper(2789, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.update');
    end

    function varargout = valueExists(this, varargin)
      % VALUEEXISTS usage: valueExists(Key key) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Key')
        varargout{1} = gtsam_wrapper(2790, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2.valueExists');
    end

  end

  methods(Static = true)
  end
end
