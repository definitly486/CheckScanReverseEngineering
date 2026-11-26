.class public final synthetic Ltt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    check-cast p1, Landroidx/camera/core/DynamicRange;

    check-cast p2, Landroidx/camera/core/CompositionSettings;

    check-cast p3, Landroidx/camera/core/CompositionSettings;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;-><init>(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;)V

    return-object p0
.end method
