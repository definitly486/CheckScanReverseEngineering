.class public final Landroidx/camera/camera2/pipe/compat/SessionConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final inputConfiguration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/InputConfigData;",
            ">;"
        }
    .end annotation
.end field

.field private final outputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionColorSpace:Ljava/lang/String;

.field private final sessionParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionTemplateId:I

.field private final sessionType:I

.field private final stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# direct methods
.method private constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/InputConfigData;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;",
            "I",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    iput p6, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;Ljh2;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p8}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy-WTWd9Ag$default(Landroidx/camera/camera2/pipe/compat/SessionConfigData;ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/SessionConfigData;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget p1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-object p5, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget p6, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget-object p7, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-object p8, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->copy-WTWd9Ag(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;)Landroidx/camera/camera2/pipe/compat/SessionConfigData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    return p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/InputConfigData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final component5()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    return-object p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    return p0
.end method

.method public final component7()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    return-object p0
.end method

.method public final component8-dxVZaPA()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    return-object p0
.end method

.method public final copy-WTWd9Ag(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;)Landroidx/camera/camera2/pipe/compat/SessionConfigData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/InputConfigData;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;",
            "I",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/camera/camera2/pipe/compat/SessionConfigData;"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;

    const/4 v9, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;Ljh2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    iget v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    iget v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    if-nez p0, :cond_a

    if-nez p1, :cond_9

    move p0, v0

    goto :goto_1

    :cond_9
    :goto_0
    move p0, v2

    goto :goto_1

    :cond_a
    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_1
    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getInputConfiguration()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/InputConfigData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    return-object p0
.end method

.method public final getOutputConfigurations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public final getSessionColorSpace-dxVZaPA()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    return-object p0
.end method

.method public final getSessionParameters()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    return-object p0
.end method

.method public final getSessionTemplateId()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    return p0
.end method

.method public final getSessionType()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    return p0
.end method

.method public final getStateCallback()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lk;->c(Ljava/util/Map;II)I

    move-result v0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->hashCode-impl(Ljava/lang/String;)I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionConfigData(sessionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inputConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTemplateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionColorSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
