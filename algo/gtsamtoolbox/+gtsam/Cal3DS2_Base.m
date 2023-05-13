%class Cal3DS2_Base, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Cal3DS2_Base()
%
%-------Methods-------
%K() : returns Matrix
%calibrate(Point2 p) : returns Point2
%calibrate(Point2 p, Ref<MatrixXd> Dcal, Ref<MatrixXd> Dp) : returns Point2
%fx() : returns double
%fy() : returns double
%k() : returns Vector
%k1() : returns double
%k2() : returns double
%print(string s) : returns void
%px() : returns double
%py() : returns double
%skew() : returns double
%uncalibrate(Point2 p) : returns Point2
%uncalibrate(Point2 p, Ref<MatrixXd> Dcal, Ref<MatrixXd> Dp) : returns Point2
%vector() : returns Vector
%
classdef Cal3DS2_Base < handle
  properties
    ptr_gtsamCal3DS2_Base = 0
  end
  methods
    function obj = Cal3DS2_Base(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1171, varargin{2});
        end
        gtsam_wrapper(1170, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1172);
      else
        error('Arguments do not match any overload of gtsam.Cal3DS2_Base constructor');
      end
      obj.ptr_gtsamCal3DS2_Base = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1173, obj.ptr_gtsamCal3DS2_Base);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = K(this, varargin)
      % K usage: K() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1174, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.K');
    end

    function varargout = calibrate(this, varargin)
      % CALIBRATE usage: calibrate(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1175, this, varargin{:});
        return
      end
      % CALIBRATE usage: calibrate(Point2 p, Ref<MatrixXd> Dcal, Ref<MatrixXd> Dp) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1176, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.calibrate');
    end

    function varargout = fx(this, varargin)
      % FX usage: fx() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1177, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.fx');
    end

    function varargout = fy(this, varargin)
      % FY usage: fy() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1178, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.fy');
    end

    function varargout = k(this, varargin)
      % K usage: k() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1179, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.k');
    end

    function varargout = k1(this, varargin)
      % K1 usage: k1() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1180, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.k1');
    end

    function varargout = k2(this, varargin)
      % K2 usage: k2() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1181, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.k2');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1182, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1183, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.print');
    end

    function varargout = px(this, varargin)
      % PX usage: px() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1184, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.px');
    end

    function varargout = py(this, varargin)
      % PY usage: py() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1185, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.py');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1186, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = skew(this, varargin)
      % SKEW usage: skew() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1187, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.skew');
    end

    function varargout = uncalibrate(this, varargin)
      % UNCALIBRATE usage: uncalibrate(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1188, this, varargin{:});
        return
      end
      % UNCALIBRATE usage: uncalibrate(Point2 p, Ref<MatrixXd> Dcal, Ref<MatrixXd> Dp) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1189, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.uncalibrate');
    end

    function varargout = vector(this, varargin)
      % VECTOR usage: vector() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1190, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.vector');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Cal3DS2_Base
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1191, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3DS2_Base.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Cal3DS2_Base.string_deserialize(sobj);
    end
  end
end
