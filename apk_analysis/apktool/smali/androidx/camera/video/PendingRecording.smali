.class public final Landroidx/camera/video/PendingRecording;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private eventListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;"
        }
    .end annotation
.end field

.field private isAudioEnabled:Z

.field private isAudioInitialMuted:Z

.field private isPersistent:Z

.field private listenerExecutor:Ljava/util/concurrent/Executor;

.field private final outputOptions:Landroidx/camera/video/OutputOptions;

.field private final recorder:Landroidx/camera/video/Recorder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/video/Recorder;Landroidx/camera/video/OutputOptions;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/video/PendingRecording;->recorder:Landroidx/camera/video/Recorder;

    iput-object p3, p0, Landroidx/camera/video/PendingRecording;->outputOptions:Landroidx/camera/video/OutputOptions;

    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/video/PendingRecording;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic withAudioEnabled$default(Landroidx/camera/video/PendingRecording;ZILjava/lang/Object;)Landroidx/camera/video/PendingRecording;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/video/PendingRecording;->withAudioEnabled(Z)Landroidx/camera/video/PendingRecording;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asPersistentRecording()Landroidx/camera/video/PendingRecording;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/camera/video/PendingRecording;->isPersistent:Z

    return-object p0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/PendingRecording;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getEventListener()Landroidx/core/util/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/PendingRecording;->eventListener:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public final getListenerExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/PendingRecording;->listenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getOutputOptions()Landroidx/camera/video/OutputOptions;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/PendingRecording;->outputOptions:Landroidx/camera/video/OutputOptions;

    return-object p0
.end method

.method public final getRecorder()Landroidx/camera/video/Recorder;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/PendingRecording;->recorder:Landroidx/camera/video/Recorder;

    return-object p0
.end method

.method public final isAudioEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/video/PendingRecording;->isAudioEnabled:Z

    return p0
.end method

.method public final isAudioInitialMuted()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/video/PendingRecording;->isAudioInitialMuted:Z

    return p0
.end method

.method public final isPersistent()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/video/PendingRecording;->isPersistent:Z

    return p0
.end method

.method public final start(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;)",
            "Landroidx/camera/video/Recording;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    const-string v0, "Listener Executor can\'t be null."

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "Event listener can\'t be null"

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Landroidx/camera/video/PendingRecording;->listenerExecutor:Ljava/util/concurrent/Executor;

    .line 40
    iput-object p2, p0, Landroidx/camera/video/PendingRecording;->eventListener:Landroidx/core/util/Consumer;

    .line 41
    iget-object p1, p0, Landroidx/camera/video/PendingRecording;->recorder:Landroidx/camera/video/Recorder;

    invoke-virtual {p1, p0}, Landroidx/camera/video/Recorder;->start(Landroidx/camera/video/PendingRecording;)Landroidx/camera/video/Recording;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final start(Landroidx/core/util/Consumer;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/video/Recording;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object p2

    sget-object v0, Lg02$a;->b:Lg02$a;

    invoke-interface {p2, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p2

    instance-of v0, p2, Lr22;

    if-eqz v0, :cond_0

    check-cast p2, Lr22;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Laq5;->a(Lr22;)Ljava/util/concurrent/Executor;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {p0, p2, p1}, Landroidx/camera/video/PendingRecording;->start(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;

    move-result-object p0

    return-object p0
.end method

.method public final withAudioEnabled()Landroidx/camera/video/PendingRecording;
    .locals 3

    .line 36
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/camera/video/PendingRecording;->withAudioEnabled$default(Landroidx/camera/video/PendingRecording;ZILjava/lang/Object;)Landroidx/camera/video/PendingRecording;

    move-result-object p0

    return-object p0
.end method

.method public final withAudioEnabled(Z)Landroidx/camera/video/PendingRecording;
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->applicationContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->recorder:Landroidx/camera/video/Recorder;

    invoke-virtual {v0}, Landroidx/camera/video/Recorder;->isAudioSupported()Z

    move-result v0

    const-string v1, "The Recorder this recording is associated to doesn\'t support audio."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/camera/video/PendingRecording;->isAudioEnabled:Z

    iput-boolean p1, p0, Landroidx/camera/video/PendingRecording;->isAudioInitialMuted:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Attempted to enable audio for recording but application does not have RECORD_AUDIO permission granted."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
