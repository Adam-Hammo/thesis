%class Rot3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Rot3()
%Rot3(Matrix R)
%Rot3(Point3 col1, Point3 col2, Point3 col3)
%Rot3(double R11, double R12, double R13, double R21, double R22, double R23, double R31, double R32, double R33)
%Rot3(double w, double x, double y, double z)
%
%-------Methods-------
%axisAngle() : returns pair< gtsam::Unit3, double >
%between(Rot3 p2) : returns gtsam::Rot3
%column(size_t index) : returns Point3
%compose(Rot3 p2) : returns gtsam::Rot3
%equals(Rot3 rot, double tol) : returns bool
%inverse() : returns gtsam::Rot3
%localCoordinates(Rot3 p) : returns Vector
%logmap(Rot3 p) : returns Vector
%matrix() : returns Matrix
%pitch() : returns double
%print(string s) : returns void
%retract(Vector v) : returns gtsam::Rot3
%roll() : returns double
%rotate(Point3 p) : returns Point3
%rpy() : returns Vector
%slerp(double t, Rot3 other) : returns gtsam::Rot3
%toQuaternion() : returns gtsam::Quaternion
%transpose() : returns Matrix
%unrotate(Point3 p) : returns Point3
%xyz() : returns Vector
%yaw() : returns double
%ypr() : returns Vector
%
%-------Static Methods-------
%AxisAngle(Point3 axis, double angle) : returns gtsam::Rot3
%ClosestTo(Matrix M) : returns gtsam::Rot3
%Expmap(Vector v) : returns gtsam::Rot3
%Identity() : returns gtsam::Rot3
%Logmap(Rot3 p) : returns Vector
%Pitch(double t) : returns gtsam::Rot3
%Quaternion(double w, double x, double y, double z) : returns gtsam::Rot3
%Rodrigues(Vector v) : returns gtsam::Rot3
%Rodrigues(double wx, double wy, double wz) : returns gtsam::Rot3
%Roll(double t) : returns gtsam::Rot3
%Rx(double t) : returns gtsam::Rot3
%Ry(double t) : returns gtsam::Rot3
%Rz(double t) : returns gtsam::Rot3
%RzRyRx(double x, double y, double z) : returns gtsam::Rot3
%RzRyRx(Vector xyz) : returns gtsam::Rot3
%Yaw(double t) : returns gtsam::Rot3
%Ypr(double y, double p, double r) : returns gtsam::Rot3
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Rot3
%
classdef Rot3 < handle
  properties
    ptr_gtsamRot3 = 0
  end
  methods
    function obj = Rot3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(934, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(935);
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(936, varargin{1});
      elseif nargin == 3 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'double') && size(varargin{3},1)==3 && size(varargin{3},2)==1
        my_ptr = gtsam_wrapper(937, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 9 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double') && isa(varargin{8},'double') && isa(varargin{9},'double')
        my_ptr = gtsam_wrapper(938, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8}, varargin{9});
      elseif nargin == 4 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double')
        my_ptr = gtsam_wrapper(939, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.Rot3 constructor');
      end
      obj.ptr_gtsamRot3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(940, obj.ptr_gtsamRot3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = axisAngle(this, varargin)
      % AXISANGLE usage: axisAngle() : returns pair< gtsam.Unit3, double >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        [ varargout{1} varargout{2} ] = gtsam_wrapper(941, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.axisAngle');
    end

    function varargout = between(this, varargin)
      % BETWEEN usage: between(Rot3 p2) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot3')
        varargout{1} = gtsam_wrapper(942, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.between');
    end

    function varargout = column(this, varargin)
      % COLUMN usage: column(size_t index) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(943, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.column');
    end

    function varargout = compose(this, varargin)
      % COMPOSE usage: compose(Rot3 p2) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot3')
        varargout{1} = gtsam_wrapper(944, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.compose');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Rot3 rot, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Rot3') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(945, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.equals');
    end

    function varargout = inverse(this, varargin)
      % INVERSE usage: inverse() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(946, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.inverse');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Rot3 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot3')
        varargout{1} = gtsam_wrapper(947, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.localCoordinates');
    end

    function varargout = logmap(this, varargin)
      % LOGMAP usage: logmap(Rot3 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot3')
        varargout{1} = gtsam_wrapper(948, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.logmap');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(949, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.matrix');
    end

    function varargout = pitch(this, varargin)
      % PITCH usage: pitch() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(950, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.pitch');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(951, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(952, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(953, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.retract');
    end

    function varargout = roll(this, varargin)
      % ROLL usage: roll() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(954, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.roll');
    end

    function varargout = rotate(this, varargin)
      % ROTATE usage: rotate(Point3 p) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(955, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.rotate');
    end

    function varargout = rpy(this, varargin)
      % RPY usage: rpy() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(956, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.rpy');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(957, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Rot3.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = slerp(this, varargin)
      % SLERP usage: slerp(double t, Rot3 other) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'gtsam.Rot3')
        varargout{1} = gtsam_wrapper(958, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.slerp');
    end

    function varargout = toQuaternion(this, varargin)
      % TOQUATERNION usage: toQuaternion() : returns gtsam.Quaternion
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(959, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.toQuaternion');
    end

    function varargout = transpose(this, varargin)
      % TRANSPOSE usage: transpose() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(960, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.transpose');
    end

    function varargout = unrotate(this, varargin)
      % UNROTATE usage: unrotate(Point3 p) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(961, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.unrotate');
    end

    function varargout = xyz(this, varargin)
      % XYZ usage: xyz() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(962, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.xyz');
    end

    function varargout = yaw(this, varargin)
      % YAW usage: yaw() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(963, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.yaw');
    end

    function varargout = ypr(this, varargin)
      % YPR usage: ypr() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(964, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3.ypr');
    end

  end

  methods(Static = true)
    function varargout = AxisAngle(varargin)
      % AXISANGLE usage: AxisAngle(Point3 axis, double angle) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1 && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(965, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.AxisAngle');
    end

    function varargout = ClosestTo(varargin)
      % CLOSESTTO usage: ClosestTo(Matrix M) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(966, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.ClosestTo');
    end

    function varargout = Expmap(varargin)
      % EXPMAP usage: Expmap(Vector v) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(967, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Expmap');
    end

    function varargout = Identity(varargin)
      % IDENTITY usage: Identity() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(968, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Identity');
    end

    function varargout = Logmap(varargin)
      % LOGMAP usage: Logmap(Rot3 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot3')
        varargout{1} = gtsam_wrapper(969, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Logmap');
    end

    function varargout = Pitch(varargin)
      % PITCH usage: Pitch(double t) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(970, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Pitch');
    end

    function varargout = Quaternion(varargin)
      % QUATERNION usage: Quaternion(double w, double x, double y, double z) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double')
        varargout{1} = gtsam_wrapper(971, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Quaternion');
    end

    function varargout = Rodrigues(varargin)
      % RODRIGUES usage: Rodrigues(Vector v) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(972, varargin{:});
        return
      end

      % RODRIGUES usage: Rodrigues(double wx, double wy, double wz) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(973, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Rodrigues');
    end

    function varargout = Roll(varargin)
      % ROLL usage: Roll(double t) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(974, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Roll');
    end

    function varargout = Rx(varargin)
      % RX usage: Rx(double t) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(975, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Rx');
    end

    function varargout = Ry(varargin)
      % RY usage: Ry(double t) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(976, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Ry');
    end

    function varargout = Rz(varargin)
      % RZ usage: Rz(double t) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(977, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Rz');
    end

    function varargout = RzRyRx(varargin)
      % RZRYRX usage: RzRyRx(double x, double y, double z) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(978, varargin{:});
        return
      end

      % RZRYRX usage: RzRyRx(Vector xyz) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(979, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.RzRyRx');
    end

    function varargout = Yaw(varargin)
      % YAW usage: Yaw(double t) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(980, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Yaw');
    end

    function varargout = Ypr(varargin)
      % YPR usage: Ypr(double y, double p, double r) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(981, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot3.Ypr');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(982, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Rot3.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Rot3.string_deserialize(sobj);
    end
  end
end
