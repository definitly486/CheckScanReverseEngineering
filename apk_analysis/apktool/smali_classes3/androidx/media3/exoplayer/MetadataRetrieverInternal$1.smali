.class Landroidx/media3/exoplayer/MetadataRetrieverInternal$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/MetadataRetrieverInternal;->retrieveTrackGroups()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxm3<",
        "Landroidx/media3/exoplayer/MetadataRetrieverInternal$InternalResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/MetadataRetrieverInternal;

.field final synthetic val$externalFuture:Lnr7;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/MetadataRetrieverInternal;Lnr7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$1;->this$0:Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    iput-object p2, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$1;->val$externalFuture:Lnr7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$1;->val$externalFuture:Lnr7;

    invoke-virtual {p0, p1}, Ll0;->m(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Landroidx/media3/exoplayer/MetadataRetrieverInternal$InternalResult;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$1;->val$externalFuture:Lnr7;

    iget-object p1, p1, Landroidx/media3/exoplayer/MetadataRetrieverInternal$InternalResult;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {p0, p1}, Ll0;->l(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Landroidx/media3/exoplayer/MetadataRetrieverInternal$InternalResult;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MetadataRetrieverInternal$1;->onSuccess(Landroidx/media3/exoplayer/MetadataRetrieverInternal$InternalResult;)V

    return-void
.end method
