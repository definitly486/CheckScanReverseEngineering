.class public final Lio/appmetrica/analytics/impl/Uf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ce;

.field public final b:Lio/appmetrica/analytics/impl/Lf;

.field public final c:Lio/appmetrica/analytics/impl/z3;

.field public final d:Lio/appmetrica/analytics/impl/Wf;

.field public final e:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

.field public final f:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;


# direct methods
.method public constructor <init>()V
    .locals 7

    new-instance v1, Lio/appmetrica/analytics/impl/Ce;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Ce;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Lf;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Lf;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/z3;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/z3;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/Wf;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Wf;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    const/16 v0, 0x64

    invoke-direct {v5, v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;-><init>(I)V

    new-instance v6, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    const/16 v0, 0x3e8

    invoke-direct {v6, v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;-><init>(I)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/Uf;-><init>(Lio/appmetrica/analytics/impl/Ce;Lio/appmetrica/analytics/impl/Lf;Lio/appmetrica/analytics/impl/z3;Lio/appmetrica/analytics/impl/Wf;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ce;Lio/appmetrica/analytics/impl/Lf;Lio/appmetrica/analytics/impl/z3;Lio/appmetrica/analytics/impl/Wf;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Uf;->a:Lio/appmetrica/analytics/impl/Ce;

    .line 41
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Uf;->b:Lio/appmetrica/analytics/impl/Lf;

    .line 42
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Uf;->c:Lio/appmetrica/analytics/impl/z3;

    .line 43
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Uf;->d:Lio/appmetrica/analytics/impl/Wf;

    .line 44
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Uf;->e:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    .line 45
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Uf;->f:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Vf;)Lio/appmetrica/analytics/impl/Li;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Vf;",
            ")",
            "Lio/appmetrica/analytics/impl/Li;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/y8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/y8;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Uf;->e:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Vf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v1

    iget-object v2, v1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/y8;->a:[B

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Uf;->f:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Vf;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v2

    iget-object v3, v2, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/y8;->b:[B

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Vf;->c:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Uf;->c:Lio/appmetrica/analytics/impl/z3;

    invoke-virtual {v5, v3}, Lio/appmetrica/analytics/impl/z3;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v3

    iget-object v5, v3, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v5, Lio/appmetrica/analytics/impl/q8;

    iput-object v5, v0, Lio/appmetrica/analytics/impl/y8;->c:Lio/appmetrica/analytics/impl/q8;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v5, p1, Lio/appmetrica/analytics/impl/Vf;->d:Ljava/util/Map;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lio/appmetrica/analytics/impl/Uf;->a:Lio/appmetrica/analytics/impl/Ce;

    invoke-virtual {v6, v5}, Lio/appmetrica/analytics/impl/Ce;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v5

    iget-object v6, v5, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v6, Lio/appmetrica/analytics/impl/w8;

    iput-object v6, v0, Lio/appmetrica/analytics/impl/y8;->d:Lio/appmetrica/analytics/impl/w8;

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    iget-object v6, p1, Lio/appmetrica/analytics/impl/Vf;->e:Lio/appmetrica/analytics/impl/Nf;

    if-eqz v6, :cond_2

    iget-object v7, p0, Lio/appmetrica/analytics/impl/Uf;->b:Lio/appmetrica/analytics/impl/Lf;

    invoke-virtual {v7, v6}, Lio/appmetrica/analytics/impl/Lf;->a(Lio/appmetrica/analytics/impl/Nf;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v6

    iget-object v7, v6, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v7, Lio/appmetrica/analytics/impl/x8;

    iput-object v7, v0, Lio/appmetrica/analytics/impl/y8;->e:Lio/appmetrica/analytics/impl/x8;

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    iget-object v7, p1, Lio/appmetrica/analytics/impl/Vf;->f:Lio/appmetrica/analytics/impl/Nf;

    if-eqz v7, :cond_3

    iget-object v8, p0, Lio/appmetrica/analytics/impl/Uf;->b:Lio/appmetrica/analytics/impl/Lf;

    invoke-virtual {v8, v7}, Lio/appmetrica/analytics/impl/Lf;->a(Lio/appmetrica/analytics/impl/Nf;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v7

    iget-object v8, v7, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v8, Lio/appmetrica/analytics/impl/x8;

    iput-object v8, v0, Lio/appmetrica/analytics/impl/y8;->f:Lio/appmetrica/analytics/impl/x8;

    goto :goto_3

    :cond_3
    move-object v7, v4

    :goto_3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Vf;->g:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Uf;->d:Lio/appmetrica/analytics/impl/Wf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Wf;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v4

    iget-object p0, v4, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast p0, [Lio/appmetrica/analytics/impl/z8;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/y8;->g:[Lio/appmetrica/analytics/impl/z8;

    :cond_4
    const/4 p0, 0x7

    new-array p0, p0, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    const/4 p1, 0x1

    aput-object v2, p0, p1

    const/4 p1, 0x2

    aput-object v3, p0, p1

    const/4 p1, 0x3

    aput-object v5, p0, p1

    const/4 p1, 0x4

    aput-object v6, p0, p1

    const/4 p1, 0x5

    aput-object v7, p0, p1

    const/4 p1, 0x6

    aput-object v4, p0, p1

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    new-instance p1, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Li;)Lio/appmetrica/analytics/impl/Vf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Li;",
            ")",
            "Lio/appmetrica/analytics/impl/Vf;"
        }
    .end annotation

    .line 167
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Vf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Uf;->a(Lio/appmetrica/analytics/impl/Vf;)Lio/appmetrica/analytics/impl/Li;

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
