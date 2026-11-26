.class public final Lio/appmetrica/analytics/productflow/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/productflow/impl/k;

.field public final b:Lio/appmetrica/analytics/productflow/impl/p;

.field public final c:Lio/appmetrica/analytics/productflow/impl/l;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/productflow/impl/k;Lio/appmetrica/analytics/productflow/impl/p;Lio/appmetrica/analytics/productflow/impl/l;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/impl/n;->a:Lio/appmetrica/analytics/productflow/impl/k;

    iput-object p2, p0, Lio/appmetrica/analytics/productflow/impl/n;->b:Lio/appmetrica/analytics/productflow/impl/p;

    iput-object p3, p0, Lio/appmetrica/analytics/productflow/impl/n;->c:Lio/appmetrica/analytics/productflow/impl/l;

    iput-object p4, p0, Lio/appmetrica/analytics/productflow/impl/n;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/productflow/impl/m;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lio/appmetrica/analytics/productflow/impl/y;

    invoke-direct {v2}, Lio/appmetrica/analytics/productflow/impl/y;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Lio/appmetrica/analytics/productflow/impl/y;->c:I

    iget-object v4, v0, Lio/appmetrica/analytics/productflow/impl/n;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v5, v1, Lio/appmetrica/analytics/productflow/impl/m;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v4

    iget-object v5, v4, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v2, Lio/appmetrica/analytics/productflow/impl/y;->a:[B

    iget-object v5, v0, Lio/appmetrica/analytics/productflow/impl/n;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v6, v1, Lio/appmetrica/analytics/productflow/impl/m;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v5

    iget-object v6, v5, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v2, Lio/appmetrica/analytics/productflow/impl/y;->b:[B

    new-instance v6, Lio/appmetrica/analytics/productflow/impl/w;

    invoke-direct {v6}, Lio/appmetrica/analytics/productflow/impl/w;-><init>()V

    iput-object v6, v2, Lio/appmetrica/analytics/productflow/impl/y;->d:Lio/appmetrica/analytics/productflow/impl/w;

    iget-object v6, v0, Lio/appmetrica/analytics/productflow/impl/n;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v7, v1, Lio/appmetrica/analytics/productflow/impl/m;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v6

    iget-object v7, v2, Lio/appmetrica/analytics/productflow/impl/y;->d:Lio/appmetrica/analytics/productflow/impl/w;

    iget-object v8, v6, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v7, Lio/appmetrica/analytics/productflow/impl/w;->a:[B

    iget-object v7, v0, Lio/appmetrica/analytics/productflow/impl/n;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v8, v1, Lio/appmetrica/analytics/productflow/impl/m;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v7

    iget-object v8, v2, Lio/appmetrica/analytics/productflow/impl/y;->d:Lio/appmetrica/analytics/productflow/impl/w;

    iget-object v9, v7, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, v8, Lio/appmetrica/analytics/productflow/impl/w;->b:[B

    iget-object v8, v1, Lio/appmetrica/analytics/productflow/impl/m;->e:Lio/appmetrica/analytics/productflow/OfferPrice;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    iget-object v10, v0, Lio/appmetrica/analytics/productflow/impl/n;->a:Lio/appmetrica/analytics/productflow/impl/k;

    invoke-virtual {v10, v8}, Lio/appmetrica/analytics/productflow/impl/k;->a(Lio/appmetrica/analytics/productflow/OfferPrice;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v8

    iget-object v10, v8, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v10, Lio/appmetrica/analytics/productflow/impl/r;

    iput-object v10, v2, Lio/appmetrica/analytics/productflow/impl/y;->g:Lio/appmetrica/analytics/productflow/impl/r;

    goto :goto_0

    :cond_0
    move-object v8, v9

    :goto_0
    iget-object v10, v1, Lio/appmetrica/analytics/productflow/impl/m;->f:Ljava/util/Map;

    if-eqz v10, :cond_1

    iget-object v11, v0, Lio/appmetrica/analytics/productflow/impl/n;->b:Lio/appmetrica/analytics/productflow/impl/p;

    invoke-virtual {v11, v10}, Lio/appmetrica/analytics/productflow/impl/p;->a(Ljava/util/Map;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v10

    iget-object v11, v10, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v11, Lio/appmetrica/analytics/productflow/impl/t;

    iput-object v11, v2, Lio/appmetrica/analytics/productflow/impl/y;->h:Lio/appmetrica/analytics/productflow/impl/t;

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    iget-object v1, v1, Lio/appmetrica/analytics/productflow/impl/m;->g:Lio/appmetrica/analytics/productflow/OfferReferrer;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x3

    if-eqz v1, :cond_2

    iget-object v0, v0, Lio/appmetrica/analytics/productflow/impl/n;->c:Lio/appmetrica/analytics/productflow/impl/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lio/appmetrica/analytics/productflow/impl/u;

    invoke-direct {v9}, Lio/appmetrica/analytics/productflow/impl/u;-><init>()V

    iget-object v14, v0, Lio/appmetrica/analytics/productflow/impl/l;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    invoke-virtual {v1}, Lio/appmetrica/analytics/productflow/OfferReferrer;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v14

    iget-object v15, v14, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v15

    iput-object v15, v9, Lio/appmetrica/analytics/productflow/impl/u;->a:[B

    iget-object v15, v0, Lio/appmetrica/analytics/productflow/impl/l;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    move/from16 v16, v3

    invoke-virtual {v1}, Lio/appmetrica/analytics/productflow/OfferReferrer;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v3

    iget-object v15, v3, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v15

    iput-object v15, v9, Lio/appmetrica/analytics/productflow/impl/u;->b:[B

    iget-object v0, v0, Lio/appmetrica/analytics/productflow/impl/l;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    invoke-virtual {v1}, Lio/appmetrica/analytics/productflow/OfferReferrer;->getScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v0

    iget-object v1, v0, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v9, Lio/appmetrica/analytics/productflow/impl/u;->c:[B

    new-array v1, v13, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    aput-object v14, v1, v12

    aput-object v3, v1, v16

    aput-object v0, v1, v11

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    invoke-direct {v1, v9, v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    iget-object v0, v2, Lio/appmetrica/analytics/productflow/impl/y;->d:Lio/appmetrica/analytics/productflow/impl/w;

    iget-object v3, v1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/productflow/impl/u;

    iput-object v3, v0, Lio/appmetrica/analytics/productflow/impl/w;->c:Lio/appmetrica/analytics/productflow/impl/u;

    move-object v9, v1

    goto :goto_2

    :cond_2
    move/from16 v16, v3

    :goto_2
    const/4 v0, 0x7

    new-array v0, v0, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    aput-object v4, v0, v12

    aput-object v5, v0, v16

    aput-object v6, v0, v11

    aput-object v7, v0, v13

    const/4 v1, 0x4

    aput-object v8, v0, v1

    const/4 v1, 0x5

    aput-object v10, v0, v1

    const/4 v1, 0x6

    aput-object v9, v0, v1

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object v1
.end method
