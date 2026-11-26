.class final Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.FlashControl$applyScreenFlash$2"
    f = "FlashControl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/FlashControl;->applyScreenFlash(JLe02;)Ljava/lang/Object;
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
.field final synthetic $screenFlashListener:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

.field final synthetic $timeoutMillis:J

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/FlashControl;


# direct methods
.method public constructor <init>(JLandroidx/camera/camera2/impl/FlashControl;Landroidx/camera/core/ImageCapture$ScreenFlashListener;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/camera/camera2/impl/FlashControl;",
            "Landroidx/camera/core/ImageCapture$ScreenFlashListener;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$timeoutMillis:J

    iput-object p3, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->this$0:Landroidx/camera/camera2/impl/FlashControl;

    iput-object p4, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$screenFlashListener:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
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

    new-instance v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;

    iget-wide v1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$timeoutMillis:J

    iget-object v3, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->this$0:Landroidx/camera/camera2/impl/FlashControl;

    iget-object v4, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$screenFlashListener:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;-><init>(JLandroidx/camera/camera2/impl/FlashControl;Landroidx/camera/core/ImageCapture$ScreenFlashListener;Le02;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$timeoutMillis:J

    add-long/2addr v0, v2

    iget-object p1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->this$0:Landroidx/camera/camera2/impl/FlashControl;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/FlashControl;->getScreenFlash()Landroidx/camera/core/ImageCapture$ScreenFlash;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$screenFlashListener:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    invoke-interface {p1, v0, v1, p0}, Landroidx/camera/core/ImageCapture$ScreenFlash;->apply(JLandroidx/camera/core/ImageCapture$ScreenFlashListener;)V

    :cond_0
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "applyScreenFlash: ScreenFlash.apply() invoked, expirationTimeMillis = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
