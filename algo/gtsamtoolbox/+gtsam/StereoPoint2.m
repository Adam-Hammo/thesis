%class StereoPoint2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%StereoPoint2()
%StereoPoint2(double uL, double uR, double v)
%
%-------Methods-------
%between(StereoPoint2 p2) : returns gtsam::StereoPoint2
%compose(StereoPoint2 p2) : returns gtsam::StereoPoint2
%equals(StereoPoint2 point, double tol) : returns bool
%inverse() : returns gtsam::StereoPoint2
%localCoordinates(StereoPoint2 p) : returns Vector
%print(string s) : returns void
%retract(Vector v) : returns gtsam::StereoPoint2
%uL() : returns double
%uR() : returns double
%v() : returns double
%vector() : returns Vector
%
%-------Static Methods-------
%Expmap(Vector v) : returns gtsam::StereoPoint2
%Identity() : returns gtsam::StereoPoint2
%Logmap(StereoPoint2 p) : returns Vector
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns StereoPoint2
%
classdef StereoPoint2 < handle
  properties
    ptr_gtsamStereoPoint2 = 0
  end
  methods
    function obj = StereoPoint2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(814, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(815);
      elseif nargin == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double')
        my_ptr = gtsam_wrapper(816, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.StereoPoint2 constructor');
      end
      obj.ptr_gtsamStereoPoint2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(817, obj.ptr_gtsamStereoPoint2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = between(this, varargin)
      % BETWEEN usage: between(StereoPoint2 p2) : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.StereoPoint2')
        varargout{1} = gtsam_wrapper(818, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.between');
    end

    function varargout = compose(this, varargin)
      % COMPOSE usage: compose(StereoPoint2 p2) : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.StereoPoint2')
        varargout{1} = gtsam_wrapper(819, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.compose');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(StereoPoint2 point, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.StereoPoint2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(820, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.equals');
    end

    function varargout = inverse(this, varargin)
      % INVERSE usage: inverse() : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(821, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.inverse');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(StereoPoint2 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.StereoPoint2')
        varargout{1} = gtsam_wrapper(822, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.localCoordinates');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(823, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(824, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(825, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(826, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.StereoPoint2.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = uL(this, varargin)
      % UL usage: uL() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(827, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.uL');
    end

    function varargout = uR(this, varargin)
      % UR usage: uR() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(828, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.uR');
    end

    function varargout = v(this, varargin)
      % V usage: v() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(829, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.v');
    end

    function varargout = vector(this, varargin)
      % VECTOR usage: vector() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(830, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoPoint2.vector');
    end

  end

  methods(Static = true)
    function varargout = Expmap(varargin)
      % EXPMAP usage: Expmap(Vector v) : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(831, varargin{:});
        return
      end

      error('Arguments do not match any overload of function StereoPoint2.Expmap');
    end

    function varargout = Identity(varargin)
      % IDENTITY usage: Identity() : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(832, varargin{:});
        return
      end

      error('Arguments do not match any overload of function StereoPoint2.Identity');
    end

    function varargout = Logmap(varargin)
      % LOGMAP usage: Logmap(StereoPoint2 p) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.StereoPoint2')
        varargout{1} = gtsam_wrapper(833, varargin{:});
        return
      end

      error('Arguments do not match any overload of function StereoPoint2.Logmap');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(834, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.StereoPoint2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.StereoPoint2.string_deserialize(sobj);
    end
  end
end
