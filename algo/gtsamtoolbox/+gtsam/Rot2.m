%class Rot2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Rot2()
%Rot2(double theta)
%
%-------Methods-------
%between(Rot2 p2) : returns gtsam::Rot2
%c() : returns double
%compose(Rot2 p2) : returns gtsam::Rot2
%degrees() : returns double
%equals(Rot2 rot, double tol) : returns bool
%inverse() : returns gtsam::Rot2
%localCoordinates(Rot2 p) : returns Vector
%logmap(Rot2 p) : returns Vector
%matrix() : returns Matrix
%print(string s) : returns void
%retract(Vector v) : returns gtsam::Rot2
%rotate(Point2 point) : returns Point2
%s() : returns double
%theta() : returns double
%unrotate(Point2 point) : returns Point2
%
%-------Static Methods-------
%Expmap(Vector v) : returns gtsam::Rot2
%Identity() : returns gtsam::Rot2
%Logmap(Rot2 p) : returns Vector
%atan2(double y, double x) : returns gtsam::Rot2
%fromAngle(double theta) : returns gtsam::Rot2
%fromCosSin(double c, double s) : returns gtsam::Rot2
%fromDegrees(double theta) : returns gtsam::Rot2
%relativeBearing(Point2 d) : returns gtsam::Rot2
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Rot2
%
classdef Rot2 < handle
  properties
    ptr_gtsamRot2 = 0
  end
  methods
    function obj = Rot2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(842, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(843);
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(844, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Rot2 constructor');
      end
      obj.ptr_gtsamRot2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(845, obj.ptr_gtsamRot2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = between(this, varargin)
      % BETWEEN usage: between(Rot2 p2) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot2')
        varargout{1} = gtsam_wrapper(846, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.between');
    end

    function varargout = c(this, varargin)
      % C usage: c() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(847, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.c');
    end

    function varargout = compose(this, varargin)
      % COMPOSE usage: compose(Rot2 p2) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot2')
        varargout{1} = gtsam_wrapper(848, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.compose');
    end

    function varargout = degrees(this, varargin)
      % DEGREES usage: degrees() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(849, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.degrees');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Rot2 rot, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Rot2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(850, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.equals');
    end

    function varargout = inverse(this, varargin)
      % INVERSE usage: inverse() : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(851, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.inverse');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Rot2 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot2')
        varargout{1} = gtsam_wrapper(852, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.localCoordinates');
    end

    function varargout = logmap(this, varargin)
      % LOGMAP usage: logmap(Rot2 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot2')
        varargout{1} = gtsam_wrapper(853, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.logmap');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(854, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(855, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(856, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(857, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.retract');
    end

    function varargout = rotate(this, varargin)
      % ROTATE usage: rotate(Point2 point) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(858, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.rotate');
    end

    function varargout = s(this, varargin)
      % S usage: s() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(859, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.s');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(860, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Rot2.string_serialize');
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
        varargout{1} = gtsam_wrapper(861, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.theta');
    end

    function varargout = unrotate(this, varargin)
      % UNROTATE usage: unrotate(Point2 point) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(862, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot2.unrotate');
    end

  end

  methods(Static = true)
    function varargout = Expmap(varargin)
      % EXPMAP usage: Expmap(Vector v) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(863, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot2.Expmap');
    end

    function varargout = Identity(varargin)
      % IDENTITY usage: Identity() : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(864, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot2.Identity');
    end

    function varargout = Logmap(varargin)
      % LOGMAP usage: Logmap(Rot2 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot2')
        varargout{1} = gtsam_wrapper(865, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot2.Logmap');
    end

    function varargout = atan2(varargin)
      % ATAN2 usage: atan2(double y, double x) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(866, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot2.atan2');
    end

    function varargout = fromAngle(varargin)
      % FROMANGLE usage: fromAngle(double theta) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(867, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot2.fromAngle');
    end

    function varargout = fromCosSin(varargin)
      % FROMCOSSIN usage: fromCosSin(double c, double s) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(868, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot2.fromCosSin');
    end

    function varargout = fromDegrees(varargin)
      % FROMDEGREES usage: fromDegrees(double theta) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(869, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot2.fromDegrees');
    end

    function varargout = relativeBearing(varargin)
      % RELATIVEBEARING usage: relativeBearing(Point2 d) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(870, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Rot2.relativeBearing');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(871, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Rot2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Rot2.string_deserialize(sobj);
    end
  end
end
