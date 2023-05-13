%class GaussianDensity, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussianDensity(Key key, Vector d, Matrix R, Diagonal sigmas)
%
%-------Methods-------
%covariance() : returns Matrix
%equals(GaussianDensity cg, double tol) : returns bool
%mean() : returns Vector
%print(string s, KeyFormatter keyFormatter) : returns void
%
%-------Static Methods-------
%FromMeanAndStddev(Key key, Vector mean, double sigma) : returns gtsam::GaussianDensity
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns GaussianDensity
%
classdef GaussianDensity < gtsam.GaussianConditional
  properties
    ptr_gtsamGaussianDensity = 0
  end
  methods
    function obj = GaussianDensity(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2126, varargin{2});
        end
        base_ptr = gtsam_wrapper(2125, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double') && isa(varargin{4},'gtsam.noiseModel.Diagonal')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2127, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.GaussianDensity constructor');
      end
      obj = obj@gtsam.GaussianConditional(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGaussianDensity = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2128, obj.ptr_gtsamGaussianDensity);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = covariance(this, varargin)
      % COVARIANCE usage: covariance() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2129, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianDensity.covariance');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianDensity cg, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianDensity') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2130, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianDensity.equals');
    end

    function varargout = mean(this, varargin)
      % MEAN usage: mean() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2131, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianDensity.mean');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2132, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2133, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2134, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianDensity.print');
    end

  end

  methods(Static = true)
    function varargout = FromMeanAndStddev(varargin)
      % FROMMEANANDSTDDEV usage: FromMeanAndStddev(Key key, Vector mean, double sigma) : returns gtsam.GaussianDensity
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(2135, varargin{:});
        return
      end

      error('Arguments do not match any overload of function GaussianDensity.FromMeanAndStddev');
    end

  end
end
