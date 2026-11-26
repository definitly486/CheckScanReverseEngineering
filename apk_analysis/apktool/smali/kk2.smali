.class public final synthetic Lkk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnFailureListener;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkk2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkk2;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-static {p0, p1}, Landroidx/camera/core/impl/DeferrableSurface;->a(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(D)D
    .locals 0

    .line 10
    iget-object p0, p0, Lkk2;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->c(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkk2;->b:Ljava/lang/Object;

    check-cast p0, Lyads/bq2;

    check-cast p1, Lyads/iw4;

    invoke-virtual {p0, p1}, Lyads/bq2;->a(Lyads/iw4;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lkk2;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/MetadataRetrieverInternal;->b(Landroidx/media3/exoplayer/MetadataRetrieverInternal;Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkk2;->b:Ljava/lang/Object;

    check-cast p0, Lpu2;

    invoke-virtual {p0, p1}, Lpu2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
