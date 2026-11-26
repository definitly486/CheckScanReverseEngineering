.class public final Landroidx/camera/camera2/pipe/internal/ListenerState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isCompletedInvoked:Lht;

.field private final isFrameInfoInvoked:Lht;

.field private final isImagesInvoked:Lht;

.field private final isStarted:Lht;

.field private final listener:Landroidx/camera/camera2/pipe/Frame$Listener;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/Frame$Listener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->listener:Landroidx/camera/camera2/pipe/Frame$Listener;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->isStarted:Lht;

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->isImagesInvoked:Lht;

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->isFrameInfoInvoked:Lht;

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->isCompletedInvoked:Lht;

    return-void
.end method


# virtual methods
.method public final getListener()Landroidx/camera/camera2/pipe/Frame$Listener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->listener:Landroidx/camera/camera2/pipe/Frame$Listener;

    return-object p0
.end method

.method public final invokeOnFrameComplete-cfZT-5Y(JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnImagesAvailable-cfZT-5Y(JJ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnFrameInfoAvailable-cfZT-5Y(JJ)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->isCompletedInvoked:Lht;

    invoke-virtual {p1}, Lht;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->listener:Landroidx/camera/camera2/pipe/Frame$Listener;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/Frame$Listener;->onFrameComplete()V

    :cond_0
    return-void
.end method

.method public final invokeOnFrameInfoAvailable-cfZT-5Y(JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnStarted-cfZT-5Y(JJ)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->isFrameInfoInvoked:Lht;

    invoke-virtual {p1}, Lht;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->listener:Landroidx/camera/camera2/pipe/Frame$Listener;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/Frame$Listener;->onFrameInfoAvailable()V

    :cond_0
    return-void
.end method

.method public final invokeOnImageAvailable-aKI5c8E(I)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->listener:Landroidx/camera/camera2/pipe/Frame$Listener;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/Frame$Listener;->onImageAvailable-aKI5c8E(I)V

    return-void
.end method

.method public final invokeOnImagesAvailable-cfZT-5Y(JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnStarted-cfZT-5Y(JJ)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->isImagesInvoked:Lht;

    invoke-virtual {p1}, Lht;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->listener:Landroidx/camera/camera2/pipe/Frame$Listener;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/Frame$Listener;->onImagesAvailable()V

    :cond_0
    return-void
.end method

.method public final invokeOnStarted-cfZT-5Y(JJ)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->isStarted:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/ListenerState;->listener:Landroidx/camera/camera2/pipe/Frame$Listener;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Frame$Listener;->onFrameStarted-cfZT-5Y(JJ)V

    :cond_0
    return-void
.end method
