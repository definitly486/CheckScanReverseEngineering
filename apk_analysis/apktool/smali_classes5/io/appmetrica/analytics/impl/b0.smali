.class public final Lio/appmetrica/analytics/impl/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/J7;

.field public final b:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/J7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/J7;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/b0;-><init>(Lio/appmetrica/analytics/impl/J7;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/J7;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/appmetrica/analytics/impl/b0;->a:Lio/appmetrica/analytics/impl/J7;

    .line 18
    iput-object p2, p0, Lio/appmetrica/analytics/impl/b0;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/c0;)Lio/appmetrica/analytics/impl/Li;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/c0;",
            ")",
            "Lio/appmetrica/analytics/impl/Li;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/n8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/n8;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b0;->a:Lio/appmetrica/analytics/impl/J7;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/c0;->a:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/J7;->a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/r8;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/n8;->b:Lio/appmetrica/analytics/impl/r8;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b0;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/c0;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object p0

    iget-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/n8;->a:[B

    const/4 p1, 0x1

    new-array p1, p1, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    new-instance p1, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Li;)Lio/appmetrica/analytics/impl/c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Li;",
            ")",
            "Lio/appmetrica/analytics/impl/c0;"
        }
    .end annotation

    .line 52
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/c0;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/b0;->a(Lio/appmetrica/analytics/impl/c0;)Lio/appmetrica/analytics/impl/Li;

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
