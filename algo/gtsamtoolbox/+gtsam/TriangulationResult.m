%class TriangulationResult, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%TriangulationResult(Point3 p)
%
%-------Methods-------
%behindCamera() : returns bool
%degenerate() : returns bool
%farPoint() : returns bool
%get() : returns Point3
%outlier() : returns bool
%valid() : returns bool
%
%-------Static Methods-------
%BehindCamera() : returns gtsam::TriangulationResult
%Degenerate() : returns gtsam::TriangulationResult
%FarPoint() : returns gtsam::TriangulationResult
%Outlier() : returns gtsam::TriangulationResult
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns TriangulationResult
%
classdef TriangulationResult < handle
  properties
    ptr_gtsamTriangulationResult = 0
  end
  methods
    function obj = TriangulationResult(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1380, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        my_ptr = gtsam_wrapper(1381, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.TriangulationResult constructor');
      end
      obj.ptr_gtsamTriangulationResult = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1382, obj.ptr_gtsamTriangulationResult);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = behindCamera(this, varargin)
      % BEHINDCAMERA usage: behindCamera() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1383, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TriangulationResult.behindCamera');
    end

    function varargout = degenerate(this, varargin)
      % DEGENERATE usage: degenerate() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1384, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TriangulationResult.degenerate');
    end

    function varargout = farPoint(this, varargin)
      % FARPOINT usage: farPoint() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1385, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TriangulationResult.farPoint');
    end

    function varargout = get(this, varargin)
      % GET usage: get() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1386, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TriangulationResult.get');
    end

    function varargout = outlier(this, varargin)
      % OUTLIER usage: outlier() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1387, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TriangulationResult.outlier');
    end

    function varargout = valid(this, varargin)
      % VALID usage: valid() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1388, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TriangulationResult.valid');
    end

  end

  methods(Static = true)
    function varargout = BehindCamera(varargin)
      % BEHINDCAMERA usage: BehindCamera() : returns gtsam.TriangulationResult
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1389, varargin{:});
        return
      end

      error('Arguments do not match any overload of function TriangulationResult.BehindCamera');
    end

    function varargout = Degenerate(varargin)
      % DEGENERATE usage: Degenerate() : returns gtsam.TriangulationResult
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1390, varargin{:});
        return
      end

      error('Arguments do not match any overload of function TriangulationResult.Degenerate');
    end

    function varargout = FarPoint(varargin)
      % FARPOINT usage: FarPoint() : returns gtsam.TriangulationResult
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1391, varargin{:});
        return
      end

      error('Arguments do not match any overload of function TriangulationResult.FarPoint');
    end

    function varargout = Outlier(varargin)
      % OUTLIER usage: Outlier() : returns gtsam.TriangulationResult
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1392, varargin{:});
        return
      end

      error('Arguments do not match any overload of function TriangulationResult.Outlier');
    end

  end
end
