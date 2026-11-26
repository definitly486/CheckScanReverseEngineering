.class public final Landroidx/camera/camera2/pipe/graph/GraphState3A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation


# instance fields
.field private final _state:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Landroidx/camera/camera2/pipe/graph/State3A;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/camera/camera2/pipe/graph/State3A;

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v12}, Landroidx/camera/camera2/pipe/graph/State3A;-><init>(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjh2;)V

    invoke-static {v0}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphState3A;->_state:Lot;

    return-void
.end method

.method public static synthetic update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move-object p10, v0

    :cond_9
    invoke-virtual/range {p0 .. p10}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getCurrent()Landroidx/camera/camera2/pipe/graph/State3A;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphState3A;->_state:Lot;

    iget-object p0, p0, Lot;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/graph/State3A;

    return-object p0
.end method

.method public final setCurrent(Landroidx/camera/camera2/pipe/graph/State3A;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphState3A;->_state:Lot;

    invoke-virtual {p0, p1}, Lot;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final toCaptureRequestParametersMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->getCurrent()Landroidx/camera/camera2/pipe/graph/State3A;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/GraphState3AKt;->toCaptureRequestParameterMap(Landroidx/camera/camera2/pipe/graph/State3A;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final update-7jOEVJU(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Landroidx/camera/camera2/pipe/AfMode;",
            "Landroidx/camera/camera2/pipe/AwbMode;",
            "Landroidx/camera/camera2/pipe/FlashMode;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphState3A;->_state:Lot;

    :cond_0
    iget-object v0, p0, Lot;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/graph/State3A;

    if-nez p1, :cond_1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getAeMode-O_cDUUs()Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getAfMode-32_E3BI()Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, p2

    :goto_1
    if-nez p3, :cond_3

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getAwbMode-aLFtWSU()Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object/from16 v4, p3

    :goto_2
    if-nez p4, :cond_4

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getFlashMode-cL-19HE()Landroidx/camera/camera2/pipe/FlashMode;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object/from16 v5, p4

    :goto_3
    const/4 v6, 0x0

    if-eqz p5, :cond_6

    move-object/from16 v7, p5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v7, v6

    :cond_5
    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_7

    :cond_6
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getAeRegions()Ljava/util/List;

    move-result-object v7

    :cond_7
    if-eqz p6, :cond_9

    move-object/from16 v8, p6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v8, v6

    :cond_8
    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_a

    :cond_9
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getAfRegions()Ljava/util/List;

    move-result-object v8

    :cond_a
    if-eqz p7, :cond_c

    move-object/from16 v9, p7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_4

    :cond_b
    move-object v6, v9

    :goto_4
    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_d

    :cond_c
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getAwbRegions()Ljava/util/List;

    move-result-object v6

    :cond_d
    if-nez p8, :cond_e

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getAeLock()Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_5

    :cond_e
    move-object/from16 v9, p8

    :goto_5
    if-nez p9, :cond_f

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getAfLock()Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_6

    :cond_f
    move-object/from16 v10, p9

    :goto_6
    if-nez p10, :cond_10

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/State3A;->getAwbLock()Ljava/lang/Boolean;

    move-result-object v11

    move-object v12, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v12

    goto :goto_7

    :cond_10
    move-object v11, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v11

    move-object/from16 v11, p10

    :goto_7
    invoke-virtual/range {v1 .. v11}, Landroidx/camera/camera2/pipe/graph/State3A;->copy-7jOEVJU(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroidx/camera/camera2/pipe/graph/State3A;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
