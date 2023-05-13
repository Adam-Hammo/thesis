%class Values, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Values()
%Values(Values other)
%
%-------Methods-------
%atCal3Bundler(size_t j) : returns gtsam::Cal3Bundler
%atCal3DS2(size_t j) : returns gtsam::Cal3DS2
%atCal3Fisheye(size_t j) : returns gtsam::Cal3Fisheye
%atCal3Unified(size_t j) : returns gtsam::Cal3Unified
%atCal3_S2(size_t j) : returns gtsam::Cal3_S2
%atConstantBias(size_t j) : returns gtsam::imuBias::ConstantBias
%atDouble(size_t j) : returns double
%atEssentialMatrix(size_t j) : returns gtsam::EssentialMatrix
%atMatrix(size_t j) : returns Matrix
%atNavState(size_t j) : returns gtsam::NavState
%atParameterMatrix1(size_t j) : returns gtsam::ParameterMatrix<1>
%atParameterMatrix10(size_t j) : returns gtsam::ParameterMatrix<10>
%atParameterMatrix11(size_t j) : returns gtsam::ParameterMatrix<11>
%atParameterMatrix12(size_t j) : returns gtsam::ParameterMatrix<12>
%atParameterMatrix13(size_t j) : returns gtsam::ParameterMatrix<13>
%atParameterMatrix14(size_t j) : returns gtsam::ParameterMatrix<14>
%atParameterMatrix15(size_t j) : returns gtsam::ParameterMatrix<15>
%atParameterMatrix2(size_t j) : returns gtsam::ParameterMatrix<2>
%atParameterMatrix3(size_t j) : returns gtsam::ParameterMatrix<3>
%atParameterMatrix4(size_t j) : returns gtsam::ParameterMatrix<4>
%atParameterMatrix5(size_t j) : returns gtsam::ParameterMatrix<5>
%atParameterMatrix6(size_t j) : returns gtsam::ParameterMatrix<6>
%atParameterMatrix7(size_t j) : returns gtsam::ParameterMatrix<7>
%atParameterMatrix8(size_t j) : returns gtsam::ParameterMatrix<8>
%atParameterMatrix9(size_t j) : returns gtsam::ParameterMatrix<9>
%atPinholeCameraCal3Bundler(size_t j) : returns gtsam::PinholeCamera<gtsam::Cal3Bundler>
%atPinholeCameraCal3Fisheye(size_t j) : returns gtsam::PinholeCamera<gtsam::Cal3Fisheye>
%atPinholeCameraCal3Unified(size_t j) : returns gtsam::PinholeCamera<gtsam::Cal3Unified>
%atPinholeCameraCal3_S2(size_t j) : returns gtsam::PinholeCamera<gtsam::Cal3_S2>
%atPinholePoseCal3Bundler(size_t j) : returns gtsam::PinholePose<gtsam::Cal3Bundler>
%atPinholePoseCal3Fisheye(size_t j) : returns gtsam::PinholePose<gtsam::Cal3Fisheye>
%atPinholePoseCal3Unified(size_t j) : returns gtsam::PinholePose<gtsam::Cal3Unified>
%atPinholePoseCal3_S2(size_t j) : returns gtsam::PinholePose<gtsam::Cal3_S2>
%atPoint2(size_t j) : returns Point2
%atPoint3(size_t j) : returns Point3
%atPose2(size_t j) : returns gtsam::Pose2
%atPose3(size_t j) : returns gtsam::Pose3
%atRot2(size_t j) : returns gtsam::Rot2
%atRot3(size_t j) : returns gtsam::Rot3
%atSO3(size_t j) : returns gtsam::SO3
%atSO4(size_t j) : returns gtsam::SO4
%atSOn(size_t j) : returns gtsam::SOn
%atUnit3(size_t j) : returns gtsam::Unit3
%atVector(size_t j) : returns Vector
%clear() : returns void
%dim() : returns size_t
%empty() : returns bool
%equals(Values other, double tol) : returns bool
%erase(size_t j) : returns void
%exists(size_t j) : returns bool
%insert(Values values) : returns void
%insert(size_t j, Vector vector) : returns void
%insert(size_t j, Matrix matrix) : returns void
%insert(size_t j, Point2 point2) : returns void
%insert(size_t j, Point3 point3) : returns void
%insert(size_t j, Rot2 rot2) : returns void
%insert(size_t j, Pose2 pose2) : returns void
%insert(size_t j, SO3 R) : returns void
%insert(size_t j, SO4 Q) : returns void
%insert(size_t j, SOn P) : returns void
%insert(size_t j, Rot3 rot3) : returns void
%insert(size_t j, Pose3 pose3) : returns void
%insert(size_t j, Unit3 unit3) : returns void
%insert(size_t j, Cal3_S2 cal3_s2) : returns void
%insert(size_t j, Cal3DS2 cal3ds2) : returns void
%insert(size_t j, Cal3Bundler cal3bundler) : returns void
%insert(size_t j, Cal3Fisheye cal3fisheye) : returns void
%insert(size_t j, Cal3Unified cal3unified) : returns void
%insert(size_t j, EssentialMatrix essential_matrix) : returns void
%insert(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
%insert(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
%insert(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
%insert(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
%insert(size_t j, PinholePose<Cal3_S2> camera) : returns void
%insert(size_t j, PinholePose<Cal3Bundler> camera) : returns void
%insert(size_t j, PinholePose<Cal3Fisheye> camera) : returns void
%insert(size_t j, PinholePose<Cal3Unified> camera) : returns void
%insert(size_t j, ConstantBias constant_bias) : returns void
%insert(size_t j, NavState nav_state) : returns void
%insert(size_t j, double c) : returns void
%insert(size_t j, ParameterMatrix<1> X) : returns void
%insert(size_t j, ParameterMatrix<2> X) : returns void
%insert(size_t j, ParameterMatrix<3> X) : returns void
%insert(size_t j, ParameterMatrix<4> X) : returns void
%insert(size_t j, ParameterMatrix<5> X) : returns void
%insert(size_t j, ParameterMatrix<6> X) : returns void
%insert(size_t j, ParameterMatrix<7> X) : returns void
%insert(size_t j, ParameterMatrix<8> X) : returns void
%insert(size_t j, ParameterMatrix<9> X) : returns void
%insert(size_t j, ParameterMatrix<10> X) : returns void
%insert(size_t j, ParameterMatrix<11> X) : returns void
%insert(size_t j, ParameterMatrix<12> X) : returns void
%insert(size_t j, ParameterMatrix<13> X) : returns void
%insert(size_t j, ParameterMatrix<14> X) : returns void
%insert(size_t j, ParameterMatrix<15> X) : returns void
%insertPoint2(size_t j, Point2 val) : returns void
%insertPoint3(size_t j, Point3 val) : returns void
%insert_or_assign(Values values) : returns void
%insert_or_assign(size_t j, Point2 point2) : returns void
%insert_or_assign(size_t j, Point3 point3) : returns void
%insert_or_assign(size_t j, Rot2 rot2) : returns void
%insert_or_assign(size_t j, Pose2 pose2) : returns void
%insert_or_assign(size_t j, SO3 R) : returns void
%insert_or_assign(size_t j, SO4 Q) : returns void
%insert_or_assign(size_t j, SOn P) : returns void
%insert_or_assign(size_t j, Rot3 rot3) : returns void
%insert_or_assign(size_t j, Pose3 pose3) : returns void
%insert_or_assign(size_t j, Unit3 unit3) : returns void
%insert_or_assign(size_t j, Cal3_S2 cal3_s2) : returns void
%insert_or_assign(size_t j, Cal3DS2 cal3ds2) : returns void
%insert_or_assign(size_t j, Cal3Bundler cal3bundler) : returns void
%insert_or_assign(size_t j, Cal3Fisheye cal3fisheye) : returns void
%insert_or_assign(size_t j, Cal3Unified cal3unified) : returns void
%insert_or_assign(size_t j, EssentialMatrix essential_matrix) : returns void
%insert_or_assign(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
%insert_or_assign(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
%insert_or_assign(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
%insert_or_assign(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
%insert_or_assign(size_t j, PinholePose<Cal3_S2> camera) : returns void
%insert_or_assign(size_t j, PinholePose<Cal3Bundler> camera) : returns void
%insert_or_assign(size_t j, PinholePose<Cal3Fisheye> camera) : returns void
%insert_or_assign(size_t j, PinholePose<Cal3Unified> camera) : returns void
%insert_or_assign(size_t j, ConstantBias constant_bias) : returns void
%insert_or_assign(size_t j, NavState nav_state) : returns void
%insert_or_assign(size_t j, Vector vector) : returns void
%insert_or_assign(size_t j, Matrix matrix) : returns void
%insert_or_assign(size_t j, double c) : returns void
%insert_or_assign(size_t j, ParameterMatrix<1> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<2> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<3> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<4> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<5> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<6> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<7> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<8> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<9> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<10> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<11> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<12> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<13> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<14> X) : returns void
%insert_or_assign(size_t j, ParameterMatrix<15> X) : returns void
%keys() : returns gtsam::KeyVector
%localCoordinates(Values cp) : returns gtsam::VectorValues
%print(string s, KeyFormatter keyFormatter) : returns void
%retract(VectorValues delta) : returns gtsam::Values
%size() : returns size_t
%swap(Values values) : returns void
%update(Values values) : returns void
%update(size_t j, Point2 point2) : returns void
%update(size_t j, Point3 point3) : returns void
%update(size_t j, Rot2 rot2) : returns void
%update(size_t j, Pose2 pose2) : returns void
%update(size_t j, SO3 R) : returns void
%update(size_t j, SO4 Q) : returns void
%update(size_t j, SOn P) : returns void
%update(size_t j, Rot3 rot3) : returns void
%update(size_t j, Pose3 pose3) : returns void
%update(size_t j, Unit3 unit3) : returns void
%update(size_t j, Cal3_S2 cal3_s2) : returns void
%update(size_t j, Cal3DS2 cal3ds2) : returns void
%update(size_t j, Cal3Bundler cal3bundler) : returns void
%update(size_t j, Cal3Fisheye cal3fisheye) : returns void
%update(size_t j, Cal3Unified cal3unified) : returns void
%update(size_t j, EssentialMatrix essential_matrix) : returns void
%update(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
%update(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
%update(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
%update(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
%update(size_t j, PinholePose<Cal3_S2> camera) : returns void
%update(size_t j, PinholePose<Cal3Bundler> camera) : returns void
%update(size_t j, PinholePose<Cal3Fisheye> camera) : returns void
%update(size_t j, PinholePose<Cal3Unified> camera) : returns void
%update(size_t j, ConstantBias constant_bias) : returns void
%update(size_t j, NavState nav_state) : returns void
%update(size_t j, Vector vector) : returns void
%update(size_t j, Matrix matrix) : returns void
%update(size_t j, double c) : returns void
%update(size_t j, ParameterMatrix<1> X) : returns void
%update(size_t j, ParameterMatrix<2> X) : returns void
%update(size_t j, ParameterMatrix<3> X) : returns void
%update(size_t j, ParameterMatrix<4> X) : returns void
%update(size_t j, ParameterMatrix<5> X) : returns void
%update(size_t j, ParameterMatrix<6> X) : returns void
%update(size_t j, ParameterMatrix<7> X) : returns void
%update(size_t j, ParameterMatrix<8> X) : returns void
%update(size_t j, ParameterMatrix<9> X) : returns void
%update(size_t j, ParameterMatrix<10> X) : returns void
%update(size_t j, ParameterMatrix<11> X) : returns void
%update(size_t j, ParameterMatrix<12> X) : returns void
%update(size_t j, ParameterMatrix<13> X) : returns void
%update(size_t j, ParameterMatrix<14> X) : returns void
%update(size_t j, ParameterMatrix<15> X) : returns void
%zeroVectors() : returns gtsam::VectorValues
%
classdef Values < handle
  properties
    ptr_gtsamValues = 0
  end
  methods
    function obj = Values(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2355, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2356);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Values')
        my_ptr = gtsam_wrapper(2357, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Values constructor');
      end
      obj.ptr_gtsamValues = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2358, obj.ptr_gtsamValues);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = atCal3Bundler(this, varargin)
      % ATCAL3BUNDLER usage: atCal3Bundler(size_t j) : returns gtsam.Cal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2359, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3Bundler');
    end

    function varargout = atCal3DS2(this, varargin)
      % ATCAL3DS2 usage: atCal3DS2(size_t j) : returns gtsam.Cal3DS2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2360, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3DS2');
    end

    function varargout = atCal3Fisheye(this, varargin)
      % ATCAL3FISHEYE usage: atCal3Fisheye(size_t j) : returns gtsam.Cal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2361, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3Fisheye');
    end

    function varargout = atCal3Unified(this, varargin)
      % ATCAL3UNIFIED usage: atCal3Unified(size_t j) : returns gtsam.Cal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2362, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3Unified');
    end

    function varargout = atCal3_S2(this, varargin)
      % ATCAL3_S2 usage: atCal3_S2(size_t j) : returns gtsam.Cal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2363, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3_S2');
    end

    function varargout = atConstantBias(this, varargin)
      % ATCONSTANTBIAS usage: atConstantBias(size_t j) : returns gtsam.imuBias.ConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2364, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atConstantBias');
    end

    function varargout = atDouble(this, varargin)
      % ATDOUBLE usage: atDouble(size_t j) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2365, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atDouble');
    end

    function varargout = atEssentialMatrix(this, varargin)
      % ATESSENTIALMATRIX usage: atEssentialMatrix(size_t j) : returns gtsam.EssentialMatrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2366, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atEssentialMatrix');
    end

    function varargout = atMatrix(this, varargin)
      % ATMATRIX usage: atMatrix(size_t j) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2367, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atMatrix');
    end

    function varargout = atNavState(this, varargin)
      % ATNAVSTATE usage: atNavState(size_t j) : returns gtsam.NavState
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2368, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atNavState');
    end

    function varargout = atParameterMatrix1(this, varargin)
      % ATPARAMETERMATRIX1 usage: atParameterMatrix1(size_t j) : returns gtsam.ParameterMatrix1
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2369, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix1');
    end

    function varargout = atParameterMatrix10(this, varargin)
      % ATPARAMETERMATRIX10 usage: atParameterMatrix10(size_t j) : returns gtsam.ParameterMatrix10
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2370, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix10');
    end

    function varargout = atParameterMatrix11(this, varargin)
      % ATPARAMETERMATRIX11 usage: atParameterMatrix11(size_t j) : returns gtsam.ParameterMatrix11
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2371, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix11');
    end

    function varargout = atParameterMatrix12(this, varargin)
      % ATPARAMETERMATRIX12 usage: atParameterMatrix12(size_t j) : returns gtsam.ParameterMatrix12
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2372, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix12');
    end

    function varargout = atParameterMatrix13(this, varargin)
      % ATPARAMETERMATRIX13 usage: atParameterMatrix13(size_t j) : returns gtsam.ParameterMatrix13
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2373, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix13');
    end

    function varargout = atParameterMatrix14(this, varargin)
      % ATPARAMETERMATRIX14 usage: atParameterMatrix14(size_t j) : returns gtsam.ParameterMatrix14
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2374, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix14');
    end

    function varargout = atParameterMatrix15(this, varargin)
      % ATPARAMETERMATRIX15 usage: atParameterMatrix15(size_t j) : returns gtsam.ParameterMatrix15
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2375, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix15');
    end

    function varargout = atParameterMatrix2(this, varargin)
      % ATPARAMETERMATRIX2 usage: atParameterMatrix2(size_t j) : returns gtsam.ParameterMatrix2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2376, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix2');
    end

    function varargout = atParameterMatrix3(this, varargin)
      % ATPARAMETERMATRIX3 usage: atParameterMatrix3(size_t j) : returns gtsam.ParameterMatrix3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2377, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix3');
    end

    function varargout = atParameterMatrix4(this, varargin)
      % ATPARAMETERMATRIX4 usage: atParameterMatrix4(size_t j) : returns gtsam.ParameterMatrix4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2378, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix4');
    end

    function varargout = atParameterMatrix5(this, varargin)
      % ATPARAMETERMATRIX5 usage: atParameterMatrix5(size_t j) : returns gtsam.ParameterMatrix5
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2379, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix5');
    end

    function varargout = atParameterMatrix6(this, varargin)
      % ATPARAMETERMATRIX6 usage: atParameterMatrix6(size_t j) : returns gtsam.ParameterMatrix6
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2380, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix6');
    end

    function varargout = atParameterMatrix7(this, varargin)
      % ATPARAMETERMATRIX7 usage: atParameterMatrix7(size_t j) : returns gtsam.ParameterMatrix7
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2381, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix7');
    end

    function varargout = atParameterMatrix8(this, varargin)
      % ATPARAMETERMATRIX8 usage: atParameterMatrix8(size_t j) : returns gtsam.ParameterMatrix8
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2382, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix8');
    end

    function varargout = atParameterMatrix9(this, varargin)
      % ATPARAMETERMATRIX9 usage: atParameterMatrix9(size_t j) : returns gtsam.ParameterMatrix9
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2383, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atParameterMatrix9');
    end

    function varargout = atPinholeCameraCal3Bundler(this, varargin)
      % ATPINHOLECAMERACAL3BUNDLER usage: atPinholeCameraCal3Bundler(size_t j) : returns gtsam.PinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2384, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholeCameraCal3Bundler');
    end

    function varargout = atPinholeCameraCal3Fisheye(this, varargin)
      % ATPINHOLECAMERACAL3FISHEYE usage: atPinholeCameraCal3Fisheye(size_t j) : returns gtsam.PinholeCameraCal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2385, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholeCameraCal3Fisheye');
    end

    function varargout = atPinholeCameraCal3Unified(this, varargin)
      % ATPINHOLECAMERACAL3UNIFIED usage: atPinholeCameraCal3Unified(size_t j) : returns gtsam.PinholeCameraCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2386, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholeCameraCal3Unified');
    end

    function varargout = atPinholeCameraCal3_S2(this, varargin)
      % ATPINHOLECAMERACAL3_S2 usage: atPinholeCameraCal3_S2(size_t j) : returns gtsam.PinholeCameraCal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2387, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholeCameraCal3_S2');
    end

    function varargout = atPinholePoseCal3Bundler(this, varargin)
      % ATPINHOLEPOSECAL3BUNDLER usage: atPinholePoseCal3Bundler(size_t j) : returns gtsam.PinholePoseCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2388, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholePoseCal3Bundler');
    end

    function varargout = atPinholePoseCal3Fisheye(this, varargin)
      % ATPINHOLEPOSECAL3FISHEYE usage: atPinholePoseCal3Fisheye(size_t j) : returns gtsam.PinholePoseCal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2389, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholePoseCal3Fisheye');
    end

    function varargout = atPinholePoseCal3Unified(this, varargin)
      % ATPINHOLEPOSECAL3UNIFIED usage: atPinholePoseCal3Unified(size_t j) : returns gtsam.PinholePoseCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2390, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholePoseCal3Unified');
    end

    function varargout = atPinholePoseCal3_S2(this, varargin)
      % ATPINHOLEPOSECAL3_S2 usage: atPinholePoseCal3_S2(size_t j) : returns gtsam.PinholePoseCal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2391, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholePoseCal3_S2');
    end

    function varargout = atPoint2(this, varargin)
      % ATPOINT2 usage: atPoint2(size_t j) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2392, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPoint2');
    end

    function varargout = atPoint3(this, varargin)
      % ATPOINT3 usage: atPoint3(size_t j) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2393, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPoint3');
    end

    function varargout = atPose2(this, varargin)
      % ATPOSE2 usage: atPose2(size_t j) : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2394, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPose2');
    end

    function varargout = atPose3(this, varargin)
      % ATPOSE3 usage: atPose3(size_t j) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2395, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPose3');
    end

    function varargout = atRot2(this, varargin)
      % ATROT2 usage: atRot2(size_t j) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2396, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atRot2');
    end

    function varargout = atRot3(this, varargin)
      % ATROT3 usage: atRot3(size_t j) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2397, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atRot3');
    end

    function varargout = atSO3(this, varargin)
      % ATSO3 usage: atSO3(size_t j) : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2398, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atSO3');
    end

    function varargout = atSO4(this, varargin)
      % ATSO4 usage: atSO4(size_t j) : returns gtsam.SO4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2399, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atSO4');
    end

    function varargout = atSOn(this, varargin)
      % ATSON usage: atSOn(size_t j) : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2400, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atSOn');
    end

    function varargout = atUnit3(this, varargin)
      % ATUNIT3 usage: atUnit3(size_t j) : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2401, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atUnit3');
    end

    function varargout = atVector(this, varargin)
      % ATVECTOR usage: atVector(size_t j) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2402, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atVector');
    end

    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2403, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.clear');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2404, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.dim');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2405, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.empty');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Values other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2406, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.equals');
    end

    function varargout = erase(this, varargin)
      % ERASE usage: erase(size_t j) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(2407, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.erase');
    end

    function varargout = exists(this, varargin)
      % EXISTS usage: exists(size_t j) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2408, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.exists');
    end

    function varargout = insert(this, varargin)
      % INSERT usage: insert(Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        gtsam_wrapper(2409, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Vector vector) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        gtsam_wrapper(2410, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Matrix matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(2411, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Point2 point2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(2412, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Point3 point3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        gtsam_wrapper(2413, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Rot2 rot2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2')
        gtsam_wrapper(2414, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Pose2 pose2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose2')
        gtsam_wrapper(2415, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, SO3 R) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO3')
        gtsam_wrapper(2416, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, SO4 Q) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO4')
        gtsam_wrapper(2417, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, SOn P) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SOn')
        gtsam_wrapper(2418, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Rot3 rot3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot3')
        gtsam_wrapper(2419, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Pose3 pose3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose3')
        gtsam_wrapper(2420, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Unit3 unit3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Unit3')
        gtsam_wrapper(2421, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3_S2 cal3_s2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3_S2')
        gtsam_wrapper(2422, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3DS2 cal3ds2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3DS2')
        gtsam_wrapper(2423, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3Bundler cal3bundler) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Bundler')
        gtsam_wrapper(2424, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3Fisheye cal3fisheye) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Fisheye')
        gtsam_wrapper(2425, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3Unified cal3unified) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Unified')
        gtsam_wrapper(2426, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, EssentialMatrix essential_matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.EssentialMatrix')
        gtsam_wrapper(2427, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3_S2')
        gtsam_wrapper(2428, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Bundler')
        gtsam_wrapper(2429, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Fisheye')
        gtsam_wrapper(2430, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Unified')
        gtsam_wrapper(2431, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholePose<Cal3_S2> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3_S2')
        gtsam_wrapper(2432, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholePose<Cal3Bundler> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3Bundler')
        gtsam_wrapper(2433, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholePose<Cal3Fisheye> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3Fisheye')
        gtsam_wrapper(2434, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholePose<Cal3Unified> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3Unified')
        gtsam_wrapper(2435, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ConstantBias constant_bias) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        gtsam_wrapper(2436, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, NavState nav_state) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.NavState')
        gtsam_wrapper(2437, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, double c) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(2438, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<1> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix1')
        gtsam_wrapper(2439, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<2> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix2')
        gtsam_wrapper(2440, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<3> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix3')
        gtsam_wrapper(2441, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<4> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix4')
        gtsam_wrapper(2442, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<5> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix5')
        gtsam_wrapper(2443, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<6> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix6')
        gtsam_wrapper(2444, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<7> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix7')
        gtsam_wrapper(2445, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<8> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix8')
        gtsam_wrapper(2446, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<9> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix9')
        gtsam_wrapper(2447, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<10> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix10')
        gtsam_wrapper(2448, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<11> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix11')
        gtsam_wrapper(2449, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<12> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix12')
        gtsam_wrapper(2450, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<13> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix13')
        gtsam_wrapper(2451, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<14> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix14')
        gtsam_wrapper(2452, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ParameterMatrix<15> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix15')
        gtsam_wrapper(2453, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.insert');
    end

    function varargout = insertPoint2(this, varargin)
      % INSERTPOINT2 usage: insertPoint2(size_t j, Point2 val) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(2454, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.insertPoint2');
    end

    function varargout = insertPoint3(this, varargin)
      % INSERTPOINT3 usage: insertPoint3(size_t j, Point3 val) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        gtsam_wrapper(2455, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.insertPoint3');
    end

    function varargout = insert_or_assign(this, varargin)
      % INSERT_OR_ASSIGN usage: insert_or_assign(Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        gtsam_wrapper(2456, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Point2 point2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(2457, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Point3 point3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        gtsam_wrapper(2458, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Rot2 rot2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2')
        gtsam_wrapper(2459, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Pose2 pose2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose2')
        gtsam_wrapper(2460, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, SO3 R) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO3')
        gtsam_wrapper(2461, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, SO4 Q) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO4')
        gtsam_wrapper(2462, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, SOn P) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SOn')
        gtsam_wrapper(2463, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Rot3 rot3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot3')
        gtsam_wrapper(2464, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Pose3 pose3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose3')
        gtsam_wrapper(2465, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Unit3 unit3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Unit3')
        gtsam_wrapper(2466, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3_S2 cal3_s2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3_S2')
        gtsam_wrapper(2467, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3DS2 cal3ds2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3DS2')
        gtsam_wrapper(2468, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3Bundler cal3bundler) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Bundler')
        gtsam_wrapper(2469, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3Fisheye cal3fisheye) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Fisheye')
        gtsam_wrapper(2470, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3Unified cal3unified) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Unified')
        gtsam_wrapper(2471, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, EssentialMatrix essential_matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.EssentialMatrix')
        gtsam_wrapper(2472, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3_S2')
        gtsam_wrapper(2473, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Bundler')
        gtsam_wrapper(2474, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Fisheye')
        gtsam_wrapper(2475, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Unified')
        gtsam_wrapper(2476, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholePose<Cal3_S2> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3_S2')
        gtsam_wrapper(2477, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholePose<Cal3Bundler> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3Bundler')
        gtsam_wrapper(2478, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholePose<Cal3Fisheye> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3Fisheye')
        gtsam_wrapper(2479, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholePose<Cal3Unified> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3Unified')
        gtsam_wrapper(2480, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ConstantBias constant_bias) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        gtsam_wrapper(2481, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, NavState nav_state) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.NavState')
        gtsam_wrapper(2482, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Vector vector) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        gtsam_wrapper(2483, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Matrix matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(2484, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, double c) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(2485, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<1> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix1')
        gtsam_wrapper(2486, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<2> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix2')
        gtsam_wrapper(2487, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<3> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix3')
        gtsam_wrapper(2488, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<4> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix4')
        gtsam_wrapper(2489, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<5> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix5')
        gtsam_wrapper(2490, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<6> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix6')
        gtsam_wrapper(2491, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<7> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix7')
        gtsam_wrapper(2492, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<8> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix8')
        gtsam_wrapper(2493, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<9> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix9')
        gtsam_wrapper(2494, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<10> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix10')
        gtsam_wrapper(2495, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<11> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix11')
        gtsam_wrapper(2496, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<12> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix12')
        gtsam_wrapper(2497, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<13> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix13')
        gtsam_wrapper(2498, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<14> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix14')
        gtsam_wrapper(2499, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ParameterMatrix<15> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix15')
        gtsam_wrapper(2500, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.insert_or_assign');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2501, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.keys');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Values cp) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(2502, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.localCoordinates');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2503, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2504, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2505, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(VectorValues delta) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2506, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2507, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Values.string_serialize');
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
        varargout{1} = gtsam_wrapper(2508, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.size');
    end

    function varargout = swap(this, varargin)
      % SWAP usage: swap(Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        gtsam_wrapper(2509, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.swap');
    end

    function varargout = update(this, varargin)
      % UPDATE usage: update(Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        gtsam_wrapper(2510, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Point2 point2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(2511, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Point3 point3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        gtsam_wrapper(2512, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Rot2 rot2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2')
        gtsam_wrapper(2513, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Pose2 pose2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose2')
        gtsam_wrapper(2514, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, SO3 R) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO3')
        gtsam_wrapper(2515, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, SO4 Q) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO4')
        gtsam_wrapper(2516, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, SOn P) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SOn')
        gtsam_wrapper(2517, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Rot3 rot3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot3')
        gtsam_wrapper(2518, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Pose3 pose3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose3')
        gtsam_wrapper(2519, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Unit3 unit3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Unit3')
        gtsam_wrapper(2520, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3_S2 cal3_s2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3_S2')
        gtsam_wrapper(2521, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3DS2 cal3ds2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3DS2')
        gtsam_wrapper(2522, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3Bundler cal3bundler) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Bundler')
        gtsam_wrapper(2523, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3Fisheye cal3fisheye) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Fisheye')
        gtsam_wrapper(2524, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3Unified cal3unified) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Unified')
        gtsam_wrapper(2525, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, EssentialMatrix essential_matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.EssentialMatrix')
        gtsam_wrapper(2526, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3_S2')
        gtsam_wrapper(2527, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Bundler')
        gtsam_wrapper(2528, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Fisheye')
        gtsam_wrapper(2529, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Unified')
        gtsam_wrapper(2530, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholePose<Cal3_S2> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3_S2')
        gtsam_wrapper(2531, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholePose<Cal3Bundler> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3Bundler')
        gtsam_wrapper(2532, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholePose<Cal3Fisheye> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3Fisheye')
        gtsam_wrapper(2533, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholePose<Cal3Unified> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholePoseCal3Unified')
        gtsam_wrapper(2534, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ConstantBias constant_bias) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        gtsam_wrapper(2535, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, NavState nav_state) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.NavState')
        gtsam_wrapper(2536, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Vector vector) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        gtsam_wrapper(2537, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Matrix matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(2538, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, double c) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(2539, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<1> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix1')
        gtsam_wrapper(2540, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<2> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix2')
        gtsam_wrapper(2541, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<3> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix3')
        gtsam_wrapper(2542, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<4> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix4')
        gtsam_wrapper(2543, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<5> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix5')
        gtsam_wrapper(2544, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<6> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix6')
        gtsam_wrapper(2545, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<7> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix7')
        gtsam_wrapper(2546, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<8> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix8')
        gtsam_wrapper(2547, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<9> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix9')
        gtsam_wrapper(2548, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<10> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix10')
        gtsam_wrapper(2549, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<11> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix11')
        gtsam_wrapper(2550, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<12> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix12')
        gtsam_wrapper(2551, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<13> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix13')
        gtsam_wrapper(2552, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<14> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix14')
        gtsam_wrapper(2553, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ParameterMatrix<15> X) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.ParameterMatrix15')
        gtsam_wrapper(2554, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.update');
    end

    function varargout = zeroVectors(this, varargin)
      % ZEROVECTORS usage: zeroVectors() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2555, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.zeroVectors');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2556, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Values.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Values.string_deserialize(sobj);
    end
  end
end
