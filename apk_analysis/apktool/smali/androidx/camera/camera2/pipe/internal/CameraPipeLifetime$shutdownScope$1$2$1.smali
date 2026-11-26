.class final Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.internal.CameraPipeLifetime$shutdownScope$1$2$1"
    f = "CameraPipeLifetime.kt"
    l = {
        0x79
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;->this$0:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;->this$0:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;-><init>(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "CXCP"

    const-string v1, "Cancelling CameraPipe root Job..."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;->this$0:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->access$getCameraPipeJob$p(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Lmb4;

    move-result-object p1

    iput v2, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1;->label:I

    invoke-static {p1, p0}, Lqb4;->c(Lmb4;Lpg8;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
