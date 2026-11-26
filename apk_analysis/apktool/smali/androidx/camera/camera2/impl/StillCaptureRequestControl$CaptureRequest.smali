.class public final Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/StillCaptureRequestControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptureRequest"
.end annotation


# instance fields
.field private final captureConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final captureMode:I

.field private final flashType:I

.field private final result:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IILxp1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;II",
            "Lxp1<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureConfigs:Ljava/util/List;

    iput p2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureMode:I

    iput p3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->flashType:I

    iput-object p4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->result:Lxp1;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Ljava/util/List;IILxp1;ILjava/lang/Object;)Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureConfigs:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureMode:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->flashType:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->result:Lxp1;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->copy(Ljava/util/List;IILxp1;)Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureConfigs:Ljava/util/List;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureMode:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->flashType:I

    return p0
.end method

.method public final component4()Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxp1<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->result:Lxp1;

    return-object p0
.end method

.method public final copy(Ljava/util/List;IILxp1;)Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;II",
            "Lxp1<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;-><init>(Ljava/util/List;IILxp1;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureConfigs:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureConfigs:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureMode:I

    iget v3, p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureMode:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->flashType:I

    iget v3, p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->flashType:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->result:Lxp1;

    iget-object p1, p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->result:Lxp1;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCaptureConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureConfigs:Ljava/util/List;

    return-object p0
.end method

.method public final getCaptureMode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureMode:I

    return p0
.end method

.method public final getFlashType()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->flashType:I

    return p0
.end method

.method public final getResult()Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxp1<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->result:Lxp1;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureConfigs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureMode:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->flashType:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->result:Lxp1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CaptureRequest(captureConfigs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", captureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->captureMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flashType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->flashType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->result:Lxp1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
