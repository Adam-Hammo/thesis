%class DiscreteConditional, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DiscreteConditional()
%DiscreteConditional(size_t nFrontals, DecisionTreeFactor f)
%DiscreteConditional(DiscreteKey key, string spec)
%DiscreteConditional(DiscreteKey key, DiscreteKeys parents, string spec)
%DiscreteConditional(DiscreteKey key, vector<DiscreteKey> parents, string spec)
%DiscreteConditional(DecisionTreeFactor joint, DecisionTreeFactor marginal)
%DiscreteConditional(DecisionTreeFactor joint, DecisionTreeFactor marginal, Ordering orderedKeys)
%
%-------Methods-------
%choose(DiscreteValues given) : returns gtsam::DecisionTreeFactor
%equals(DiscreteConditional other, double tol) : returns bool
%firstFrontalKey() : returns gtsam::Key
%html(KeyFormatter keyFormatter) : returns string
%html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%likelihood(DiscreteValues frontalValues) : returns gtsam::DecisionTreeFactor
%likelihood(size_t value) : returns gtsam::DecisionTreeFactor
%marginal(Key key) : returns gtsam::DiscreteConditional
%markdown(KeyFormatter keyFormatter) : returns string
%markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%nrFrontals() : returns size_t
%nrParents() : returns size_t
%print(string s, KeyFormatter keyFormatter) : returns void
%printSignature(string s, KeyFormatter formatter) : returns void
%sample(DiscreteValues parentsValues) : returns size_t
%sample(size_t value) : returns size_t
%sample() : returns size_t
%sampleInPlace(DiscreteValues parentsValues) : returns void
%
classdef DiscreteConditional < gtsam.DecisionTreeFactor
  properties
    ptr_gtsamDiscreteConditional = 0
  end
  methods
    function obj = DiscreteConditional(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(610, varargin{2});
        end
        base_ptr = gtsam_wrapper(609, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(611);
      elseif nargin == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.DecisionTreeFactor')
        [ my_ptr, base_ptr ] = gtsam_wrapper(612, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'char')
        [ my_ptr, base_ptr ] = gtsam_wrapper(613, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'gtsam.DiscreteKeys') && isa(varargin{3},'char')
        [ my_ptr, base_ptr ] = gtsam_wrapper(614, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 3 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'std.vectorDiscreteKey') && isa(varargin{3},'char')
        [ my_ptr, base_ptr ] = gtsam_wrapper(615, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'gtsam.DecisionTreeFactor') && isa(varargin{2},'gtsam.DecisionTreeFactor')
        [ my_ptr, base_ptr ] = gtsam_wrapper(616, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'gtsam.DecisionTreeFactor') && isa(varargin{2},'gtsam.DecisionTreeFactor') && isa(varargin{3},'gtsam.Ordering')
        [ my_ptr, base_ptr ] = gtsam_wrapper(617, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.DiscreteConditional constructor');
      end
      obj = obj@gtsam.DecisionTreeFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamDiscreteConditional = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(618, obj.ptr_gtsamDiscreteConditional);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = choose(this, varargin)
      % CHOOSE usage: choose(DiscreteValues given) : returns gtsam.DecisionTreeFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteValues')
        varargout{1} = gtsam_wrapper(619, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.choose');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(DiscreteConditional other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteConditional') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(620, this, varargin{:});
        return
      end
      % EQUALS usage: equals(DiscreteConditional other) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteConditional')
        varargout{1} = gtsam_wrapper(621, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.equals');
    end

    function varargout = firstFrontalKey(this, varargin)
      % FIRSTFRONTALKEY usage: firstFrontalKey() : returns gtsam.Key
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(622, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.firstFrontalKey');
    end

    function varargout = html(this, varargin)
      % HTML usage: html(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(623, this, varargin{:});
        return
      end
      % HTML usage: html() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(624, this, varargin{:});
        return
      end
      % HTML usage: html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(625, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.html');
    end

    function varargout = likelihood(this, varargin)
      % LIKELIHOOD usage: likelihood(DiscreteValues frontalValues) : returns gtsam.DecisionTreeFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteValues')
        varargout{1} = gtsam_wrapper(626, this, varargin{:});
        return
      end
      % LIKELIHOOD usage: likelihood(size_t value) : returns gtsam.DecisionTreeFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(627, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.likelihood');
    end

    function varargout = marginal(this, varargin)
      % MARGINAL usage: marginal(Key key) : returns gtsam.DiscreteConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Key')
        varargout{1} = gtsam_wrapper(628, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.marginal');
    end

    function varargout = markdown(this, varargin)
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(629, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(630, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(631, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.markdown');
    end

    function varargout = nrFrontals(this, varargin)
      % NRFRONTALS usage: nrFrontals() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(632, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.nrFrontals');
    end

    function varargout = nrParents(this, varargin)
      % NRPARENTS usage: nrParents() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(633, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.nrParents');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(634, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(635, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(636, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.print');
    end

    function varargout = printSignature(this, varargin)
      % PRINTSIGNATURE usage: printSignature(string s, KeyFormatter formatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(637, this, varargin{:});
        return
      end
      % PRINTSIGNATURE usage: printSignature(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(638, this, varargin{:});
        return
      end
      % PRINTSIGNATURE usage: printSignature() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(639, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.printSignature');
    end

    function varargout = sample(this, varargin)
      % SAMPLE usage: sample(DiscreteValues parentsValues) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteValues')
        varargout{1} = gtsam_wrapper(640, this, varargin{:});
        return
      end
      % SAMPLE usage: sample(size_t value) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(641, this, varargin{:});
        return
      end
      % SAMPLE usage: sample() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(642, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.sample');
    end

    function varargout = sampleInPlace(this, varargin)
      % SAMPLEINPLACE usage: sampleInPlace(DiscreteValues parentsValues) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteValues')
        gtsam_wrapper(643, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteConditional.sampleInPlace');
    end

  end

  methods(Static = true)
  end
end
