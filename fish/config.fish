if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr --add .. 'cd ..'
end
export PATH="$HOME/.local/bin:$HOME/go/bin:$PATH"

# CUDA paths
set -gx PATH /opt/cuda/bin $PATH
set -gx LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH

# Added by LM Studio CLI tool (lms)
set -gx PATH $PATH /home/arpola/.lmstudio/bin

# Ollama: allow multiple models loaded concurrently
set -gx OLLAMA_MAX_LOADED_MODELS 2
