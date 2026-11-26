.class public final synthetic Lgu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Landroidx/camera/core/resolutionselector/ResolutionFilter;
.implements Landroidx/arch/core/util/Function;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lyads/ci4;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lgu2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyads/dh4;)Z
    .locals 0

    iget-object p0, p0, Lgu2;->b:Ljava/lang/Object;

    check-cast p0, Lyads/ae4;

    invoke-static {p0, p1}, Lyads/ae4;->e(Lyads/ae4;Lyads/dh4;)Z

    move-result p0

    return p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgu2;->b:Ljava/lang/Object;

    check-cast p0, Lmg6;

    invoke-static {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->a(Lmg6;Ljava/lang/Object;)Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object p0

    return-object p0
.end method

.method public filter(Ljava/util/List;I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lgu2;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/Size;

    invoke-static {p0, p1, p2}, Landroidx/camera/core/ImageAnalysis;->d(Landroid/util/Size;Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invoke(D)D
    .locals 0

    .line 10
    iget-object p0, p0, Lgu2;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->g(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lgu2;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->k(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lgu2;->b:Ljava/lang/Object;

    check-cast p0, Lmu2;

    invoke-virtual {p0, p1}, Lmu2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
