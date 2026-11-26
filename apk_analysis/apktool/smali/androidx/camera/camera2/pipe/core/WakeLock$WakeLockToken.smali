.class final Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/core/Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/core/WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLockToken"
.end annotation


# instance fields
.field private final _released:Lht;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/core/WakeLock;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/WakeLock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->_released:Lht;

    return-void
.end method


# virtual methods
.method public getReleased()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->_released:Lht;

    invoke-virtual {p0}, Lht;->b()Z

    move-result p0

    return p0
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->_released:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/WakeLock;->releaseToken$camera_camera2_pipe()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
