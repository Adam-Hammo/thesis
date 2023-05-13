%class DiscreteBayesTree, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DiscreteBayesTree()
%
%-------Methods-------
%dot(KeyFormatter keyFormatter) : returns string
%empty() : returns bool
%equals(DiscreteBayesTree other, double tol) : returns bool
%html(KeyFormatter keyFormatter) : returns string
%html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%markdown(KeyFormatter keyFormatter) : returns string
%markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%print(string s, KeyFormatter keyFormatter) : returns void
%saveGraph(string s, KeyFormatter keyFormatter) : returns void
%size() : returns size_t
%
classdef DiscreteBayesTree < handle
  properties
    ptr_gtsamDiscreteBayesTree = 0
  end
  methods
    function obj = DiscreteBayesTree(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(696, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(697);
      else
        error('Arguments do not match any overload of gtsam.DiscreteBayesTree constructor');
      end
      obj.ptr_gtsamDiscreteBayesTree = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(698, obj.ptr_gtsamDiscreteBayesTree);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = dot(this, varargin)
      % DOT usage: dot(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(699, this, varargin{:});
        return
      end
      % DOT usage: dot() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(700, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTree.dot');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(701, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTree.empty');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(DiscreteBayesTree other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteBayesTree') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(702, this, varargin{:});
        return
      end
      % EQUALS usage: equals(DiscreteBayesTree other) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteBayesTree')
        varargout{1} = gtsam_wrapper(703, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTree.equals');
    end

    function varargout = html(this, varargin)
      % HTML usage: html(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(704, this, varargin{:});
        return
      end
      % HTML usage: html() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(705, this, varargin{:});
        return
      end
      % HTML usage: html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(706, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTree.html');
    end

    function varargout = markdown(this, varargin)
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(707, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(708, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(709, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTree.markdown');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(710, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(711, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(712, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTree.print');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(713, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(714, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTree.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(715, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTree.size');
    end

  end

  methods(Static = true)
  end
end
