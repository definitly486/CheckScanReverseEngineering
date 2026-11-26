.class public final Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/UseCaseCameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestSignal"
.end annotation


# instance fields
.field private final requestNo:I

.field private final signal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILxp1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxp1<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lxp1;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;ILxp1;ILjava/lang/Object;)Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lxp1;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->copy(ILxp1;)Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    return p0
.end method

.method public final component2()Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lxp1;

    return-object p0
.end method

.method public final copy(ILxp1;)Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxp1<",
            "Lj59;",
            ">;)",
            "Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;-><init>(ILxp1;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    iget v3, p1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lxp1;

    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lxp1;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRequestNo()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    return p0
.end method

.method public final getSignal()Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lxp1;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lxp1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestSignal(requestNo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lxp1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
