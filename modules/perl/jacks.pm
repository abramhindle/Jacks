# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.4
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package jacks;
use base qw(Exporter);
use base qw(DynaLoader);
package jacksc;
bootstrap jacks;
package jacks;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package jacks;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package jacks;


############# Class : jacks::JsPortBuffer ##############

package jacks::JsPortBuffer;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( jacks );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        jacksc::delete_JsPortBuffer($self);
        delete $OWNER{$self};
    }
}

*getf = *jacksc::JsPortBuffer_getf;
*setf = *jacksc::JsPortBuffer_setf;
*length = *jacksc::JsPortBuffer_length;
*toHexString = *jacksc::JsPortBuffer_toHexString;
sub new {
    my $pkg = shift;
    my $self = jacksc::new_JsPortBuffer(@_);
    bless $self, $pkg if defined($self);
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : jacks::JsPort ##############

package jacks::JsPort;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( jacks );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        jacksc::delete_JsPort($self);
        delete $OWNER{$self};
    }
}

*getBuffer = *jacksc::JsPort_getBuffer;
*connect = *jacksc::JsPort_connect;
sub new {
    my $pkg = shift;
    my $self = jacksc::new_JsPort(@_);
    bless $self, $pkg if defined($self);
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : jacks::JsEvent ##############

package jacks::JsEvent;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( jacks );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        jacksc::delete_JsEvent($self);
        delete $OWNER{$self};
    }
}

*getType = *jacksc::JsEvent_getType;
*getData = *jacksc::JsEvent_getData;
*complete = *jacksc::JsEvent_complete;
*getSessionEventType = *jacksc::JsEvent_getSessionEventType;
*getSessionDir = *jacksc::JsEvent_getSessionDir;
*setSessionDir = *jacksc::JsEvent_setSessionDir;
*getClientUuid = *jacksc::JsEvent_getClientUuid;
*setClientUuid = *jacksc::JsEvent_setClientUuid;
*getCommandLine = *jacksc::JsEvent_getCommandLine;
*setCommandLine = *jacksc::JsEvent_setCommandLine;
*getSessionEventFlags = *jacksc::JsEvent_getSessionEventFlags;
*setSessionEventFlags = *jacksc::JsEvent_setSessionEventFlags;
sub new {
    my $pkg = shift;
    my $self = jacksc::new_JsEvent(@_);
    bless $self, $pkg if defined($self);
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : jacks::JsClient ##############

package jacks::JsClient;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( jacks );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = jacksc::new_JsClient(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        jacksc::delete_JsClient($self);
        delete $OWNER{$self};
    }
}

*getPortByType = *jacksc::JsClient_getPortByType;
*getPortByName = *jacksc::JsClient_getPortByName;
*registerPort = *jacksc::JsClient_registerPort;
*getEvent = *jacksc::JsClient_getEvent;
*getSampleRate = *jacksc::JsClient_getSampleRate;
*activate = *jacksc::JsClient_activate;
*getName = *jacksc::JsClient_getName;
*getTransportState = *jacksc::JsClient_getTransportState;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package jacks;

*PROCESS = *jacksc::PROCESS;
*SESSION = *jacksc::SESSION;
*ERR = *jacksc::ERR;
*SAMPLE_RATE_CHANGE = *jacksc::SAMPLE_RATE_CHANGE;
*SHUTDOWN = *jacksc::SHUTDOWN;
*JackTransportStopped = *jacksc::JackTransportStopped;
*JackTransportRolling = *jacksc::JackTransportRolling;
*JackTransportLooping = *jacksc::JackTransportLooping;
*JackTransportStarting = *jacksc::JackTransportStarting;
*JackPortIsInput = *jacksc::JackPortIsInput;
*JackPortIsOutput = *jacksc::JackPortIsOutput;
*JackPortIsPhysical = *jacksc::JackPortIsPhysical;
*JackPortCanMonitor = *jacksc::JackPortCanMonitor;
*JackPortIsTerminal = *jacksc::JackPortIsTerminal;
*JackNullOption = *jacksc::JackNullOption;
*JackNoStartServer = *jacksc::JackNoStartServer;
*JackUseExactName = *jacksc::JackUseExactName;
*JackServerName = *jacksc::JackServerName;
*JackLoadName = *jacksc::JackLoadName;
*JackLoadInit = *jacksc::JackLoadInit;
*JackSessionID = *jacksc::JackSessionID;
*JackSessionSave = *jacksc::JackSessionSave;
*JackSessionSaveAndQuit = *jacksc::JackSessionSaveAndQuit;
*JackSessionSaveTemplate = *jacksc::JackSessionSaveTemplate;
*JackSessionSaveError = *jacksc::JackSessionSaveError;
*JackSessionNeedTerminal = *jacksc::JackSessionNeedTerminal;
1;