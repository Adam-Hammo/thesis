%class DiscreteBayesNet, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DiscreteBayesNet()
%
%-------Methods-------
%add(DiscreteConditional s) : returns void
%add(DiscreteKey key, string spec) : returns void
%add(DiscreteKey key, DiscreteKeys parents, string spec) : returns void
%add(DiscreteKey key, vector<DiscreteKey> parents, string spec) : returns void
%at(size_t i) : returns gtsam::DiscreteConditional
%dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
%empty() : returns bool
%equals(DiscreteBayesNet other, double tol) : returns bool
%html(KeyFormatter keyFormatter) : returns string
%html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%keys() : returns gtsam::KeySet
%markdown(KeyFormatter keyFormatter) : returns string
%markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%print(string s, KeyFormatter keyFormatter) : returns void
%sample() : returns gtsam::DiscreteValues
%sample(DiscreteValues given) : returns gtsam::DiscreteValues
%saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
%size() : returns size_t
%
classdef DiscreteBayesNet < handle
  properties
    ptr_gtsamDiscreteBayesNet = 0
  end
  methods
    function obj = DiscreteBayesNet(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(656, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(657);
      else
        error('Arguments do not match any overload of gtsam.DiscreteBayesNet constructor');
      end
      obj.ptr_gtsamDiscreteBayesNet = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(658, obj.ptr_gtsamDiscreteBayesNet);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = add(this, varargin)
      % ADD usage: add(DiscreteConditional s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteConditional')
        gtsam_wrapper(659, this, varargin{:});
        return
      end
      % ADD usage: add(DiscreteKey key, string spec) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'char')
        gtsam_wrapper(660, this, varargin{:});
        return
      end
      % ADD usage: add(DiscreteKey key, DiscreteKeys parents, string spec) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'gtsam.DiscreteKeys') && isa(varargin{3},'char')
        gtsam_wrapper(661, this, varargin{:});
        return
      end
      % ADD usage: add(DiscreteKey key, vector<DiscreteKey> parents, string spec) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'std.vectorDiscreteKey') && isa(varargin{3},'char')
        gtsam_wrapper(662, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.add');
    end

    function varargout = at(this, varargin)
      % AT usage: at(size_t i) : returns gtsam.DiscreteConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(663, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.at');
    end

    function varargout = dot(this, varargin)
      % DOT usage: dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'gtsam.DotWriter')
        varargout{1} = gtsam_wrapper(664, this, varargin{:});
        return
      end
      % DOT usage: dot(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(665, this, varargin{:});
        return
      end
      % DOT usage: dot() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(666, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.dot');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(667, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.empty');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(DiscreteBayesNet other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteBayesNet') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(668, this, varargin{:});
        return
      end
      % EQUALS usage: equals(DiscreteBayesNet other) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteBayesNet')
        varargout{1} = gtsam_wrapper(669, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.equals');
    end

    function varargout = html(this, varargin)
      % HTML usage: html(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(670, this, varargin{:});
        return
      end
      % HTML usage: html() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(671, this, varargin{:});
        return
      end
      % HTML usage: html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(672, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.html');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(673, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.keys');
    end

    function varargout = markdown(this, varargin)
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(674, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(675, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(676, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.markdown');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(677, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(678, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(679, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.print');
    end

    function varargout = sample(this, varargin)
      % SAMPLE usage: sample() : returns gtsam.DiscreteValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(680, this, varargin{:});
        return
      end
      % SAMPLE usage: sample(DiscreteValues given) : returns gtsam.DiscreteValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteValues')
        varargout{1} = gtsam_wrapper(681, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.sample');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter') && isa(varargin{3},'gtsam.DotWriter')
        gtsam_wrapper(682, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(683, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(684, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(685, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesNet.size');
    end

  end

  methods(Static = true)
  end
end
