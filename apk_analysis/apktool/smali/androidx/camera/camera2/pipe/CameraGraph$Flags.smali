.class public final Landroidx/camera/camera2/pipe/CameraGraph$Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;
    }
.end annotation


# instance fields
.field private final abortCapturesOnStop:Z

.field private final awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

.field private final awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

.field private final closeCameraDeviceOnClose:Z

.field private final closeCaptureSessionOnDisconnect:Z

.field private final configureBlankSessionOnStop:Z

.field private final enableRestartDelays:Z

.field private final finalizeSessionOnCloseBehavior:I


# direct methods
.method private constructor <init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZ)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    .line 72
    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    .line 73
    iput-object p3, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    .line 74
    iput-object p4, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    .line 75
    iput p5, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    .line 76
    iput-boolean p6, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    .line 77
    iput-boolean p7, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    .line 78
    iput-boolean p8, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZILjh2;)V
    .locals 2

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p10, 0x1e

    if-lt p2, p10, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :cond_2
    :goto_0
    and-int/lit8 p10, p9, 0x4

    const/4 v1, 0x0

    if-eqz p10, :cond_3

    new-instance p3, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    const/4 p10, 0x3

    invoke-direct {p3, v0, v1, p10, v1}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;-><init>(ILandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;ILjh2;)V

    :cond_3
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_4

    move-object p4, v1

    :cond_4
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_5

    sget-object p5, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;->getOFF-Bm6Tfm4()I

    move-result p5

    :cond_5
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_6

    sget-object p6, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;

    invoke-virtual {p6}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;->shouldCloseCaptureSessionOnDisconnect$camera_camera2_pipe()Z

    move-result p6

    :cond_6
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_7

    move p7, v0

    :cond_7
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_8

    move p8, v0

    :cond_8
    const/4 p9, 0x0

    invoke-direct/range {p0 .. p9}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;-><init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZLjh2;)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p8}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;-><init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZ)V

    return-void
.end method

.method public static synthetic copy-LsLUW-E$default(Landroidx/camera/camera2/pipe/CameraGraph$Flags;ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZILjava/lang/Object;)Landroidx/camera/camera2/pipe/CameraGraph$Flags;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-boolean p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-boolean p2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget p5, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget-boolean p6, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget-boolean p7, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-boolean p8, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    :cond_7
    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->copy-LsLUW-E(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZ)Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    return p0
.end method

.method public final component3()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    return-object p0
.end method

.method public final component4()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component5-Bm6Tfm4()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    return p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    return p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    return p0
.end method

.method public final copy-LsLUW-E(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZ)Landroidx/camera/camera2/pipe/CameraGraph$Flags;
    .locals 10

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    const/4 v9, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;-><init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZLjh2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    iget v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    iget-boolean p1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAbortCapturesOnStop()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    return p0
.end method

.method public final getAwaitRepeatingRequestBeforeCapture()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    return-object p0
.end method

.method public final getAwaitRepeatingRequestOnDisconnect()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getCloseCameraDeviceOnClose()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    return p0
.end method

.method public final getCloseCaptureSessionOnDisconnect()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    return p0
.end method

.method public final getConfigureBlankSessionOnStop()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    return p0
.end method

.method public final getEnableRestartDelays()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    return p0
.end method

.method public final getFinalizeSessionOnCloseBehavior-Bm6Tfm4()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->hashCode-impl(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flags(configureBlankSessionOnStop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", abortCapturesOnStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", awaitRepeatingRequestBeforeCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", awaitRepeatingRequestOnDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finalizeSessionOnCloseBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closeCaptureSessionOnDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", closeCameraDeviceOnClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableRestartDelays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
