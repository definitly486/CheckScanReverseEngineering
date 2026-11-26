.class public final Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/KeyRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final loadEventInfos:Lcom/google/common/collect/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j$a<",
            "Landroidx/media3/exoplayer/source/LoadEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private schemeDatas:Lcom/google/common/collect/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    new-instance v0, Lcom/google/common/collect/j$a;

    invoke-direct {v0}, Lcom/google/common/collect/j$a;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->loadEventInfos:Lcom/google/common/collect/j$a;

    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;)Lcom/google/common/collect/j$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->loadEventInfos:Lcom/google/common/collect/j$a;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;)Lcom/google/common/collect/j;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->schemeDatas:Lcom/google/common/collect/j;

    return-object p0
.end method


# virtual methods
.method public addLoadInfo(Landroidx/media3/exoplayer/source/LoadEventInfo;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->loadEventInfos:Lcom/google/common/collect/j$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i$a;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Landroidx/media3/exoplayer/drm/KeyRequestInfo;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    new-instance v0, Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/drm/KeyRequestInfo;-><init>(Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;Landroidx/media3/exoplayer/drm/KeyRequestInfo$1;)V

    return-object v0
.end method

.method public setSchemeDatas(Ljava/util/List;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;)",
            "Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/j;->o(Ljava/util/Collection;)Lcom/google/common/collect/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->schemeDatas:Lcom/google/common/collect/j;

    return-object p0
.end method
