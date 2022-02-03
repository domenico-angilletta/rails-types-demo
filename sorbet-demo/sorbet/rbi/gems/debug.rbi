# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/debug/all/debug.rbi
#
# debug-1.4.0

module DEBUGGER__
  def self.add_catch_breakpoint(pat); end
  def self.add_line_breakpoint(file, line, **kw); end
  def self.capture_frames(arg0); end
  def self.check_dir_authority(path); end
  def self.commands; end
  def self.create_method_added_tracker; end
  def self.create_unix_domain_socket_name(base_dir = nil); end
  def self.create_unix_domain_socket_name_prefix(base_dir = nil); end
  def self.frame_depth; end
  def self.help; end
  def self.helps; end
  def self.initialize_session(ui); end
  def self.load_rc; end
  def self.open(host: nil, port: nil, sock_path: nil, sock_dir: nil, nonstop: nil, **kw); end
  def self.open_tcp(port:, host: nil, nonstop: nil, **kw); end
  def self.open_unix(sock_path: nil, sock_dir: nil, nonstop: nil, **kw); end
  def self.parse_help; end
  def self.require_location; end
  def self.setup_initial_suspend; end
  def self.start(nonstop: nil, **kw); end
  def self.unix_domain_socket_dir; end
  def self.unix_domain_socket_homedir; end
  def self.unix_domain_socket_tmpdir; end
end
module ObjectSpace
  def self.count_iseq; end
  def self.each_iseq; end
end
class DEBUGGER__::FrameInfo < Struct
  def _callee; end
  def _callee=(_); end
  def _local_variables; end
  def _local_variables=(_); end
  def binding; end
  def binding=(_); end
  def block_identifier; end
  def c_identifier; end
  def callee; end
  def class; end
  def class=(_); end
  def dupped_binding; end
  def dupped_binding=(_); end
  def eval_binding; end
  def file_lines; end
  def frame_depth; end
  def frame_depth=(_); end
  def frame_type; end
  def get_singleton_class(obj); end
  def has_raised_exception; end
  def has_raised_exception=(_); end
  def has_return_value; end
  def has_return_value=(_); end
  def iseq; end
  def iseq=(_); end
  def klass_sig; end
  def local_variable_get(var); end
  def local_variables; end
  def location; end
  def location=(_); end
  def location_str; end
  def method_identifier; end
  def name; end
  def other_identifier; end
  def parameters_info(argc); end
  def path; end
  def pretty_path; end
  def raised_exception; end
  def raised_exception=(_); end
  def realpath; end
  def return_str; end
  def return_value; end
  def return_value=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.keyword_init?; end
  def self.members; end
  def self.new(*arg0); end
  def self; end
  def self=(_); end
  def show_line; end
  def show_line=(_); end
end
class DEBUGGER__::Config
  def [](key); end
  def []=(key, val); end
  def append_config(key, val); end
  def config; end
  def disable_sigdump(old_sig); end
  def enable_sigdump(sig); end
  def if_updated(old_conf, new_conf, key); end
  def initialize(argv); end
  def inspect; end
  def parse_config_value(name, valstr); end
  def self.config; end
  def self.config_to_env_hash(config); end
  def self.parse_argv(argv); end
  def self.parse_config_value(name, valstr); end
  def set_config(**kw); end
  def setup_sigdump(old_sig = nil, sig = nil); end
  def update(conf); end
end
module IRB
end
module IRB::Color
end
module DEBUGGER__::Color
  def color_pp(obj, width); end
  def colored_inspect(obj, width: nil, no_color: nil); end
  def colorize(str, color); end
  def colorize_blue(str); end
  def colorize_code(code); end
  def colorize_cyan(str); end
  def colorize_dim(str); end
  def colorize_magenta(str); end
  def irb_colorize(str, color); end
  def with_inspection_error_guard; end
end
module DEBUGGER__::SkipPathHelper
  def skip_location?(loc); end
  def skip_path?(path); end
end
class DEBUGGER__::ThreadClient
  def <<(req); end
  def assemble_arguments(args); end
  def class_method_map(classes); end
  def close; end
  def current_frame; end
  def deactivate; end
  def default_frame_formatter(frame); end
  def event!(ev, *args); end
  def frame_eval(src, re_raise: nil); end
  def frame_str(i, frame: nil); end
  def generate_info; end
  def id; end
  def initialize(id, q_evt, q_cmd, thr = nil); end
  def inspect; end
  def instance_eval_for_cmethod(frame_self, src); end
  def location; end
  def make_breakpoint(args); end
  def management?; end
  def mark_as_management; end
  def name; end
  def on_breakpoint(tp, bp); end
  def on_init(name); end
  def on_load(iseq, eval_src); end
  def on_pause; end
  def on_trace(trace_id, msg); end
  def on_trap(sig); end
  def outline_method(o, klass, obj); end
  def puts(str = nil); end
  def puts_variable_info(label, obj, pat); end
  def recorder; end
  def replay_suspend; end
  def running?; end
  def self.current; end
  def set_mode(mode); end
  def show_by_editor(path = nil); end
  def show_consts(pat, only_self: nil); end
  def show_frame(i = nil); end
  def show_frames(max = nil, pattern = nil); end
  def show_globals(pat); end
  def show_ivars(pat); end
  def show_locals(pat); end
  def show_outline(expr); end
  def show_src(frame_index: nil, update_line: nil, max_lines: nil, start_line: nil, end_line: nil, dir: nil); end
  def special_local_variables(frame); end
  def step_tp(iter, events = nil); end
  def suspend(event, tp = nil, bp: nil, sig: nil, postmortem_frames: nil, replay_frames: nil, postmortem_exc: nil); end
  def thread; end
  def to_s; end
  def truncate(string, width:); end
  def wait_next_action; end
  def wait_next_action_; end
  def wait_reply(event_arg); end
  def waiting?; end
  include DEBUGGER__::Color
  include DEBUGGER__::SkipPathHelper
