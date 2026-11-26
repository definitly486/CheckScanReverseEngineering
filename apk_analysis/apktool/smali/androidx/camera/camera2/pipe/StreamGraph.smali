.class public interface abstract Landroidx/camera/camera2/pipe/StreamGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/StreamGraph$DefaultImpls;,
        Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;
    }
.end annotation


# direct methods
.method public static synthetic access$get-aKI5c8E$jd(Landroidx/camera/camera2/pipe/StreamGraph;I)Landroidx/camera/camera2/pipe/CameraStream;
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/StreamGraph;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$get-iYJqvbA$jd(Landroidx/camera/camera2/pipe/StreamGraph;I)Landroidx/camera/camera2/pipe/OutputStream;
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/StreamGraph;->get-iYJqvbA(I)Landroidx/camera/camera2/pipe/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getOutputLatency-IL232MI$default(Landroidx/camera/camera2/pipe/StreamGraph;ILandroidx/camera/camera2/pipe/OutputId;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputLatency-IL232MI(ILandroidx/camera/camera2/pipe/OutputId;)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: getOutputLatency-IL232MI"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract get(Landroidx/camera/camera2/pipe/CameraStream$Config;)Landroidx/camera/camera2/pipe/CameraStream;
.end method

.method public get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;
    .locals 2

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/StreamGraph;->getStreams()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v1

    invoke-static {v1, p1}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/CameraStream;

    return-object v0
.end method

.method public get-iYJqvbA(I)Landroidx/camera/camera2/pipe/OutputStream;
    .locals 2

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v1

    invoke-static {v1, p1}, Landroidx/camera/camera2/pipe/OutputId;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/OutputStream;

    return-object v0
.end method

.method public abstract getImageSource-aKI5c8E(I)Landroidx/camera/camera2/pipe/media/ImageSource;
.end method

.method public abstract getInputs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/InputStream;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputLatency-IL232MI(ILandroidx/camera/camera2/pipe/OutputId;)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;
.end method

.method public abstract getOutputs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStreamIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStreams()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation
.end method
