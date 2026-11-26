.class public final Landroidx/camera/camera2/pipe/compat/CameraStateClosed;
.super Landroidx/camera/camera2/pipe/compat/CameraState;
.source "SourceFile"


# instance fields
.field private final cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

.field private final cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

.field private final cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

.field private final cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

.field private final cameraException:Ljava/lang/Throwable;

.field private final cameraId:Ljava/lang/String;

.field private final cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

.field private final cameraRetryCount:Ljava/lang/Integer;

.field private final cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraState;-><init>(Ljh2;)V

    .line 42
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 44
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    .line 45
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 46
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    .line 47
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 48
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 49
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 50
    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;ILjh2;)V
    .locals 1

    and-int/lit8 p11, p10, 0x4

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_3

    move-object p6, v0

    :cond_3
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_4

    move-object p7, v0

    :cond_4
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_5

    move-object p8, v0

    :cond_5
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_6

    move-object p9, v0

    :cond_6
    const/4 p10, 0x0

    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p9}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;)V

    return-void
.end method

.method public static synthetic copy-21rfiog$default(Landroidx/camera/camera2/pipe/compat/CameraStateClosed;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->copy-21rfiog(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Landroidx/camera/camera2/pipe/compat/ClosedReason;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component4-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object p0
.end method

.method public final component5()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final component6-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object p0
.end method

.method public final component7-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object p0
.end method

.method public final component8-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object p0
.end method

.method public final component9-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-object p0
.end method

.method public final copy-21rfiog(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCameraActiveDurationNs-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object p0
.end method

.method public final getCameraClosedReason()Landroidx/camera/camera2/pipe/compat/ClosedReason;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    return-object p0
.end method

.method public final getCameraClosingDurationNs-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object p0
.end method

.method public final getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-object p0
.end method

.method public final getCameraException()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public final getCameraOpenDurationNs-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object p0
.end method

.method public final getCameraRetryCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getCameraRetryDurationNs-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraId;->hashCode-impl(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->hashCode-impl(J)I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->hashCode-impl(J)I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->hashCode-impl(J)I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->hashCode-impl(J)I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraError;->hashCode-impl(I)I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraStateClosed(cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraClosedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraRetryDurationNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraOpenDurationNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraActiveDurationNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraClosingDurationNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
