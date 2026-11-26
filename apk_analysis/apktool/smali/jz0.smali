.class public final synthetic Ljz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;


# virtual methods
.method public final newInstance(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)V

    return-object p0
.end method
