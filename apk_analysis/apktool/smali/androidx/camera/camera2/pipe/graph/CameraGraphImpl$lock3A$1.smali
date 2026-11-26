.class final Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$lock3A$1"
    f = "CameraGraphImpl.kt"
    l = {
        0x116
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->lock3A-vIrNa9k(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJ)Lmk2;
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

.field final synthetic $convergedCondition:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $convergedTimeLimitNs:J

.field final synthetic $frameLimit:I

.field final synthetic $lockedCondition:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lockedTimeLimitNs:J

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;",
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
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;IJJ",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$aeRegions:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$afRegions:Ljava/util/List;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$awbRegions:Ljava/util/List;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$aeLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$afLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$awbLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$afTriggerStartAeMode:Landroidx/camera/camera2/pipe/AeMode;

    iput-object p9, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$convergedCondition:Lnl3;

    iput-object p10, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$lockedCondition:Lnl3;

    iput p11, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$frameLimit:I

    iput-wide p12, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$convergedTimeLimitNs:J

    iput-wide p14, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$lockedTimeLimitNs:J

    const/4 p1, 0x2

    move-object/from16 p2, p16

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 19
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

    move-object/from16 v0, p0

    new-instance v1, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;

    move-object v2, v1

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    move-object v3, v2

    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$aeRegions:Ljava/util/List;

    move-object v4, v3

    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$afRegions:Ljava/util/List;

    move-object v5, v4

    iget-object v4, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$awbRegions:Ljava/util/List;

    move-object v6, v5

    iget-object v5, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$aeLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    move-object v7, v6

    iget-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$afLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    move-object v8, v7

    iget-object v7, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$awbLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    move-object v9, v8

    iget-object v8, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$afTriggerStartAeMode:Landroidx/camera/camera2/pipe/AeMode;

    move-object v10, v9

    iget-object v9, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$convergedCondition:Lnl3;

    move-object v11, v10

    iget-object v10, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$lockedCondition:Lnl3;

    move-object v12, v11

    iget v11, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$frameLimit:I

    move-object v14, v12

    iget-wide v12, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$convergedTimeLimitNs:J

    move-object v15, v1

    iget-wide v0, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$lockedTimeLimitNs:J

    move-object/from16 v16, p2

    move-wide/from16 v17, v0

    move-object v0, v14

    move-object v1, v15

    move-wide/from16 v14, v17

    invoke-direct/range {v0 .. v16}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJLe02;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v13, p0

    sget-object v14, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v0, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->access$getController3A$p(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;)Landroidx/camera/camera2/pipe/graph/Controller3A;

    move-result-object v0

    iget-object v2, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$aeRegions:Ljava/util/List;

    move-object v3, v2

    iget-object v2, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$afRegions:Ljava/util/List;

    move-object v4, v3

    iget-object v3, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$awbRegions:Ljava/util/List;

    move-object v5, v4

    iget-object v4, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$aeLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    move-object v6, v5

    iget-object v5, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$afLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    move-object v7, v6

    iget-object v6, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$awbLockBehavior:Landroidx/camera/camera2/pipe/Lock3ABehavior;

    move-object v8, v7

    iget-object v7, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$afTriggerStartAeMode:Landroidx/camera/camera2/pipe/AeMode;

    move-object v9, v8

    iget-object v8, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$convergedCondition:Lnl3;

    move-object v10, v9

    iget-object v9, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$lockedCondition:Lnl3;

    move-object v11, v10

    iget v10, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$frameLimit:I

    move-object/from16 p1, v2

    iget-wide v1, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$convergedTimeLimitNs:J

    move-object v15, v11

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->$lockedTimeLimitNs:J

    const/16 v16, 0x1

    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move/from16 v1, v16

    iput v1, v13, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;->label:I

    move-object/from16 v2, p1

    move-object v1, v15

    invoke-virtual/range {v0 .. v13}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3A-Qz1gx5w(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;ILjava/lang/Long;Ljava/lang/Long;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_2

    return-object v14

    :cond_2
    return-object v0
.end method
