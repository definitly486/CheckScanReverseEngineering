.class public Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;
.super Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/BaseHierarchicalTrimmer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/BaseHierarchicalTrimmer<",
        "Ljava/util/List<",
        "TT;>;",
        "Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionTrimInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;-><init>(ILio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer;)V

    return-void
.end method

.method public constructor <init>(ILio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer<",
            "TT;",
            "Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/BaseHierarchicalTrimmer;-><init>(I)V

    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer;

    return-void
.end method


# virtual methods
.method public byteSizeOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getItemTrimmer()Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer<",
            "TT;",
            "Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer;

    return-object p0
.end method

.method public bridge synthetic trim(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;
    .locals 0

    .line 93
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;->trim(Ljava/util/List;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object p0

    return-object p0
.end method

.method public trim(Ljava/util/List;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult<",
            "Ljava/util/List<",
            "TT;>;",
            "Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionTrimInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/BaseHierarchicalTrimmer;->getLimit()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer;

    if-eqz v1, :cond_4

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/BaseHierarchicalTrimmer;->getLimit()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer;

    if-eqz v5, :cond_1

    invoke-interface {v5, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalTrimmer;->trim(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v5

    iget-object v6, v5, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    invoke-virtual {v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->getBytesTruncated()I

    move-result v7

    add-int/2addr v2, v7

    iget-object v5, v5, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v4, v6

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;->byteSizeOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object p1, v1

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    new-instance p0, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionTrimInfo;

    invoke-direct {v1, v0, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionTrimInfo;-><init>(II)V

    invoke-direct {p0, p1, v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object p0
.end method
