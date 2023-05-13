%class DecisionTreeFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DecisionTreeFactor()
%DecisionTreeFactor(DiscreteKey key, vector<double> spec)
%DecisionTreeFactor(DiscreteKey key, string table)
%DecisionTreeFactor(DiscreteKeys keys, string table)
%DecisionTreeFactor(vector<DiscreteKey> keys, string table)
%DecisionTreeFactor(DiscreteConditional c)
%
%-------Methods-------
%cardinality(Key j) : returns size_t
%dot(KeyFormatter keyFormatter, bool showZero) : returns string
%enumerate() : returns std::vector<std::pair<gtsam::DiscreteValues,double>>
%equals(DecisionTreeFactor other, double tol) : returns bool
%html(KeyFormatter keyFormatter) : returns string
%html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%markdown(KeyFormatter keyFormatter) : returns string
%markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%max(size_t nrFrontals) : returns gtsam::DecisionTreeFactor
%print(string s, KeyFormatter keyFormatter) : returns void
%sum(size_t nrFrontals) : returns gtsam::DecisionTreeFactor
%sum(Ordering keys) : returns gtsam::DecisionTreeFactor
%
classdef DecisionTreeFactor < gtsam.DiscreteFactor
  properties
    ptr_gtsamDecisionTreeFactor = 0
  end
  methods
    function obj = DecisionTreeFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(582, varargin{2});
        end
        base_ptr = gtsam_wrapper(581, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(583);
      elseif nargin == 2 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'std.vectordouble')
        [ my_ptr, base_ptr ] = gtsam_wrapper(584, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'char')
        [ my_ptr, base_ptr ] = gtsam_wrapper(585, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'gtsam.DiscreteKeys') && isa(varargin{2},'char')
        [ my_ptr, base_ptr ] = gtsam_wrapper(586, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'std.vectorDiscreteKey') && isa(varargin{2},'char')
        [ my_ptr, base_ptr ] = gtsam_wrapper(587, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'gtsam.DiscreteConditional')
        [ my_ptr, base_ptr ] = gtsam_wrapper(588, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.DecisionTreeFactor constructor');
      end
      obj = obj@gtsam.DiscreteFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamDecisionTreeFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(589, obj.ptr_gtsamDecisionTreeFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = cardinality(this, varargin)
      % CARDINALITY usage: cardinality(Key j) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Key')
        varargout{1} = gtsam_wrapper(590, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DecisionTreeFactor.cardinality');
    end

    function varargout = dot(this, varargin)
      % DOT usage: dot(KeyFormatter keyFormatter, bool showZero) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'logical')
        varargout{1} = gtsam_wrapper(591, this, varargin{:});
        return
      end
      % DOT usage: dot(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(592, this, varargin{:});
        return
      end
      % DOT usage: dot() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(593, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DecisionTreeFactor.dot');
    end

    function varargout = enumerate(this, varargin)
      % ENUMERATE usage: enumerate() : returns std.vectorpairDiscreteValuesdouble
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(594, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DecisionTreeFactor.enumerate');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(DecisionTreeFactor other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DecisionTreeFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(595, this, varargin{:});
        return
      end
      % EQUALS usage: equals(DecisionTreeFactor other) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DecisionTreeFactor')
        varargout{1} = gtsam_wrapper(596, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DecisionTreeFactor.equals');
    end

    function varargout = html(this, varargin)
      % HTML usage: html(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(597, this, varargin{:});
        return
      end
      % HTML usage: html() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(598, this, varargin{:});
        return
      end
      % HTML usage: html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(599, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DecisionTreeFactor.html');
    end

    function varargout = markdown(this, varargin)
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(600, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(601, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(602, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DecisionTreeFactor.markdown');
    end

    function varargout = max(this, varargin)
      % MAX usage: max(size_t nrFrontals) : returns gtsam.DecisionTreeFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(603, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DecisionTreeFactor.max');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(604, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(605, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(606, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DecisionTreeFactor.print');
    end

    function varargout = sum(this, varargin)
      % SUM usage: sum(size_t nrFrontals) : returns gtsam.DecisionTreeFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(607, this, varargin{:});
        return
      end
      % SUM usage: sum(Ordering keys) : returns gtsam.DecisionTreeFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(608, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DecisionTreeFactor.sum');
    end

  end

  methods(Static = true)
  end
end
