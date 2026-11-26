.class public final Landroidx/camera/camera2/pipe/CameraDevicesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final find-Ohbb9yk(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;Z)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraDevices;",
            "Ljava/lang/String;",
            "Z)",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/CameraDevicesKt$find$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/camera/camera2/pipe/CameraDevicesKt$find$1;-><init>(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ZLe02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public static synthetic find-Ohbb9yk$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ZILjava/lang/Object;)Lhd3;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraDevicesKt;->find-Ohbb9yk(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;Z)Lhd3;

    move-result-object p0

    return-object p0
.end method
