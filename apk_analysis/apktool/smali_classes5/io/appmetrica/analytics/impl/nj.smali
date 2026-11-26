.class public final Lio/appmetrica/analytics/impl/nj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ce;

.field public final b:Lio/appmetrica/analytics/impl/z3;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/impl/Ce;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ce;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/z3;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/z3;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;-><init>(I)V

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;-><init>(I)V

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/nj;-><init>(Lio/appmetrica/analytics/impl/Ce;Lio/appmetrica/analytics/impl/z3;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ce;Lio/appmetrica/analytics/impl/z3;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/appmetrica/analytics/impl/nj;->a:Lio/appmetrica/analytics/impl/Ce;

    .line 30
    iput-object p2, p0, Lio/appmetrica/analytics/impl/nj;->b:Lio/appmetrica/analytics/impl/z3;

    .line 31
    iput-object p3, p0, Lio/appmetrica/analytics/impl/nj;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    .line 32
    iput-object p4, p0, Lio/appmetrica/analytics/impl/nj;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/qj;)Lio/appmetrica/analytics/impl/Li;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/qj;",
            ")",
            "Lio/appmetrica/analytics/impl/Li;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/B8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/B8;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/nj;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/qj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v1

    iget-object v2, v1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/B8;->a:[B

    iget-object v2, p1, Lio/appmetrica/analytics/impl/qj;->b:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lio/appmetrica/analytics/impl/nj;->b:Lio/appmetrica/analytics/impl/z3;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/z3;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v2

    iget-object v4, v2, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v4, Lio/appmetrica/analytics/impl/q8;

    iput-object v4, v0, Lio/appmetrica/analytics/impl/B8;->b:Lio/appmetrica/analytics/impl/q8;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lio/appmetrica/analytics/impl/nj;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v5, p1, Lio/appmetrica/analytics/impl/qj;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v4

    iget-object v5, v4, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v0, Lio/appmetrica/analytics/impl/B8;->c:[B

    iget-object p1, p1, Lio/appmetrica/analytics/impl/qj;->d:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nj;->a:Lio/appmetrica/analytics/impl/Ce;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ce;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v3

    iget-object p0, v3, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/impl/w8;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/B8;->d:Lio/appmetrica/analytics/impl/w8;

    :cond_1
    const/4 p0, 0x4

    new-array p0, p0, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    const/4 p1, 0x1

    aput-object v2, p0, p1

    const/4 p1, 0x2

    aput-object v4, p0, p1

    const/4 p1, 0x3

    aput-object v3, p0, p1

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    new-instance p1, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Li;)Lio/appmetrica/analytics/impl/qj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Li;",
            ")",
            "Lio/appmetrica/analytics/impl/qj;"
        }
    .end annotation

    .line 104
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/qj;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/nj;->a(Lio/appmetrica/analytics/impl/qj;)Lio/appmetrica/analytics/impl/Li;

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
