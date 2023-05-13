%class BearingRangePose3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BearingRangePose3(Unit3 b, double r)
%
%-------Methods-------
%bearing() : returns gtsam::Unit3
%print(string s) : returns void
%range() : returns double
%
%-------Static Methods-------
%Measure(Pose3 pose, Pose3 point) : returns gtsam::BearingRange<gtsam::Pose3,gtsam::Pose3,gtsam::Unit3,double>
%MeasureBearing(Pose3 pose, Pose3 point) : returns gtsam::Unit3
%MeasureRange(Pose3 pose, Pose3 point) : returns double
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns BearingRangePose3
%
classdef BearingRangePose3 < handle
  properties
    ptr_gtsamBearingRangePose3 = 0
  end
  methods
    function obj = BearingRangePose3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1731, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.Unit3') && isa(varargin{2},'double')
        my_ptr = gtsam_wrapper(1732, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.BearingRangePose3 constructor');
      end
      obj.ptr_gtsamBearingRangePose3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1733, obj.ptr_gtsamBearingRangePose3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = bearing(this, varargin)
      % BEARING usage: bearing() : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1734, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRangePose3.bearing');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1735, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1736, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRangePose3.print');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1737, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRangePose3.range');
    end

  end

  methods(Static = true)
    function varargout = Measure(varargin)
      % MEASURE usage: Measure(Pose3 pose, Pose3 point) : returns gtsam.BearingRangePose3Pose3Unit3double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1738, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRangePose3.Measure');
    end

    function varargout = MeasureBearing(varargin)
      % MEASUREBEARING usage: MeasureBearing(Pose3 pose, Pose3 point) : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1739, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRangePose3.MeasureBearing');
    end

    function varargout = MeasureRange(varargin)
      % MEASURERANGE usage: MeasureRange(Pose3 pose, Pose3 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1740, varargin{:});
        return
      end

      error('Arguments do not match any overload of function BearingRangePose3.MeasureRange');
    end

  end
end
