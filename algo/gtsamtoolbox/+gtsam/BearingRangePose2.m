%class BearingRangePose2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BearingRangePose2(Rot2 b, double r)
%
%-------Methods-------
%bearing() : returns gtsam::Rot2
%print(string s) : returns void
%range() : returns double
%
%-------Static Methods-------
%Measure(Pose2 pose, Pose2 point) : returns gtsam::BearingRange<gtsam::Pose2,gtsam::Pose2,gtsam::Rot2,double>
%MeasureBearing(Pose2 pose, Pose2 point) : returns gtsam::Rot2
%MeasureRange(Pose2 pose, Pose2 point) : returns double
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns BearingRangePose2
%
classdef BearingRangePose2 < handle
  properties
    ptr_gtsamBearingRangePose2 = 0
  end
  methods
    function obj = BearingRangePose2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1711, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.Rot2') && isa(varargin{2},'double')
        my_ptr = gtsam_wrapper(1712, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.BearingRangePose2 constructor');
      end
      obj.ptr_gtsamBearingRangePose2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1713, obj.ptr_gtsamBearingRangePose2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = bearing(this, varargin)
      % BEARING usage: bearing() : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1714, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRangePose2.bearing');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1715, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1716, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRangePose2.print');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1717, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRangePose2.range');
    end

  end

  methods(Static = true)
    function varargout = Measure(varargin)
      % MEASURE usage: Measure(Pose2 pose, Pose2 point) : returns gtsam.BearingRangePose2Pose2Rot2double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(1718, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRangePose2.Measure');
    end

    function varargout = MeasureBearing(varargin)
      % MEASUREBEARING usage: MeasureBearing(Pose2 pose, Pose2 point) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(1719, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRangePose2.MeasureBearing');
    end

    function varargout = MeasureRange(varargin)
      % MEASURERANGE usage: MeasureRange(Pose2 pose, Pose2 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(1720, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRangePose2.MeasureRange');
    end

  end
end
