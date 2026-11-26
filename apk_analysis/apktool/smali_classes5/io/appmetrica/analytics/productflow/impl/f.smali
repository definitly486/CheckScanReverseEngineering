.class public final Lio/appmetrica/analytics/productflow/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/productflow/impl/k;

.field public final b:Lio/appmetrica/analytics/productflow/impl/p;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/productflow/impl/k;Lio/appmetrica/analytics/productflow/impl/p;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/impl/f;->a:Lio/appmetrica/analytics/productflow/impl/k;

    iput-object p2, p0, Lio/appmetrica/analytics/productflow/impl/f;->b:Lio/appmetrica/analytics/productflow/impl/p;

    iput-object p3, p0, Lio/appmetrica/analytics/productflow/impl/f;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/productflow/impl/e;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;
    .locals 7

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/y;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/y;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lio/appmetrica/analytics/productflow/impl/y;->c:I

    iget-object v2, p0, Lio/appmetrica/analytics/productflow/impl/f;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v3, p1, Lio/appmetrica/analytics/productflow/impl/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v2

    iget-object v3, v2, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/productflow/impl/y;->b:[B

    iget-object v3, p0, Lio/appmetrica/analytics/productflow/impl/f;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v4, p1, Lio/appmetrica/analytics/productflow/impl/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v3

    iget-object v4, v3, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v0, Lio/appmetrica/analytics/productflow/impl/y;->a:[B

    iget-object v4, p1, Lio/appmetrica/analytics/productflow/impl/e;->c:Lio/appmetrica/analytics/productflow/OfferPrice;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v6, p0, Lio/appmetrica/analytics/productflow/impl/f;->a:Lio/appmetrica/analytics/productflow/impl/k;

    invoke-virtual {v6, v4}, Lio/appmetrica/analytics/productflow/impl/k;->a(Lio/appmetrica/analytics/productflow/OfferPrice;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v4

    iget-object v6, v4, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v6, Lio/appmetrica/analytics/productflow/impl/r;

    iput-object v6, v0, Lio/appmetrica/analytics/productflow/impl/y;->g:Lio/appmetrica/analytics/productflow/impl/r;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/productflow/impl/e;->d:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/f;->b:Lio/appmetrica/analytics/productflow/impl/p;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/productflow/impl/p;->a(Ljava/util/Map;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v5

    iget-object p0, v5, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/productflow/impl/t;

    iput-object p0, v0, Lio/appmetrica/analytics/productflow/impl/y;->h:Lio/appmetrica/analytics/productflow/impl/t;

    :cond_1
    const/4 p0, 0x4

    new-array p0, p0, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 p1, 0x0

    aput-object v2, p0, p1

    const/4 p1, 0x1

    aput-object v3, p0, p1

    aput-object v4, p0, v1

    const/4 p1, 0x3

    aput-object v5, p0, p1

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p0

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object p1
.end method
