.class public final Lio/appmetrica/analytics/productflow/impl/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/impl/p;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;
    .locals 7

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/t;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/t;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/p;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;->trim(Ljava/util/Map;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object p0

    iget-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->metaInfo:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    check-cast p1, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionTrimInfo;

    iget p1, p1, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionTrimInfo;->itemsDropped:I

    iput p1, v0, Lio/appmetrica/analytics/productflow/impl/t;->b:I

    iget-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lio/appmetrica/analytics/productflow/impl/s;

    iput-object v2, v0, Lio/appmetrica/analytics/productflow/impl/t;->a:[Lio/appmetrica/analytics/productflow/impl/s;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, v0, Lio/appmetrica/analytics/productflow/impl/t;->a:[Lio/appmetrica/analytics/productflow/impl/s;

    new-instance v6, Lio/appmetrica/analytics/productflow/impl/s;

    invoke-direct {v6}, Lio/appmetrica/analytics/productflow/impl/s;-><init>()V

    aput-object v6, v5, v2

    iget-object v5, v0, Lio/appmetrica/analytics/productflow/impl/t;->a:[Lio/appmetrica/analytics/productflow/impl/s;

    aget-object v5, v5, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v5, Lio/appmetrica/analytics/productflow/impl/s;->a:[B

    iget-object v5, v0, Lio/appmetrica/analytics/productflow/impl/t;->a:[Lio/appmetrica/analytics/productflow/impl/s;

    aget-object v2, v5, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v2, Lio/appmetrica/analytics/productflow/impl/s;->b:[B

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->metaInfo:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    check-cast p1, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionTrimInfo;

    invoke-virtual {p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->getBytesTruncated()I

    const/4 p1, 0x1

    new-array p1, p1, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    aput-object p0, p1, v1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    move-result p0

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;-><init>(I)V

    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object p1
.end method
