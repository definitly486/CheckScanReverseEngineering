.class public final synthetic Lkz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;


# virtual methods
.method public final newInstance(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
