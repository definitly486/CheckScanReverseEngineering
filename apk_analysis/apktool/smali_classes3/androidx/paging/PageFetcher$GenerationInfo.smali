.class final Landroidx/paging/PageFetcher$GenerationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenerationInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cachedInitialState:Landroidx/paging/PagingState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field private final job:Lmb4;

.field private final snapshot:Landroidx/paging/PageFetcherSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PageFetcherSnapshot<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lmb4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageFetcherSnapshot<",
            "TKey;TValue;>;",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;",
            "Lmb4;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    iput-object p2, p0, Landroidx/paging/PageFetcher$GenerationInfo;->cachedInitialState:Landroidx/paging/PagingState;

    iput-object p3, p0, Landroidx/paging/PageFetcher$GenerationInfo;->job:Lmb4;

    return-void
.end method


# virtual methods
.method public final getCachedInitialState()Landroidx/paging/PagingState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PageFetcher$GenerationInfo;->cachedInitialState:Landroidx/paging/PagingState;

    return-object p0
.end method

.method public final getJob()Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageFetcher$GenerationInfo;->job:Lmb4;

    return-object p0
.end method

.method public final getSnapshot()Landroidx/paging/PageFetcherSnapshot;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PageFetcherSnapshot<",
            "TKey;TValue;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    return-object p0
.end method
