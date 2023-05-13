%class Pose3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Pose3()
%Pose3(Pose3 other)
%Pose3(Rot3 r, Point3 t)
%Pose3(Pose2 pose2)
%Pose3(Matrix mat)
%
%-------Methods-------
%Adjoint(Vector xi) : returns Vector
%Adjoint(Vector xi, Ref<MatrixXd> H_this, Ref<MatrixXd> H_xib) : returns Vector
%AdjointMap() : returns Matrix
%AdjointTranspose(Vector xi) : returns Vector
%AdjointTranspose(Vector xi, Ref<MatrixXd> H_this, Ref<MatrixXd> H_x) : returns Vector
%between(Pose3 pose) : returns gtsam::Pose3
%between(Pose3 pose, Ref<MatrixXd> H1, Ref<MatrixXd> H2) : returns gtsam::Pose3
%compose(Pose3 pose) : returns gtsam::Pose3
%compose(Pose3 pose, Ref<MatrixXd> H1, Ref<MatrixXd> H2) : returns gtsam::Pose3
%equals(Pose3 pose, double tol) : returns bool
%expmap(Vector v) : returns gtsam::Pose3
%inverse() : returns gtsam::Pose3
%inverse(Ref<MatrixXd> H) : returns gtsam::Pose3
%localCoordinates(Pose3 pose) : returns Vector
%localCoordinates(Pose3 pose, Ref<MatrixXd> Hxi) : returns Vector
%logmap(Pose3 pose) : returns Vector
%matrix() : returns Matrix
%print(string s) : returns void
%range(Point3 point) : returns double
%range(Point3 point, Ref<MatrixXd> Hself, Ref<MatrixXd> Hpoint) : returns double
%range(Pose3 pose) : returns double
%range(Pose3 pose, Ref<MatrixXd> Hself, Ref<MatrixXd> Hpose) : returns double
%retract(Vector v) : returns gtsam::Pose3
%retract(Vector v, Ref<MatrixXd> Hxi) : returns gtsam::Pose3
%rotation() : returns gtsam::Rot3
%rotation(Ref<MatrixXd> Hself) : returns gtsam::Rot3
%slerp(double t, Pose3 pose) : returns gtsam::Pose3
%slerp(double t, Pose3 pose, Ref<MatrixXd> Hx, Ref<MatrixXd> Hy) : returns gtsam::Pose3
%transformFrom(Point3 point) : returns Point3
%transformFrom(Point3 point, Ref<MatrixXd> Hself, Ref<MatrixXd> Hpoint) : returns Point3
%transformFrom(Matrix points) : returns Matrix
%transformPoseFrom(Pose3 pose) : returns gtsam::Pose3
%transformPoseFrom(Pose3 pose, Ref<MatrixXd> Hself, Ref<MatrixXd> HaTb) : returns gtsam::Pose3
%transformPoseTo(Pose3 pose) : returns gtsam::Pose3
%transformPoseTo(Pose3 pose, Ref<MatrixXd> Hself, Ref<MatrixXd> HwTb) : returns gtsam::Pose3
%transformTo(Point3 point) : returns Point3
%transformTo(Point3 point, Ref<MatrixXd> Hself, Ref<MatrixXd> Hpoint) : returns Point3
%transformTo(Matrix points) : returns Matrix
%translation() : returns Point3
%translation(Ref<MatrixXd> Hself) : returns Point3
%x() : returns double
%y() : returns double
%z() : returns double
%
%-------Static Methods-------
%Align(Point3Pairs abPointPairs) : returns boost::optional<gtsam::Pose3>
%Align(Matrix a, Matrix b) : returns boost::optional<gtsam::Pose3>
%Expmap(Vector v) : returns gtsam::Pose3
%Expmap(Vector v, Ref<MatrixXd> Hxi) : returns gtsam::Pose3
%ExpmapDerivative(Vector xi) : returns Matrix
%Identity() : returns gtsam::Pose3
%Logmap(Pose3 pose) : returns Vector
%Logmap(Pose3 pose, Ref<MatrixXd> Hpose) : returns Vector
%LogmapDerivative(Pose3 xi) : returns Matrix
%adjoint(Vector xi, Vector y) : returns Vector
%adjointMap(Vector xi) : returns Matrix
%adjointMap_(Vector xi) : returns Matrix
%adjointTranspose(Vector xi, Vector y) : returns Vector
%adjoint_(Vector xi, Vector y) : returns Vector
%wedge(double wx, double wy, double wz, double vx, double vy, double vz) : returns Matrix
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Pose3
%
classdef Pose3 < handle
  properties
    ptr_gtsamPose3 = 0
  end
  methods
    function obj = Pose3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1027, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1028);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Pose3')
        my_ptr = gtsam_wrapper(1029, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.Rot3') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        my_ptr = gtsam_wrapper(1030, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'gtsam.Pose2')
        my_ptr = gtsam_wrapper(1031, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(1032, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Pose3 constructor');
      end
      obj.ptr_gtsamPose3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1033, obj.ptr_gtsamPose3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = Adjoint(this, varargin)
      % ADJOINT usage: Adjoint(Vector xi) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1034, this, varargin{:});
        return
      end
      % ADJOINT usage: Adjoint(Vector xi, Ref<MatrixXd> H_this, Ref<MatrixXd> H_xib) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1035, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.Adjoint');
    end

    function varargout = AdjointMap(this, varargin)
      % ADJOINTMAP usage: AdjointMap() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1036, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.AdjointMap');
    end

    function varargout = AdjointTranspose(this, varargin)
      % ADJOINTTRANSPOSE usage: AdjointTranspose(Vector xi) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1037, this, varargin{:});
        return
      end
      % ADJOINTTRANSPOSE usage: AdjointTranspose(Vector xi, Ref<MatrixXd> H_this, Ref<MatrixXd> H_x) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1038, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.AdjointTranspose');
    end

    function varargout = between(this, varargin)
      % BETWEEN usage: between(Pose3 pose) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1039, this, varargin{:});
        return
      end
      % BETWEEN usage: between(Pose3 pose, Ref<MatrixXd> H1, Ref<MatrixXd> H2) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1040, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.between');
    end

    function varargout = compose(this, varargin)
      % COMPOSE usage: compose(Pose3 pose) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1041, this, varargin{:});
        return
      end
      % COMPOSE usage: compose(Pose3 pose, Ref<MatrixXd> H1, Ref<MatrixXd> H2) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1042, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.compose');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Pose3 pose, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1043, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.equals');
    end

    function varargout = expmap(this, varargin)
      % EXPMAP usage: expmap(Vector v) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1044, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.expmap');
    end

    function varargout = inverse(this, varargin)
      % INVERSE usage: inverse() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1045, this, varargin{:});
        return
      end
      % INVERSE usage: inverse(Ref<MatrixXd> H) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1046, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.inverse');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Pose3 pose) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1047, this, varargin{:});
        return
      end
      % LOCALCOORDINATES usage: localCoordinates(Pose3 pose, Ref<MatrixXd> Hxi) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1048, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.localCoordinates');
    end

    function varargout = logmap(this, varargin)
      % LOGMAP usage: logmap(Pose3 pose) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1049, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.logmap');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1050, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1051, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1052, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.print');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range(Point3 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1053, this, varargin{:});
        return
      end
      % RANGE usage: range(Point3 point, Ref<MatrixXd> Hself, Ref<MatrixXd> Hpoint) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1054, this, varargin{:});
        return
      end
      % RANGE usage: range(Pose3 pose) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1055, this, varargin{:});
        return
      end
      % RANGE usage: range(Pose3 pose, Ref<MatrixXd> Hself, Ref<MatrixXd> Hpose) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1056, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.range');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1057, this, varargin{:});
        return
      end
      % RETRACT usage: retract(Vector v, Ref<MatrixXd> Hxi) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1058, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.retract');
    end

    function varargout = rotation(this, varargin)
      % ROTATION usage: rotation() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1059, this, varargin{:});
        return
      end
      % ROTATION usage: rotation(Ref<MatrixXd> Hself) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1060, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.rotation');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1061, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Pose3.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = slerp(this, varargin)
      % SLERP usage: slerp(double t, Pose3 pose) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1062, this, varargin{:});
        return
      end
      % SLERP usage: slerp(double t, Pose3 pose, Ref<MatrixXd> Hx, Ref<MatrixXd> Hy) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'double') && isa(varargin{2},'gtsam.Pose3') && isa(varargin{3},'Eigen.RefMatrixXd') && isa(varargin{4},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1063, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.slerp');
    end

    function varargout = transformFrom(this, varargin)
      % TRANSFORMFROM usage: transformFrom(Point3 point) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1064, this, varargin{:});
        return
      end
      % TRANSFORMFROM usage: transformFrom(Point3 point, Ref<MatrixXd> Hself, Ref<MatrixXd> Hpoint) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1065, this, varargin{:});
        return
      end
      % TRANSFORMFROM usage: transformFrom(Matrix points) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1066, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.transformFrom');
    end

    function varargout = transformPoseFrom(this, varargin)
      % TRANSFORMPOSEFROM usage: transformPoseFrom(Pose3 pose) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1067, this, varargin{:});
        return
      end
      % TRANSFORMPOSEFROM usage: transformPoseFrom(Pose3 pose, Ref<MatrixXd> Hself, Ref<MatrixXd> HaTb) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1068, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.transformPoseFrom');
    end

    function varargout = transformPoseTo(this, varargin)
      % TRANSFORMPOSETO usage: transformPoseTo(Pose3 pose) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1069, this, varargin{:});
        return
      end
      % TRANSFORMPOSETO usage: transformPoseTo(Pose3 pose, Ref<MatrixXd> Hself, Ref<MatrixXd> HwTb) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1070, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.transformPoseTo');
    end

    function varargout = transformTo(this, varargin)
      % TRANSFORMTO usage: transformTo(Point3 point) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1071, this, varargin{:});
        return
      end
      % TRANSFORMTO usage: transformTo(Point3 point, Ref<MatrixXd> Hself, Ref<MatrixXd> Hpoint) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1072, this, varargin{:});
        return
      end
      % TRANSFORMTO usage: transformTo(Matrix points) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1073, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.transformTo');
    end

    function varargout = translation(this, varargin)
      % TRANSLATION usage: translation() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1074, this, varargin{:});
        return
      end
      % TRANSLATION usage: translation(Ref<MatrixXd> Hself) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1075, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.translation');
    end

    function varargout = x(this, varargin)
      % X usage: x() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1076, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.x');
    end

    function varargout = y(this, varargin)
      % Y usage: y() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1077, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.y');
    end

    function varargout = z(this, varargin)
      % Z usage: z() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1078, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose3.z');
    end

  end

  methods(Static = true)
    function varargout = Align(varargin)
      % ALIGN usage: Align(Point3Pairs abPointPairs) : returns boost.optionalPose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Point3Pairs')
        varargout{1} = gtsam_wrapper(1079, varargin{:});
        return
      end

      % ALIGN usage: Align(Matrix a, Matrix b) : returns boost.optionalPose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1080, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.Align');
    end

    function varargout = Expmap(varargin)
      % EXPMAP usage: Expmap(Vector v) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1081, varargin{:});
        return
      end

      % EXPMAP usage: Expmap(Vector v, Ref<MatrixXd> Hxi) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1082, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.Expmap');
    end

    function varargout = ExpmapDerivative(varargin)
      % EXPMAPDERIVATIVE usage: ExpmapDerivative(Vector xi) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1083, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.ExpmapDerivative');
    end

    function varargout = Identity(varargin)
      % IDENTITY usage: Identity() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1084, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.Identity');
    end

    function varargout = Logmap(varargin)
      % LOGMAP usage: Logmap(Pose3 pose) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1085, varargin{:});
        return
      end

      % LOGMAP usage: Logmap(Pose3 pose, Ref<MatrixXd> Hpose) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1086, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.Logmap');
    end

    function varargout = LogmapDerivative(varargin)
      % LOGMAPDERIVATIVE usage: LogmapDerivative(Pose3 xi) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1087, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.LogmapDerivative');
    end

    function varargout = adjoint(varargin)
      % ADJOINT usage: adjoint(Vector xi, Vector y) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1088, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.adjoint');
    end

    function varargout = adjointMap(varargin)
      % ADJOINTMAP usage: adjointMap(Vector xi) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1089, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.adjointMap');
    end

    function varargout = adjointMap_(varargin)
      % ADJOINTMAP_ usage: adjointMap_(Vector xi) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1090, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.adjointMap_');
    end

    function varargout = adjointTranspose(varargin)
      % ADJOINTTRANSPOSE usage: adjointTranspose(Vector xi, Vector y) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1091, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.adjointTranspose');
    end

    function varargout = adjoint_(varargin)
      % ADJOINT_ usage: adjoint_(Vector xi, Vector y) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1092, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.adjoint_');
    end

    function varargout = wedge(varargin)
      % WEDGE usage: wedge(double wx, double wy, double wz, double vx, double vy, double vz) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 6 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double')
        varargout{1} = gtsam_wrapper(1093, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose3.wedge');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1094, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Pose3.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Pose3.string_deserialize(sobj);
    end
  end
end
