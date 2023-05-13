%class Cal3Bundler, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Cal3Bundler()
%Cal3Bundler(double fx, double k1, double k2, double u0, double v0)
%Cal3Bundler(double fx, double k1, double k2, double u0, double v0, double tol)
%
%-------Methods-------
%K() : returns Matrix
%calibrate(Point2 p) : returns Point2
%calibrate(Point2 p, Ref<MatrixXd> Dcal, Ref<MatrixXd> Dp) : returns Point2
%dim() : returns size_t
%equals(Cal3Bundler rhs, double tol) : returns bool
%fx() : returns double
%fy() : returns double
%k() : returns Vector
%k1() : returns double
%k2() : returns double
%localCoordinates(Cal3Bundler c) : returns Vector
%print(string s) : returns void
%px() : returns double
%py() : returns double
%retract(Vector v) : returns gtsam::Cal3Bundler
%uncalibrate(Point2 p) : returns Point2
%uncalibrate(Point2 p, Ref<MatrixXd> Dcal, Ref<MatrixXd> Dp) : returns Point2
%vector() : returns Vector
%
%-------Static Methods-------
%Dim() : returns size_t
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Cal3Bundler
%
classdef Cal3Bundler < handle
  properties
    ptr_gtsamCal3Bundler = 0
  end
  methods
    function obj = Cal3Bundler(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1275, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1276);
      elseif nargin == 5 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double')
        my_ptr = gtsam_wrapper(1277, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 6 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double')
        my_ptr = gtsam_wrapper(1278, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      else
        error('Arguments do not match any overload of gtsam.Cal3Bundler constructor');
      end
      obj.ptr_gtsamCal3Bundler = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1279, obj.ptr_gtsamCal3Bundler);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = K(this, varargin)
      % K usage: K() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1280, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.K');
    end

    function varargout = calibrate(this, varargin)
      % CALIBRATE usage: calibrate(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1281, this, varargin{:});
        return
      end
      % CALIBRATE usage: calibrate(Point2 p, Ref<MatrixXd> Dcal, Ref<MatrixXd> Dp) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1282, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.calibrate');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1283, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Cal3Bundler rhs, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Cal3Bundler') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1284, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.equals');
    end

    function varargout = fx(this, varargin)
      % FX usage: fx() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1285, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.fx');
    end

    function varargout = fy(this, varargin)
      % FY usage: fy() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1286, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.fy');
    end

    function varargout = k(this, varargin)
      % K usage: k() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1287, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.k');
    end

    function varargout = k1(this, varargin)
      % K1 usage: k1() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1288, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.k1');
    end

    function varargout = k2(this, varargin)
      % K2 usage: k2() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1289, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.k2');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Cal3Bundler c) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Cal3Bundler')
        varargout{1} = gtsam_wrapper(1290, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.localCoordinates');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1291, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1292, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.print');
    end

    function varargout = px(this, varargin)
      % PX usage: px() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1293, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.px');
    end

    function varargout = py(this, varargin)
      % PY usage: py() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1294, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.py');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.Cal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1295, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1296, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3Bundler.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = uncalibrate(this, varargin)
      % UNCALIBRATE usage: uncalibrate(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1297, this, varargin{:});
        return
      end
      % UNCALIBRATE usage: uncalibrate(Point2 p, Ref<MatrixXd> Dcal, Ref<MatrixXd> Dp) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1298, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.uncalibrate');
    end

    function varargout = vector(this, varargin)
      % VECTOR usage: vector() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1299, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Bundler.vector');
    end

  end

  methods(Static = true)
    function varargout = Dim(varargin)
      % DIM usage: Dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1300, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Cal3Bundler.Dim');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Cal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1301, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3Bundler.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Cal3Bundler.string_deserialize(sobj);
    end
  end
end
