%class BearingRange3D, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BearingRange3D(Unit3 b, double r)
%
%-------Methods-------
%bearing() : returns gtsam::Unit3
%print(string s) : returns void
%range() : returns double
%
%-------Static Methods-------
%Measure(Pose3 pose, Point3 point) : returns gtsam::BearingRange<gtsam::Pose3,Point3,gtsam::Unit3,double>
%MeasureBearing(Pose3 pose, Point3 point) : returns gtsam::Unit3
%MeasureRange(Pose3 pose, Point3 point) : returns double
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns BearingRange3D
%
classdef BearingRange3D < handle
  properties
    ptr_gtsamBearingRange3D = 0
  end
  methods
    function obj = BearingRange3D(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1721, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.Unit3') && isa(varargin{2},'double')
        my_ptr = gtsam_wrapper(1722, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.BearingRange3D constructor');
      end
      obj.ptr_gtsamBearingRange3D = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1723, obj.ptr_gtsamBearingRange3D);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = bearing(this, varargin)
      % BEARING usage: bearing() : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1724, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRange3D.bearing');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1725, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1726, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRange3D.print');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1727, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRange3D.range');
    end

  end

  methods(Static = true)
    function varargout = Measure(varargin)
      % MEASURE usage: Measure(Pose3 pose, Point3 point) : returns gtsam.BearingRangePose3Point3Unit3double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1728, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRange3D.Measure');
    end

    function varargout = MeasureBearing(varargin)
      % MEASUREBEARING usage: MeasureBearing(Pose3 pose, Point3 point) : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1729, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRange3D.MeasureBearing');
    end

    function varargout = MeasureRange(varargin)
      % MEASURERANGE usage: MeasureRange(Pose3 pose, Point3 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(1730, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRange3D.MeasureRange');
    end

  end
end
