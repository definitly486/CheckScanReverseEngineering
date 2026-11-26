.class public final Landroidx/camera/camera2/pipe/core/MutexToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/core/Token;


# instance fields
.field private final _released:Lht;

.field private final mutex:Lyg5;


# direct methods
.method public constructor <init>(Lyg5;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->mutex:Lyg5;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->_released:Lht;

    return-void
.end method


# virtual methods
.method public getReleased()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->_released:Lht;

    invoke-virtual {p0}, Lht;->b()Z

    move-result p0

    return p0
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->_released:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->mutex:Lyg5;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lyg5;->unlock(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
