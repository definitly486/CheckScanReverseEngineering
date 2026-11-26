.class public final synthetic Landroidx/camera/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;

    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-direct {p0, p1}, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;-><init>(Landroidx/camera/lifecycle/ProcessCameraProvider;)V

    return-object p0
.end method
