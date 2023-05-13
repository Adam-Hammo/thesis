%class TranslationRecovery, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%TranslationRecovery(LevenbergMarquardtParams lmParams)
%TranslationRecovery()
%
%-------Methods-------
%addPrior(BinaryMeasurementsUnit3 relativeTranslations, double scale, BinaryMeasurementsPoint3 betweenTranslations, NonlinearFactorGraph graph, SharedNoiseModel priorNoiseModel) : returns void
%addPrior(BinaryMeasurementsUnit3 relativeTranslations, double scale, BinaryMeasurementsPoint3 betweenTranslations, NonlinearFactorGraph graph) : returns void
%buildGraph(BinaryMeasurementsUnit3 relativeTranslations) : returns gtsam::NonlinearFactorGraph
%run(BinaryMeasurementsUnit3 relativeTranslations, double scale, BinaryMeasurementsPoint3 betweenTranslations, Values initialValues) : returns gtsam::Values
%run(BinaryMeasurementsUnit3 relativeTranslations, double scale, BinaryMeasurementsPoint3 betweenTranslations) : returns gtsam::Values
%run(BinaryMeasurementsUnit3 relativeTranslations, double scale) : returns gtsam::Values
%run(BinaryMeasurementsUnit3 relativeTranslations) : returns gtsam::Values
%
classdef TranslationRecovery < handle
  properties
    ptr_gtsamTranslationRecovery = 0
  end
  methods
    function obj = TranslationRecovery(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(4078, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.LevenbergMarquardtParams')
        my_ptr = gtsam_wrapper(4079, varargin{1});
      elseif nargin == 0
        my_ptr = gtsam_wrapper(4080);
      else
        error('Arguments do not match any overload of gtsam.TranslationRecovery constructor');
      end
      obj.ptr_gtsamTranslationRecovery = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(4081, obj.ptr_gtsamTranslationRecovery);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = addPrior(this, varargin)
      % ADDPRIOR usage: addPrior(BinaryMeasurementsUnit3 relativeTranslations, double scale, BinaryMeasurementsPoint3 betweenTranslations, NonlinearFactorGraph graph, SharedNoiseModel priorNoiseModel) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 5 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3') && isa(varargin{2},'double') && isa(varargin{3},'gtsam.BinaryMeasurementsPoint3') && isa(varargin{4},'gtsam.NonlinearFactorGraph') && isa(varargin{5},'gtsam.SharedNoiseModel')
        gtsam_wrapper(4082, this, varargin{:});
        return
      end
      % ADDPRIOR usage: addPrior(BinaryMeasurementsUnit3 relativeTranslations, double scale, BinaryMeasurementsPoint3 betweenTranslations, NonlinearFactorGraph graph) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3') && isa(varargin{2},'double') && isa(varargin{3},'gtsam.BinaryMeasurementsPoint3') && isa(varargin{4},'gtsam.NonlinearFactorGraph')
        gtsam_wrapper(4083, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TranslationRecovery.addPrior');
    end

    function varargout = buildGraph(this, varargin)
      % BUILDGRAPH usage: buildGraph(BinaryMeasurementsUnit3 relativeTranslations) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3')
        varargout{1} = gtsam_wrapper(4084, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TranslationRecovery.buildGraph');
    end

    function varargout = run(this, varargin)
      % RUN usage: run(BinaryMeasurementsUnit3 relativeTranslations, double scale, BinaryMeasurementsPoint3 betweenTranslations, Values initialValues) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3') && isa(varargin{2},'double') && isa(varargin{3},'gtsam.BinaryMeasurementsPoint3') && isa(varargin{4},'gtsam.Values')
        varargout{1} = gtsam_wrapper(4085, this, varargin{:});
        return
      end
      % RUN usage: run(BinaryMeasurementsUnit3 relativeTranslations, double scale, BinaryMeasurementsPoint3 betweenTranslations) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3') && isa(varargin{2},'double') && isa(varargin{3},'gtsam.BinaryMeasurementsPoint3')
        varargout{1} = gtsam_wrapper(4086, this, varargin{:});
        return
      end
      % RUN usage: run(BinaryMeasurementsUnit3 relativeTranslations, double scale) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(4087, this, varargin{:});
        return
      end
      % RUN usage: run(BinaryMeasurementsUnit3 relativeTranslations) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.BinaryMeasurementsUnit3')
        varargout{1} = gtsam_wrapper(4088, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.TranslationRecovery.run');
    end

  end

  methods(Static = true)
  end
end
