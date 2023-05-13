%class Pose2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Pose2()
%Pose2(Pose2 other)
%Pose2(double x, double y, double theta)
%Pose2(double theta, Point2 t)
%Pose2(Rot2 r, Point2 t)
%Pose2(Vector v)
%
%-------Methods-------
%Adjoint(Vector xi) : returns Vector
%AdjointMap() : returns Matrix
%bearing(Point2 point) : returns gtsam::Rot2
%between(Pose2 p2) : returns gtsam::Pose2
%compose(Pose2 p2) : returns gtsam::Pose2
%equals(Pose2 pose, double tol) : returns bool
%inverse() : returns gtsam::Pose2
%localCoordinates(Pose2 p) : returns Vector
%logmap(Pose2 p) : returns Vector
%matrix() : returns Matrix
%print(string s) : returns void
%range(Point2 point) : returns double
%retract(Vector v) : returns gtsam::Pose2
%rotation() : returns gtsam::Rot2
%theta() : returns double
%transformFrom(Point2 p) : returns Point2
%transformFrom(Matrix points) : returns Matrix
%transformTo(Point2 p) : returns Point2
%transformTo(Matrix points) : returns Matrix
%translation() : returns Point2
%x() : returns double
%y() : returns double
%
%-------Static Methods-------
%Align(Point2Pairs abPointPairs) : returns boost::optional<gtsam::Pose2>
%Align(Matrix a, Matrix b) : returns boost::optional<gtsam::Pose2>
%Expmap(Vector v) : returns gtsam::Pose2
%ExpmapDerivative(Vector v) : returns Matrix
%Identity() : returns gtsam::Pose2
%Logmap(Pose2 p) : returns Vector
%LogmapDerivative(Pose2 v) : returns Matrix
%adjointMap_(Vector v) : returns Matrix
%adjointTranspose(Vector xi, Vector y) : returns Vector
%adjoint_(Vector xi, Vector y) : returns Vector
%wedge(double vx, double vy, double w) : returns Matrix
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Pose2
%
classdef Pose2 < handle
  properties
    ptr_gtsamPose2 = 0
  end
  methods
    function obj = Pose2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(983, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(984);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Pose2')
        my_ptr = gtsam_wrapper(985, varargin{1});
      elseif nargin == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double')
        my_ptr = gtsam_wrapper(986, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'double') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        my_ptr = gtsam_wrapper(987, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'gtsam.Rot2') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        my_ptr = gtsam_wrapper(988, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        my_ptr = gtsam_wrapper(989, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Pose2 constructor');
      end
      obj.ptr_gtsamPose2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(990, obj.ptr_gtsamPose2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = Adjoint(this, varargin)
      % ADJOINT usage: Adjoint(Vector xi) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(991, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.Adjoint');
    end

    function varargout = AdjointMap(this, varargin)
      % ADJOINTMAP usage: AdjointMap() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(992, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.AdjointMap');
    end

    function varargout = bearing(this, varargin)
      % BEARING usage: bearing(Point2 point) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(993, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.bearing');
    end

    function varargout = between(this, varargin)
      % BETWEEN usage: between(Pose2 p2) : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(994, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.between');
    end

    function varargout = compose(this, varargin)
      % COMPOSE usage: compose(Pose2 p2) : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(995, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.compose');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Pose2 pose, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(996, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.equals');
    end

    function varargout = inverse(this, varargin)
      % INVERSE usage: inverse() : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(997, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.inverse');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Pose2 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(998, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.localCoordinates');
    end

    function varargout = logmap(this, varargin)
      % LOGMAP usage: logmap(Pose2 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(999, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.logmap');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1000, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1001, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1002, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.print');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range(Point2 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1003, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.range');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1004, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.retract');
    end

    function varargout = rotation(this, varargin)
      % ROTATION usage: rotation() : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1005, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.rotation');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1006, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Pose2.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = theta(this, varargin)
      % THETA usage: theta() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1007, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.theta');
    end

    function varargout = transformFrom(this, varargin)
      % TRANSFORMFROM usage: transformFrom(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1008, this, varargin{:});
        return
      end
      % TRANSFORMFROM usage: transformFrom(Matrix points) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1009, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.transformFrom');
    end

    function varargout = transformTo(this, varargin)
      % TRANSFORMTO usage: transformTo(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1010, this, varargin{:});
        return
      end
      % TRANSFORMTO usage: transformTo(Matrix points) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1011, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.transformTo');
    end

    function varargout = translation(this, varargin)
      % TRANSLATION usage: translation() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1012, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.translation');
    end

    function varargout = x(this, varargin)
      % X usage: x() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1013, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.x');
    end

    function varargout = y(this, varargin)
      % Y usage: y() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1014, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Pose2.y');
    end

  end

  methods(Static = true)
    function varargout = Align(varargin)
      % ALIGN usage: Align(Point2Pairs abPointPairs) : returns boost.optionalPose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Point2Pairs')
        varargout{1} = gtsam_wrapper(1015, varargin{:});
        return
      end

      % ALIGN usage: Align(Matrix a, Matrix b) : returns boost.optionalPose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1016, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.Align');
    end

    function varargout = Expmap(varargin)
      % EXPMAP usage: Expmap(Vector v) : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1017, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.Expmap');
    end

    function varargout = ExpmapDerivative(varargin)
      % EXPMAPDERIVATIVE usage: ExpmapDerivative(Vector v) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1018, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.ExpmapDerivative');
    end

    function varargout = Identity(varargin)
      % IDENTITY usage: Identity() : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1019, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.Identity');
    end

    function varargout = Logmap(varargin)
      % LOGMAP usage: Logmap(Pose2 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(1020, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.Logmap');
    end

    function varargout = LogmapDerivative(varargin)
      % LOGMAPDERIVATIVE usage: LogmapDerivative(Pose2 v) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(1021, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.LogmapDerivative');
    end

    function varargout = adjointMap_(varargin)
      % ADJOINTMAP_ usage: adjointMap_(Vector v) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1022, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.adjointMap_');
    end

    function varargout = adjointTranspose(varargin)
      % ADJOINTTRANSPOSE usage: adjointTranspose(Vector xi, Vector y) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1023, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.adjointTranspose');
    end

    function varargout = adjoint_(varargin)
      % ADJOINT_ usage: adjoint_(Vector xi, Vector y) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1024, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.adjoint_');
    end

    function varargout = wedge(varargin)
      % WEDGE usage: wedge(double vx, double vy, double w) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(1025, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Pose2.wedge');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1026, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Pose2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Pose2.string_deserialize(sobj);
    end
  end
end
