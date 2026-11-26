.class public final Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/viewfinder/core/ViewfinderSurfaceSession;


# instance fields
.field private final closeGuard:Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;

.field private final closed:Lht;

.field private final onClose:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;

.field private final surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->surface:Landroid/view/Surface;

    iput-object p2, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->request:Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;

    iput-object p3, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->onClose:Lll3;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->closed:Lht;

    sget-object p1, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;->Companion:Landroidx/camera/viewfinder/core/impl/CloseGuardHelper$Companion;

    invoke-virtual {p1}, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper$Companion;->create()Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;

    move-result-object p1

    const-string p2, "close"

    invoke-virtual {p1, p2}, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;->open(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->closeGuard:Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->closeGuard:Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;

    invoke-virtual {v0}, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;->close()V

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->closed:Lht;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lht;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    sget-object v1, Ljy8$a;->a:Ljy8$a;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->onClose:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final finalize()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->closeGuard:Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;

    invoke-virtual {v0}, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;->warnIfOpen()V

    invoke-virtual {p0}, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->close()V

    return-void
.end method

.method public getRequest()Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;
    .locals 0

    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->request:Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/ViewfinderSurfaceSessionImpl;->surface:Landroid/view/Surface;

    return-object p0
.end method