end
class DEBUGGER__::ThreadClient::SuspendReplay < Exception
end
class DEBUGGER__::ThreadClient::Recorder
  def backup_frames; end
  def backup_frames=(arg0); end
  def can_step_back?; end
  def current_frame; end
  def current_position; end
  def disable; end
  def enable; end
  def enabled?; end
  def index; end
  def initialize; end
  def log; end
  def log_index; end
  def replaying?; end
  def step_back; end
  def step_forward; end
  def step_reset; end
  include DEBUGGER__::SkipPathHelper
end
class DEBUGGER__::ThreadClient::Output
  def col_widths(strs, cols:); end
  def dump(name, strs); end
  def fits_on_line?(strs, cols:, offset: nil); end
  def initialize(output); end
  def screen_width; end
  include DEBUGGER__::Color
end
class DEBUGGER__::SourceRepository
  def add(iseq, src); end
  def add_iseq(iseq, src); end
  def add_path(path); end
  def all_iseq(iseq, rs = nil); end
  def get(iseq); end
  def get_colored(iseq); end
  def get_si(iseq); end
  def initialize; end
  include DEBUGGER__::Color
end
class DEBUGGER__::SourceRepository::SrcInfo < Struct
  def colored; end
  def colored=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.keyword_init?; end
  def self.members; end
  def self.new(*arg0); end
  def src; end
  def src=(_); end
end
class DEBUGGER__::Breakpoint
  def delete; end
  def deleted?; end
  def description; end
  def disable; end
  def duplicable?; end
  def enable; end
  def enabled?; end
  def generate_label(name); end
  def initialize(do_enable = nil); end
  def key; end
  def oneshot?; end
  def safe_eval(b, expr); end
  def setup; end
  def skip_path?(path); end
  def suspend; end
  def to_s; end
  include DEBUGGER__::Color
  include DEBUGGER__::SkipPathHelper
end
class DEBUGGER__::ISeqBreakpoint < DEBUGGER__::Breakpoint
  def enable; end
  def initialize(iseq, events, oneshot: nil); end
  def setup; end
end
class DEBUGGER__::LineBreakpoint < DEBUGGER__::Breakpoint
  def activate(iseq, event, line); end
  def activate_exact(iseq, events, line); end
  def duplicable?; end
  def enable; end
  def initialize(path, line, cond: nil, oneshot: nil, hook_call: nil, command: nil); end
  def inspect; end
  def iseq; end
  def line; end
  def path; end
  def setup; end
  def to_s; end
  def try_activate; end
end
class DEBUGGER__::LineBreakpoint::NearestISeq < Struct
  def events; end
  def events=(_); end
  def iseq; end
  def iseq=(_); end
  def line; end
  def line=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.keyword_init?; end
  def self.members; end
  def self.new(*arg0); end
end
class DEBUGGER__::CatchBreakpoint < DEBUGGER__::Breakpoint
  def description; end
  def initialize(pat, cond: nil, command: nil, path: nil); end
  def last_exc; end
  def setup; end
  def to_s; end
end
class DEBUGGER__::CheckBreakpoint < DEBUGGER__::Breakpoint
  def initialize(expr, path); end
  def setup; end
  def to_s; end
end
class DEBUGGER__::WatchIVarBreakpoint < DEBUGGER__::Breakpoint
  def initialize(ivar, object, current, cond: nil, command: nil, path: nil); end
  def setup; end
  def to_s; end
  def watch_eval(tp); end
end
class DEBUGGER__::MethodBreakpoint < DEBUGGER__::Breakpoint
  def enable; end
  def eval_class_name; end
  def initialize(b, klass_name, op, method_name, cond: nil, command: nil, path: nil); end
  def method; end
  def override(klass); end
  def search_method; end
  def setup; end
  def sig; end
  def sig_method_name; end
  def to_s; end
  def try_enable(added: nil); end
end
class DEBUGGER__::Tracer
  def colorize(str, color); end
  def description; end
  def disable; end
  def enable; end
  def header(depth); end
  def initialize(ui, pattern: nil, into: nil); end
  def key; end
  def minfo(tp); end
  def out(tp, msg = nil, depth = nil); end
  def puts(msg); end
  def skip?(tp); end
  def skip_with_pattern?(tp); end
  def to_s; end
  def type; end
  include DEBUGGER__::Color
  include DEBUGGER__::SkipPathHelper
