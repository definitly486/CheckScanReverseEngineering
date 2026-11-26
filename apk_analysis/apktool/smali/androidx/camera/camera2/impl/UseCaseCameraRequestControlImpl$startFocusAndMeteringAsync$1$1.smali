.class final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1"
    f = "UseCaseCameraRequestControl.kt"
    l = {
        0x2ed,
        0x1db
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->startFocusAndMeteringAsync-NxRnBj4(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;J)Lmk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lnl3<",
        "Le02<",
        "-",
        "Lmk2<",
        "+",
        "Landroidx/camera/camera2/pipe/Result3A;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $aeLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

.field final synthetic $aeRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $afLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

.field final synthetic $afRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $afTriggerStartAeMode:Landroidx/camera/camera2/pipe/AeMode;

.field final synthetic $awbLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

.field final synthetic $awbRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $timeLimitNs:J

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;JLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "J",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$aeRegions:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$afRegions:Ljava/util/List;

    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$awbRegions:Ljava/util/List;

    iput-object p5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$aeLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$afLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iput-object p7, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$awbLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iput-object p8, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$afTriggerStartAeMode:Landroidx/camera/camera2/pipe/AeMode;

    iput-wide p9, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$timeLimitNs:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p11}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$aeRegions:Ljava/util/List;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$afRegions:Ljava/util/List;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$awbRegions:Ljava/util/List;

    iget-object v5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$aeLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v6, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$afLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v7, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$awbLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v8, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$afTriggerStartAeMode:Landroidx/camera/camera2/pipe/AeMode;

    iget-wide v9, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$timeLimitNs:J

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;JLe02;)V

    return-object v0
.end method

.method public final invoke(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->label:I

    const-string v23, "CXCP"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    move-object v0, v5

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    move-object v1, v0

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-wide v6, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->J$0:J

    iget-object v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$6:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/AeMode;

    iget-object v4, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$5:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v8, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$4:Ljava/lang/Object;

    check-cast v8, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v9, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$3:Ljava/lang/Object;

    check-cast v9, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v10, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v10

    move-object v10, v8

    move-object/from16 v8, v16

    move-wide/from16 v16, v6

    move-object v7, v11

    move-object v6, v12

    move-object v12, v2

    move-object v11, v4

    move-object/from16 v2, p1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static/range {v23 .. v23}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v6, "UseCaseCameraRequestControlImpl#startFocusAndMeteringAsync"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iget-object v12, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$aeRegions:Ljava/util/List;

    iget-object v11, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$afRegions:Ljava/util/List;

    iget-object v10, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$awbRegions:Ljava/util/List;

    iget-object v9, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$aeLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v8, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$afLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v6, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$awbLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v7, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$afTriggerStartAeMode:Landroidx/camera/camera2/pipe/AeMode;

    iget-wide v13, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->$timeLimitNs:J

    :try_start_2
    invoke-static {v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v2

    iput-object v12, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$4:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$6:Ljava/lang/Object;

    iput-wide v13, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->J$0:J

    iput v4, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->label:I

    invoke-interface {v2, v0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v16, v11

    move-object v11, v6

    move-object v6, v12

    move-object v12, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v10

    move-object v10, v8

    move-object/from16 v8, v16

    move-wide/from16 v16, v13

    :goto_1
    check-cast v2, Ljava/lang/AutoCloseable;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object v4, v2

    check-cast v4, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    iput-object v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$5:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;->label:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x0

    move-object v13, v2

    move-object v2, v4

    const/4 v4, 0x0

    move-object v14, v5

    const/4 v5, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v18, v14

    const/4 v14, 0x0

    move-object/from16 v19, v15

    const/4 v15, 0x0

    const/16 v21, 0x1c07

    const/16 v22, 0x0

    move-object/from16 v24, v18

    move-object/from16 v20, v19

    move-wide/from16 v18, v16

    move-object/from16 v25, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v24

    move-object/from16 v24, v25

    :try_start_4
    invoke-static/range {v2 .. v22}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->lock3A--tS25XM$default(Landroidx/camera/camera2/pipe/CameraGraph$Session;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJLe02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object/from16 v1, v24

    :goto_3
    :try_start_5
    check-cast v2, Lmk2;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v1, v0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v24

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_0

    :goto_4
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v2, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static/range {v23 .. v23}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot acquire the CameraGraph.Session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    invoke-static {}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getSubmitFailedResult$cp()Lxp1;

    move-result-object v0

    return-object v0
.end method
