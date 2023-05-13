%class SfmData, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SfmData()
%
%-------Methods-------
%addCamera(SfmCamera cam) : returns void
%addTrack(SfmTrack t) : returns void
%camera(size_t idx) : returns gtsam::PinholeCamera<gtsam::Cal3Bundler>
%cameraList() : returns std::vector<gtsam::PinholeCamera<gtsam::Cal3Bundler>>
%equals(SfmData expected, double tol) : returns bool
%generalSfmFactors(SharedNoiseModel model) : returns gtsam::NonlinearFactorGraph
%numberCameras() : returns size_t
%numberTracks() : returns size_t
%sfmFactorGraph(SharedNoiseModel model, size_t fixedCamera, size_t fixedPoint) : returns gtsam::NonlinearFactorGraph
%track(size_t idx) : returns gtsam::SfmTrack
%trackList() : returns std::vector<gtsam::SfmTrack>
%
%-------Static Methods-------
%FromBalFile(string filename) : returns gtsam::SfmData
%FromBundlerFile(string filename) : returns gtsam::SfmData
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns SfmData
%
classdef SfmData < handle
  properties
    ptr_gtsamSfmData = 0
  end
  methods
    function obj = SfmData(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3922, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3923);
      else
        error('Arguments do not match any overload of gtsam.SfmData constructor');
      end
      obj.ptr_gtsamSfmData = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3924, obj.ptr_gtsamSfmData);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = addCamera(this, varargin)
      % ADDCAMERA usage: addCamera(SfmCamera cam) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SfmCamera')
        gtsam_wrapper(3925, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.addCamera');
    end

    function varargout = addTrack(this, varargin)
      % ADDTRACK usage: addTrack(SfmTrack t) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SfmTrack')
        gtsam_wrapper(3926, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.addTrack');
    end

    function varargout = camera(this, varargin)
      % CAMERA usage: camera(size_t idx) : returns gtsam.PinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3927, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.camera');
    end

    function varargout = cameraList(this, varargin)
      % CAMERALIST usage: cameraList() : returns std.vectorPinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3928, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.cameraList');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SfmData expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SfmData') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3929, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.equals');
    end

    function varargout = generalSfmFactors(this, varargin)
      % GENERALSFMFACTORS usage: generalSfmFactors(SharedNoiseModel model) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(3930, this, varargin{:});
        return
      end
      % GENERALSFMFACTORS usage: generalSfmFactors() : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3931, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.generalSfmFactors');
    end

    function varargout = numberCameras(this, varargin)
      % NUMBERCAMERAS usage: numberCameras() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3932, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.numberCameras');
    end

    function varargout = numberTracks(this, varargin)
      % NUMBERTRACKS usage: numberTracks() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3933, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.numberTracks');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3934, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SfmData.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = sfmFactorGraph(this, varargin)
      % SFMFACTORGRAPH usage: sfmFactorGraph(SharedNoiseModel model, size_t fixedCamera, size_t fixedPoint) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.SharedNoiseModel') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric')
        varargout{1} = gtsam_wrapper(3935, this, varargin{:});
        return
      end
      % SFMFACTORGRAPH usage: sfmFactorGraph(SharedNoiseModel model, size_t fixedCamera) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SharedNoiseModel') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(3936, this, varargin{:});
        return
      end
      % SFMFACTORGRAPH usage: sfmFactorGraph(SharedNoiseModel model) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(3937, this, varargin{:});
        return
      end
      % SFMFACTORGRAPH usage: sfmFactorGraph() : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3938, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.sfmFactorGraph');
    end

    function varargout = track(this, varargin)
      % TRACK usage: track(size_t idx) : returns gtsam.SfmTrack
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3939, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.track');
    end

    function varargout = trackList(this, varargin)
      % TRACKLIST usage: trackList() : returns std.vectorSfmTrack
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3940, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SfmData.trackList');
    end

  end

  methods(Static = true)
    function varargout = FromBalFile(varargin)
      % FROMBALFILE usage: FromBalFile(string filename) : returns gtsam.SfmData
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        varargout{1} = gtsam_wrapper(3941, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SfmData.FromBalFile');
    end

    function varargout = FromBundlerFile(varargin)
      % FROMBUNDLERFILE usage: FromBundlerFile(string filename) : returns gtsam.SfmData
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        varargout{1} = gtsam_wrapper(3942, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SfmData.FromBundlerFile');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.SfmData
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3943, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SfmData.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.SfmData.string_deserialize(sobj);
    end
  end
end
