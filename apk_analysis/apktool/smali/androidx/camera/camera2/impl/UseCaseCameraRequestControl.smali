.class public interface abstract Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$DefaultImpls;,
        Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;
    }
.end annotation


# direct methods
.method public static synthetic removeParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;ILjava/lang/Object;)Lmk2;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->DEFAULT:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->removeParametersAsync(Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: removeParametersAsync"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic setParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;ILjava/lang/Object;)Lmk2;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->DEFAULT:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/UseCaseCameraKt;->getDefaultOptionPriority()Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object p3

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setParametersAsync(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Super calls with default arguments not supported in this target, function: setParametersAsync"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic startFocusAndMeteringAsync-NxRnBj4$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;JILjava/lang/Object;)Lmk2;
    .locals 1

    if-nez p11, :cond_8

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_7

    const-wide p8, 0xb2d05e00L

    :cond_7
    invoke-interface/range {p0 .. p9}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->startFocusAndMeteringAsync-NxRnBj4(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;J)Lmk2;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p0, "Super calls with default arguments not supported in this target, function: startFocusAndMeteringAsync-NxRnBj4"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic submitParameters$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;ILjava/lang/Object;)Lmk2;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->DEFAULT:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/UseCaseCameraKt;->getDefaultOptionPriority()Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object p3

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->submitParameters(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Super calls with default arguments not supported in this target, function: submitParameters"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic update3aRegions$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lmk2;
    .locals 1

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-interface {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->update3aRegions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "Super calls with default arguments not supported in this target, function: update3aRegions"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic updateCamera2ConfigAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Landroidx/camera/core/impl/Config;Ljava/util/Map;ILjava/lang/Object;)Lmk2;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lmx2;->b:Lmx2;

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->updateCamera2ConfigAsync(Landroidx/camera/core/impl/Config;Ljava/util/Map;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: updateCamera2ConfigAsync"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract awaitSurfaceSetup(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract cancelFocusAndMeteringAsync()Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;III)",
            "Ljava/util/List<",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract removeParametersAsync(Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setParametersAsync(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setTorchOffAsync-MtizInI(I)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setTorchOnAsync()Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startFocusAndMeteringAsync-NxRnBj4(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;J)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "J)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end method

.method public abstract submitParameters(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update3aRegions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateCamera2ConfigAsync(Landroidx/camera/core/impl/Config;Ljava/util/Map;)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateRepeatingRequestAsync(ZLjava/util/Collection;)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method
