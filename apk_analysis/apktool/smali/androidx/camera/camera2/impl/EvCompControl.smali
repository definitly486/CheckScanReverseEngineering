.class public final Landroidx/camera/camera2/impl/EvCompControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/EvCompControl$Bindings;
    }
.end annotation


# instance fields
.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final compat:Landroidx/camera/camera2/compat/EvCompCompat;

.field private evCompIndex:I

.field private exposureState:Landroidx/camera/camera2/adapter/EvCompValue;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/compat/EvCompCompat;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    new-instance v0, Landroidx/camera/camera2/adapter/EvCompValue;

    invoke-interface {p1}, Landroidx/camera/camera2/compat/EvCompCompat;->getSupported()Z

    move-result v1

    iget v2, p0, Landroidx/camera/camera2/impl/EvCompControl;->evCompIndex:I

    invoke-interface {p1}, Landroidx/camera/camera2/compat/EvCompCompat;->getRange()Landroid/util/Range;

    move-result-object v3

    invoke-interface {p1}, Landroidx/camera/camera2/compat/EvCompCompat;->getStep()Landroid/util/Rational;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/camera/camera2/adapter/EvCompValue;-><init>(ZILandroid/util/Range;Landroid/util/Rational;)V

    iput-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    return-void
.end method

.method private final createFailureResult(Ljava/lang/Exception;)Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")",
            "Lxp1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Lyp1;

    invoke-direct {p0}, Lyp1;-><init>()V

    invoke-virtual {p0, p1}, Lyp1;->e(Ljava/lang/Throwable;)Z

    return-object p0
.end method

.method private final setEvCompIndex(I)V
    .locals 1

    iput p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->evCompIndex:I

    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/adapter/EvCompValue;->updateIndex$camera_camera2(I)Landroidx/camera/camera2/adapter/EvCompValue;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    return-void
.end method

.method public static synthetic updateAsync$default(Landroidx/camera/camera2/impl/EvCompControl;IZILjava/lang/Object;)Lmk2;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/EvCompControl;->updateAsync(IZ)Lmk2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getExposureState()Landroidx/camera/camera2/adapter/EvCompValue;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    return-object p0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/EvCompControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/EvCompControl;->setEvCompIndex(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Landroidx/camera/camera2/impl/EvCompControl;->updateAsync$default(Landroidx/camera/camera2/impl/EvCompControl;IZILjava/lang/Object;)Lmk2;

    return-void
.end method

.method public final setExposureState(Landroidx/camera/camera2/adapter/EvCompValue;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    return-void
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 1

    iput-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->evCompIndex:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/impl/EvCompControl;->updateAsync(IZ)Lmk2;

    return-void
.end method

.method public final updateAsync(IZ)Lmk2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lmk2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/EvCompCompat;->getSupported()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExposureCompensation is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/EvCompControl;->createFailureResult(Ljava/lang/Exception;)Lxp1;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/EvCompCompat;->getRange()Landroid/util/Range;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested ExposureCompensation "

    const-string v1, " is not within valid range ["

    invoke-static {p1, v0, v1}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/EvCompCompat;->getRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " .. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/EvCompCompat;->getRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/EvCompControl;->createFailureResult(Ljava/lang/Exception;)Lxp1;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/EvCompControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/EvCompControl;->setEvCompIndex(I)V

    iget-object v1, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {v1, p1, v0, p2}, Landroidx/camera/camera2/compat/EvCompCompat;->applyAsync(ILandroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lmk2;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p2, "Camera is not active."

    invoke-direct {p1, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompCompat;

    invoke-interface {p2, p1}, Landroidx/camera/camera2/compat/EvCompCompat;->stopRunningTask(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/EvCompControl;->createFailureResult(Ljava/lang/Exception;)Lxp1;

    move-result-object p0

    return-object p0
.end method
