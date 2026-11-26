.class final Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.framegraph.FrameGraphImpl$useSessionIn$1"
    f = "FrameGraphImpl.kt"
    l = {
        0xad
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->useSessionIn(Ly22;Ldm3;)Lmk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Ly22;",
        "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
        "Le02<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $action:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Ly22;",
            "Landroidx/camera/camera2/pipe/FrameGraph$Session;",
            "Le02<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;Ldm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;",
            "Ldm3<",
            "-",
            "Ly22;",
            "-",
            "Landroidx/camera/camera2/pipe/FrameGraph$Session;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->$action:Ldm3;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Ly22;

    check-cast p2, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->invoke(Ly22;Landroidx/camera/camera2/pipe/CameraGraph$Session;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Landroidx/camera/camera2/pipe/CameraGraph$Session;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->$action:Ldm3;

    invoke-direct {v0, v1, p0, p3}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;-><init>(Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;Ldm3;Le02;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;

    invoke-static {v3, v1}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->access$createSession(Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Session;)Landroidx/camera/camera2/pipe/FrameGraph$Session;

    move-result-object v1

    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->$action:Ldm3;

    :try_start_1
    iput-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;->label:I

    invoke-interface {v3, p1, v1, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_1
    move-exception p1

    move-object p0, v1

    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {p0, p1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method
