.class final Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.UseCaseSurfaceManager$setupAsync$1$4"
    f = "UseCaseSurfaceManager.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupAsync(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Ljava/util/Map;J)Lmk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $e:Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;

.field final synthetic $sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            "Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->$e:Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->$e:Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;

    invoke-direct {p1, v0, p0, p2}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;-><init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;->$e:Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;

    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->reportSurfaceInvalid(Landroidx/camera/core/impl/DeferrableSurface;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
