%class Cal3DS2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Cal3DS2()
%Cal3DS2(double fx, double fy, double s, double u0, double v0, double k1, double k2)
%Cal3DS2(double fx, double fy, double s, double u0, double v0, double k1, double k2, double p1, double p2)
%Cal3DS2(Vector v)
%
%-------Methods-------
%dim() : returns size_t
%equals(Cal3DS2 rhs, double tol) : returns bool
%localCoordinates(Cal3DS2 c) : returns Vector
%retract(Vector v) : returns gtsam::Cal3DS2
%
%-------Static Methods-------
%Dim() : returns size_t
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Cal3DS2
%
classdef Cal3DS2 < gtsam.Cal3DS2_Base
  properties
    ptr_gtsamCal3DS2 = 0
  end
  methods
    function obj = Cal3DS2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1193, varargin{2});
        end
        base_ptr = gtsam_wrapper(1192, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1194);
      elseif nargin == 7 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1195, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7});
      elseif nargin == 9 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double') && isa(varargin{8},'double') && isa(varargin{9},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1196, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8}, varargin{9});
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        [ my_ptr, base_ptr ] = gtsam_wrapper(1197, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Cal3DS2 constructor');
      end
      obj = obj@gtsam.Cal3DS2_Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamCal3DS2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1198, obj.ptr_gtsamCal3DS2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1199, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Cal3DS2 rhs, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Cal3DS2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1200, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Cal3DS2 c) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Cal3DS2')
        varargout{1} = gtsam_wrapper(1201, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2.localCoordinates');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.Cal3DS2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1202, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1203, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3DS2.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = Dim(varargin)
      % DIM usage: Dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1204, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Cal3DS2.Dim');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Cal3DS2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1205, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3DS2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Cal3DS2.string_deserialize(sobj);
    end
  end
end
