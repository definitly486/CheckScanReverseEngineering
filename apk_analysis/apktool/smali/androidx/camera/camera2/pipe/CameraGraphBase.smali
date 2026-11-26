.class public interface abstract Landroidx/camera/camera2/pipe/CameraGraphBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSession::",
        "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# direct methods
.method public static synthetic lock3A-vIrNa9k$default(Landroidx/camera/camera2/pipe/CameraGraphBase;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJILjava/lang/Object;)Lmk2;
    .locals 19

    move/from16 v0, p18

    if-nez p19, :cond_f

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v2, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    const/16 v13, 0x3c

    goto :goto_c

    :cond_c
    move/from16 v13, p13

    :goto_c
    and-int/lit16 v14, v0, 0x2000

    const-wide v15, 0xb2d05e00L

    if-eqz v14, :cond_d

    move-wide/from16 v17, v15

    goto :goto_d

    :cond_d
    move-wide/from16 v17, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    move-wide/from16 p17, v15

    :goto_e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p13, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move/from16 p14, v13

    move-wide/from16 p15, v17

    goto :goto_f

    :cond_e
    move-wide/from16 p17, p16

    goto :goto_e

    :goto_f
    invoke-interface/range {p1 .. p18}, Landroidx/camera/camera2/pipe/CameraGraphBase;->lock3A-vIrNa9k(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJ)Lmk2;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v0, "Super calls with default arguments not supported in this target, function: lock3A-vIrNa9k"

    invoke-static {v0}, Ln1;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic unlock3A$default(Landroidx/camera/camera2/pipe/CameraGraphBase;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJILjava/lang/Object;)Lmk2;
    .locals 1

    if-nez p9, :cond_6

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    const/16 p5, 0x3c

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    const-wide p6, 0xb2d05e00L

    :cond_5
    invoke-interface/range {p0 .. p7}, Landroidx/camera/camera2/pipe/CameraGraphBase;->unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJ)Lmk2;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "Super calls with default arguments not supported in this target, function: unlock3A"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract acquireSession(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-TTSession;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract acquireSessionOrNull()Landroidx/camera/camera2/pipe/CameraGraph$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTSession;"
        }
    .end annotation
.end method

.method public abstract getGraphState()Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/camera/camera2/pipe/GraphState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Landroidx/camera/camera2/pipe/CameraGraphId;
.end method

.method public abstract getLatestFrameInfo()Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestFrameNumber()Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/FrameNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListeners()Landroidx/camera/camera2/pipe/RequestListeners;
.end method

.method public abstract getParameters()Landroidx/camera/camera2/pipe/Parameters;
.end method

.method public abstract getStreams()Landroidx/camera/camera2/pipe/StreamGraph;
.end method

.method public abstract isForeground()Z
.end method

.method public abstract lock3A-vIrNa9k(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJ)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Landroidx/camera/camera2/pipe/AfMode;",
            "Landroidx/camera/camera2/pipe/AwbMode;",
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
            ">;IJJ)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setForeground(Z)V
.end method

.method public abstract setSurface-NYG5g8E(ILandroid/view/Surface;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJ)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;IJ)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateAudioRestrictionMode-LwUUkyU(I)V
.end method

.method public abstract useSession(Ldm3;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldm3<",
            "-",
            "Ly22;",
            "-TTSession;-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract useSessionIn(Ly22;Ldm3;)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly22;",
            "Ldm3<",
            "-",
            "Ly22;",
            "-TTSession;-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmk2<",
            "TT;>;"
        }
    .end annotation
.end method
