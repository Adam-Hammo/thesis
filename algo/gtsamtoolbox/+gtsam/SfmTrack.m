%class SfmTrack, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SfmTrack()
%SfmTrack(Point3 pt)
%
%-------Methods-------
%addMeasurement(size_t idx, Point2 m) : returns void
%equals(SfmTrack expected, double tol) : returns bool
%measurement(size_t idx) : returns pair< size_t, Point2 >
%numberMeasurements() : returns size_t
%point3() : returns Point3
%siftIndex(size_t idx) : returns pair< size_t, size_t >
%
classdef SfmTrack < handle
  properties
    ptr_gtsamSfmTrack = 0
  end
  methods
    function obj = SfmTrack(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3910, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3911);
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        my_ptr = gtsam_wrapper(3912, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.SfmTrack constructor');
      end
      obj.ptr_gtsamSfmTrack = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3913, obj.ptr_gtsamSfmTrack);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = addMeasurement(this, varargin)
      % ADDMEASUREMENT usage: addMeasurement(size_t idx, Point2 m) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(3914, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.addMeasurement');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SfmTrack expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SfmTrack') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3915, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.equals');
    end

    function varargout = measurement(this, varargin)
      % MEASUREMENT usage: measurement(size_t idx) : returns pair< size_t, Point2 >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3916, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.measurement');
    end

    function varargout = numberMeasurements(this, varargin)
      % NUMBERMEASUREMENTS usage: numberMeasurements() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3917, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.numberMeasurements');
    end

    function varargout = point3(this, varargin)
      % POINT3 usage: point3() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3918, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.point3');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3919, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SfmTrack.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = siftIndex(this, varargin)
      % SIFTINDEX usage: siftIndex(size_t idx) : returns pair< size_t, size_t >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3920, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmTrack.siftIndex');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.SfmTrack
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3921, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SfmTrack.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.SfmTrack.string_deserialize(sobj);
    end
  end
end
