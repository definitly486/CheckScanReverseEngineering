.class public final Landroidx/camera/camera2/pipe/ImageSourceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final capacity:I

.field private final defaultDataSpace:Ljava/lang/Integer;

.field private final defaultHardwareBufferFormat:Ljava/lang/Integer;

.field private enableConcurrentOutputs:Z

.field private final usageFlags:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->capacity:I

    .line 22
    iput-object p2, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->usageFlags:Ljava/lang/Long;

    .line 23
    iput-object p3, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->defaultDataSpace:Ljava/lang/Integer;

    .line 24
    iput-object p4, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->defaultHardwareBufferFormat:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ILjh2;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/ImageSourceConfig;-><init>(ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getCapacity()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->capacity:I

    return p0
.end method

.method public final getDefaultDataSpace()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->defaultDataSpace:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getDefaultHardwareBufferFormat()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->defaultHardwareBufferFormat:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getEnableConcurrentOutputs()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->enableConcurrentOutputs:Z

    return p0
.end method

.method public final getUsageFlags()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->usageFlags:Ljava/lang/Long;

    return-object p0
.end method

.method public final setEnableConcurrentOutputs(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/ImageSourceConfig;->enableConcurrentOutputs:Z

    return-void
.end method
