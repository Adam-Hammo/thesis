%class NonlinearFactorGraph, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearFactorGraph()
%NonlinearFactorGraph(NonlinearFactorGraph graph)
%
%-------Methods-------
%add(NonlinearFactor factor) : returns void
%addPriorCal3Fisheye(size_t key, Cal3Fisheye prior, Base noiseModel) : returns void
%addPriorCal3Unified(size_t key, Cal3Unified prior, Base noiseModel) : returns void
%addPriorCal3_S2(size_t key, Cal3_S2 prior, Base noiseModel) : returns void
%addPriorCalibratedCamera(size_t key, CalibratedCamera prior, Base noiseModel) : returns void
%addPriorConstantBias(size_t key, ConstantBias prior, Base noiseModel) : returns void
%addPriorDouble(size_t key, double prior, Base noiseModel) : returns void
%addPriorPinholeCameraCal3Bundler(size_t key, PinholeCamera<Cal3Bundler> prior, Base noiseModel) : returns void
%addPriorPinholeCameraCal3Fisheye(size_t key, PinholeCamera<Cal3Fisheye> prior, Base noiseModel) : returns void
%addPriorPinholeCameraCal3Unified(size_t key, PinholeCamera<Cal3Unified> prior, Base noiseModel) : returns void
%addPriorPinholeCameraCal3_S2(size_t key, PinholeCamera<Cal3_S2> prior, Base noiseModel) : returns void
%addPriorPoint2(size_t key, Point2 prior, Base noiseModel) : returns void
%addPriorPoint3(size_t key, Point3 prior, Base noiseModel) : returns void
%addPriorPose2(size_t key, Pose2 prior, Base noiseModel) : returns void
%addPriorPose3(size_t key, Pose3 prior, Base noiseModel) : returns void
%addPriorRot2(size_t key, Rot2 prior, Base noiseModel) : returns void
%addPriorRot3(size_t key, Rot3 prior, Base noiseModel) : returns void
%addPriorSO3(size_t key, SO3 prior, Base noiseModel) : returns void
%addPriorSO4(size_t key, SO4 prior, Base noiseModel) : returns void
%addPriorStereoPoint2(size_t key, StereoPoint2 prior, Base noiseModel) : returns void
%addPriorVector(size_t key, Vector prior, Base noiseModel) : returns void
%at(size_t idx) : returns gtsam::NonlinearFactor
%clone() : returns gtsam::NonlinearFactorGraph
%dot(Values values, KeyFormatter keyFormatter, GraphvizFormatting writer) : returns string
%empty() : returns bool
%equals(NonlinearFactorGraph fg, double tol) : returns bool
%error(Values values) : returns double
%exists(size_t idx) : returns bool
%keyVector() : returns gtsam::KeyVector
%keys() : returns gtsam::KeySet
%linearize(Values values) : returns gtsam::GaussianFactorGraph
%nrFactors() : returns size_t
%orderingCOLAMD() : returns gtsam::Ordering
%print(string s, KeyFormatter keyFormatter) : returns void
%printErrors(Values values) : returns void
%probPrime(Values values) : returns double
%push_back(NonlinearFactorGraph factors) : returns void
%push_back(NonlinearFactor factor) : returns void
%remove(size_t i) : returns void
%replace(size_t i, NonlinearFactor factors) : returns void
%resize(size_t size) : returns void
%saveGraph(string s, Values values, KeyFormatter keyFormatter, GraphvizFormatting writer) : returns void
%size() : returns size_t
%
classdef NonlinearFactorGraph < handle
  properties
    ptr_gtsamNonlinearFactorGraph = 0
  end
  methods
    function obj = NonlinearFactorGraph(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2277, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2278);
      elseif nargin == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        my_ptr = gtsam_wrapper(2279, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.NonlinearFactorGraph constructor');
      end
      obj.ptr_gtsamNonlinearFactorGraph = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2280, obj.ptr_gtsamNonlinearFactorGraph);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = add(this, varargin)
      % ADD usage: add(NonlinearFactor factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactor')
        gtsam_wrapper(2281, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.add');
    end

    function varargout = addPriorCal3Fisheye(this, varargin)
      % ADDPRIORCAL3FISHEYE usage: addPriorCal3Fisheye(size_t key, Cal3Fisheye prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Fisheye') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2282, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorCal3Fisheye');
    end

    function varargout = addPriorCal3Unified(this, varargin)
      % ADDPRIORCAL3UNIFIED usage: addPriorCal3Unified(size_t key, Cal3Unified prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Unified') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2283, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorCal3Unified');
    end

    function varargout = addPriorCal3_S2(this, varargin)
      % ADDPRIORCAL3_S2 usage: addPriorCal3_S2(size_t key, Cal3_S2 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3_S2') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2284, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorCal3_S2');
    end

    function varargout = addPriorCalibratedCamera(this, varargin)
      % ADDPRIORCALIBRATEDCAMERA usage: addPriorCalibratedCamera(size_t key, CalibratedCamera prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.CalibratedCamera') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2285, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorCalibratedCamera');
    end

    function varargout = addPriorConstantBias(this, varargin)
      % ADDPRIORCONSTANTBIAS usage: addPriorConstantBias(size_t key, ConstantBias prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.imuBias.ConstantBias') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2286, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorConstantBias');
    end

    function varargout = addPriorDouble(this, varargin)
      % ADDPRIORDOUBLE usage: addPriorDouble(size_t key, double prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2287, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorDouble');
    end

    function varargout = addPriorPinholeCameraCal3Bundler(this, varargin)
      % ADDPRIORPINHOLECAMERACAL3BUNDLER usage: addPriorPinholeCameraCal3Bundler(size_t key, PinholeCamera<Cal3Bundler> prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Bundler') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2288, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorPinholeCameraCal3Bundler');
    end

    function varargout = addPriorPinholeCameraCal3Fisheye(this, varargin)
      % ADDPRIORPINHOLECAMERACAL3FISHEYE usage: addPriorPinholeCameraCal3Fisheye(size_t key, PinholeCamera<Cal3Fisheye> prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Fisheye') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2289, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorPinholeCameraCal3Fisheye');
    end

    function varargout = addPriorPinholeCameraCal3Unified(this, varargin)
      % ADDPRIORPINHOLECAMERACAL3UNIFIED usage: addPriorPinholeCameraCal3Unified(size_t key, PinholeCamera<Cal3Unified> prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Unified') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2290, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorPinholeCameraCal3Unified');
    end

    function varargout = addPriorPinholeCameraCal3_S2(this, varargin)
      % ADDPRIORPINHOLECAMERACAL3_S2 usage: addPriorPinholeCameraCal3_S2(size_t key, PinholeCamera<Cal3_S2> prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3_S2') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2291, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorPinholeCameraCal3_S2');
    end

    function varargout = addPriorPoint2(this, varargin)
      % ADDPRIORPOINT2 usage: addPriorPoint2(size_t key, Point2 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2292, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorPoint2');
    end

    function varargout = addPriorPoint3(this, varargin)
      % ADDPRIORPOINT3 usage: addPriorPoint3(size_t key, Point3 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2293, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorPoint3');
    end

    function varargout = addPriorPose2(this, varargin)
      % ADDPRIORPOSE2 usage: addPriorPose2(size_t key, Pose2 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose2') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2294, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorPose2');
    end

    function varargout = addPriorPose3(this, varargin)
      % ADDPRIORPOSE3 usage: addPriorPose3(size_t key, Pose3 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose3') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2295, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorPose3');
    end

    function varargout = addPriorRot2(this, varargin)
      % ADDPRIORROT2 usage: addPriorRot2(size_t key, Rot2 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2296, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorRot2');
    end

    function varargout = addPriorRot3(this, varargin)
      % ADDPRIORROT3 usage: addPriorRot3(size_t key, Rot3 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot3') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2297, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorRot3');
    end

    function varargout = addPriorSO3(this, varargin)
      % ADDPRIORSO3 usage: addPriorSO3(size_t key, SO3 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO3') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2298, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorSO3');
    end

    function varargout = addPriorSO4(this, varargin)
      % ADDPRIORSO4 usage: addPriorSO4(size_t key, SO4 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO4') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2299, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorSO4');
    end

    function varargout = addPriorStereoPoint2(this, varargin)
      % ADDPRIORSTEREOPOINT2 usage: addPriorStereoPoint2(size_t key, StereoPoint2 prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.StereoPoint2') && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2300, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorStereoPoint2');
    end

    function varargout = addPriorVector(this, varargin)
      % ADDPRIORVECTOR usage: addPriorVector(size_t key, Vector prior, Base noiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.noiseModel.Base')
        gtsam_wrapper(2301, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.addPriorVector');
    end

    function varargout = at(this, varargin)
      % AT usage: at(size_t idx) : returns gtsam.NonlinearFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2302, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.at');
    end

    function varargout = clone(this, varargin)
      % CLONE usage: clone() : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2303, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.clone');
    end

    function varargout = dot(this, varargin)
      % DOT usage: dot(Values values, KeyFormatter keyFormatter, GraphvizFormatting writer) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'gtsam.KeyFormatter') && isa(varargin{3},'gtsam.GraphvizFormatting')
        varargout{1} = gtsam_wrapper(2304, this, varargin{:});
        return
      end
      % DOT usage: dot(Values values, KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(2305, this, varargin{:});
        return
      end
      % DOT usage: dot(Values values) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(2306, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.dot');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2307, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.empty');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(NonlinearFactorGraph fg, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2308, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(Values values) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(2309, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.error');
    end

    function varargout = exists(this, varargin)
      % EXISTS usage: exists(size_t idx) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2310, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.exists');
    end

    function varargout = keyVector(this, varargin)
      % KEYVECTOR usage: keyVector() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2311, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.keyVector');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2312, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.keys');
    end

    function varargout = linearize(this, varargin)
      % LINEARIZE usage: linearize(Values values) : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(2313, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.linearize');
    end

    function varargout = nrFactors(this, varargin)
      % NRFACTORS usage: nrFactors() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2314, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.nrFactors');
    end

    function varargout = orderingCOLAMD(this, varargin)
      % ORDERINGCOLAMD usage: orderingCOLAMD() : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2315, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.orderingCOLAMD');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2316, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2317, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2318, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.print');
    end

    function varargout = printErrors(this, varargin)
      % PRINTERRORS usage: printErrors(Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        gtsam_wrapper(2319, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.printErrors');
    end

    function varargout = probPrime(this, varargin)
      % PROBPRIME usage: probPrime(Values values) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(2320, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.probPrime');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(NonlinearFactorGraph factors) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        gtsam_wrapper(2321, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(NonlinearFactor factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactor')
        gtsam_wrapper(2322, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.push_back');
    end

    function varargout = remove(this, varargin)
      % REMOVE usage: remove(size_t i) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(2323, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.remove');
    end

    function varargout = replace(this, varargin)
      % REPLACE usage: replace(size_t i, NonlinearFactor factors) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.NonlinearFactor')
        gtsam_wrapper(2324, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.replace');
    end

    function varargout = resize(this, varargin)
      % RESIZE usage: resize(size_t size) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(2325, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.resize');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s, Values values, KeyFormatter keyFormatter, GraphvizFormatting writer) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.KeyFormatter') && isa(varargin{4},'gtsam.GraphvizFormatting')
        gtsam_wrapper(2326, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, Values values, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.KeyFormatter')
        gtsam_wrapper(2327, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.Values')
        gtsam_wrapper(2328, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.saveGraph');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2329, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2330, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.size');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2331, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearFactorGraph.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.NonlinearFactorGraph.string_deserialize(sobj);
    end
  end
end
