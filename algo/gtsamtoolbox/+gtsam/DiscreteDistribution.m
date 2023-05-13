%class DiscreteDistribution, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DiscreteDistribution()
%DiscreteDistribution(DecisionTreeFactor f)
%DiscreteDistribution(DiscreteKey key, string spec)
%DiscreteDistribution(DiscreteKey key, vector<double> spec)
%
%-------Methods-------
%argmax() : returns size_t
%pmf() : returns std::vector<double>
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef DiscreteDistribution < gtsam.DiscreteConditional
  properties
    ptr_gtsamDiscreteDistribution = 0
  end
  methods
    function obj = DiscreteDistribution(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(645, varargin{2});
        end
        base_ptr = gtsam_wrapper(644, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(646);
      elseif nargin == 1 && isa(varargin{1},'gtsam.DecisionTreeFactor')
        [ my_ptr, base_ptr ] = gtsam_wrapper(647, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'char')
        [ my_ptr, base_ptr ] = gtsam_wrapper(648, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'std.vectordouble')
        [ my_ptr, base_ptr ] = gtsam_wrapper(649, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.DiscreteDistribution constructor');
      end
      obj = obj@gtsam.DiscreteConditional(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamDiscreteDistribution = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(650, obj.ptr_gtsamDiscreteDistribution);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = argmax(this, varargin)
      % ARGMAX usage: argmax() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(651, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteDistribution.argmax');
    end

    function varargout = pmf(this, varargin)
      % PMF usage: pmf() : returns std.vectordouble
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(652, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteDistribution.pmf');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(653, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(654, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(655, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteDistribution.print');
    end

  end

  methods(Static = true)
  end
end