end
class DEBUGGER__::LineTracer < DEBUGGER__::Tracer
  def setup; end
end
class DEBUGGER__::CallTracer < DEBUGGER__::Tracer
  def setup; end
  def skip_with_pattern?(tp); end
end
class DEBUGGER__::ExceptionTracer < DEBUGGER__::Tracer
  def setup; end
  def skip_with_pattern?(tp); end
end
class DEBUGGER__::ObjectTracer < DEBUGGER__::Tracer
  def colorized_obj_inspect; end
  def description; end
  def initialize(ui, obj_id, obj_inspect, **kw); end
  def setup; end
end
class RubyVM::InstructionSequence
  def argc; end
  def first_line; end
  def last_line; end
  def locals; end
  def traceable_lines_norec(lines); end
  def traceable_lines_rec(lines); end
  def type; end
end
class DEBUGGER__::PresetCommand < Struct
  def auto_continue; end
  def auto_continue=(_); end
  def commands; end
  def commands=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.keyword_init?; end
  def self.members; end
  def self.new(*arg0); end
  def source; end
  def source=(_); end
end
class DEBUGGER__::PostmortemError < RuntimeError
end
class DEBUGGER__::Session
  def activate(on_fork: nil); end
  def active?; end
  def add_bp(bp); end
  def add_catch_breakpoint(pat); end
  def add_check_breakpoint(expr, path); end
  def add_iseq_breakpoint(iseq, **kw); end
  def add_line_breakpoint(file, line, **kw); end
  def add_preset_commands(name, cmds, kick: nil, continue: nil); end
  def add_tracer(tracer); end
  def after_fork_parent; end
  def ask(msg, default = nil); end
  def ask_thread_client(th); end
  def before_fork(need_lock = nil); end
  def bp_index(specific_bp_key); end
  def break_at?(file, line); end
  def cancel_auto_continue; end
  def capture_exception_frames(*exclude_path); end
  def check_postmortem; end
  def clean_bps; end
  def config_command(arg); end
  def config_set(key, val, append: nil); end
  def config_show(key); end
  def create_thread_client(th); end
  def deactivate; end
  def delete_bp(arg = nil); end
  def enter_postmortem_session(exc); end
  def enter_subsession; end
  def get_thread_client(th = nil); end
  def in_subsession?; end
  def initialize(ui); end
  def inspect; end
  def intercept_trap_sigint(flag, &b); end
  def intercept_trap_sigint?; end
  def intercept_trap_sigint_end; end
  def intercept_trap_sigint_start(prev); end
  def intercepted_sigint_cmd; end
  def iterate_bps; end
  def leave_subsession(type); end
  def managed_thread_clients; end
  def method_added(tp); end
  def on_load(iseq, src); end
  def on_thread_begin(th); end
  def parse_break(arg); end
  def pop_event; end
  def postmortem=(is_enable); end
  def process_command(line); end
  def process_event(evt); end
  def process_group; end
  def process_info; end
  def prompt; end
  def rehash_bps; end
  def repl_add_breakpoint(arg); end
  def repl_add_catch_breakpoint(arg); end
  def repl_add_watch_breakpoint(arg); end
  def repl_open_setup; end
  def repl_open_tcp(host, port, **kw); end
  def repl_open_unix; end
  def repl_open_vscode; end
  def reset_ui(ui); end
  def resolve_path(file); end
  def restart_all_threads; end
  def running_thread_clients_count; end
  def save_int_trap(cmd); end
  def session_server_main; end
  def setup_threads; end
  def show_bps(specific_bp = nil); end
  def show_help(arg); end
  def source(iseq); end
  def step_command(type, arg); end
  def stop_all_threads; end
  def switch_thread(n); end
  def thread_list; end
  def thread_stopper; end
  def update_thread_list; end
  def wait_command; end
  def wait_command_loop(tc); end
  def waiting_thread_clients; end
  def width; end
end
class DEBUGGER__::ProcessGroup
  def after_fork; end
  def initialize; end
  def lock; end
  def locked?; end
  def multi?; end
  def multi_process!; end
  def sync; end
  def trylock; end
  def unlock; end
end
module DEBUGGER__::MultiProcessGroup
  def after_fork(child: nil); end
  def info(msg); end
  def lock; end
  def lock_level_down; end
  def lock_level_up; end
  def locked?; end
  def multi_process!; end
  def sync(&b); end
  def trylock; end
  def unlock; end
end
class DEBUGGER__::UI_Base
  def event(type, *args); end
end
class Module
end
module DEBUGGER__::ForkInterceptor
end
module DEBUGGER__::TrapInterceptor
end
module Kernel
end
module Process
end
module Signal
end
class Binding
end
class DEBUGGER__::Console
  include DEBUGGER__::Color
end
class Reline::LineEditor
end
class DEBUGGER__::UI_LocalConsole < DEBUGGER__::UI_Base
end
