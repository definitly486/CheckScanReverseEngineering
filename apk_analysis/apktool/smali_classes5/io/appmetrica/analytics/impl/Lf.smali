.class public final Lio/appmetrica/analytics/impl/Lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/b0;

.field public final b:Lio/appmetrica/analytics/impl/Mf;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/b0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/b0;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Mf;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Mf;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/Lf;-><init>(Lio/appmetrica/analytics/impl/b0;Lio/appmetrica/analytics/impl/Mf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/b0;Lio/appmetrica/analytics/impl/Mf;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Lf;->a:Lio/appmetrica/analytics/impl/b0;

    .line 18
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Lf;->b:Lio/appmetrica/analytics/impl/Mf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Nf;)Lio/appmetrica/analytics/impl/Li;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Nf;",
            ")",
            "Lio/appmetrica/analytics/impl/Li;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/x8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x8;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Lf;->a:Lio/appmetrica/analytics/impl/b0;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Nf;->a:Lio/appmetrica/analytics/impl/c0;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/b0;->a(Lio/appmetrica/analytics/impl/c0;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v1

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/n8;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/x8;->a:Lio/appmetrica/analytics/impl/n8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Lf;->b:Lio/appmetrica/analytics/impl/Mf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Nf;->b:Ljava/util/List;

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;->trim(Ljava/util/List;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object p1

    iget-object v2, p1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/appmetrica/analytics/impl/n8;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/x8;->b:[Lio/appmetrica/analytics/impl/n8;

    move v2, v3

    move v4, v2

    :goto_0
    iget-object v5, p1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Lf;->a:Lio/appmetrica/analytics/impl/b0;

    iget-object v6, p1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appmetrica/analytics/impl/c0;

    invoke-virtual {v5, v6}, Lio/appmetrica/analytics/impl/b0;->a(Lio/appmetrica/analytics/impl/c0;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v5

    iget-object v6, v0, Lio/appmetrica/analytics/impl/x8;->b:[Lio/appmetrica/analytics/impl/n8;

    iget-object v7, v5, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v7, Lio/appmetrica/analytics/impl/n8;

    aput-object v7, v6, v2

    iget-object v5, v5, Lio/appmetrica/analytics/impl/Li;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    invoke-interface {v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :cond_1
    new-instance p0, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;

    invoke-direct {p0, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;-><init>(I)V

    const/4 v2, 0x3

    new-array v2, v2, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object p0, v2, p1

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    new-instance p1, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Li;)Lio/appmetrica/analytics/impl/Nf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Li;",
            ")",
            "Lio/appmetrica/analytics/impl/Nf;"
        }
    .end annotation

    .line 126
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Nf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Lf;->a(Lio/appmetrica/analytics/impl/Nf;)Lio/appmetrica/analytics/impl/Li;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Li;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
