.class public final Lio/appmetrica/analytics/productflow/impl/c;
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

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/impl/c;->a:Lio/appmetrica/analytics/productflow/impl/k;

    iput-object p2, p0, Lio/appmetrica/analytics/productflow/impl/c;->b:Lio/appmetrica/analytics/productflow/impl/p;

    iput-object p3, p0, Lio/appmetrica/analytics/productflow/impl/c;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/productflow/impl/a;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;
    .locals 10

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/y;

    invoke-direct {v0}, Lio/appmetrica/analytics/productflow/impl/y;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lio/appmetrica/analytics/productflow/impl/y;->c:I

    iget-object v2, p0, Lio/appmetrica/analytics/productflow/impl/c;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v3, p1, Lio/appmetrica/analytics/productflow/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v2

    iget-object v3, v2, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/productflow/impl/y;->b:[B

    iget-object v3, p0, Lio/appmetrica/analytics/productflow/impl/c;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v4, p1, Lio/appmetrica/analytics/productflow/impl/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v3

    iget-object v4, v3, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v0, Lio/appmetrica/analytics/productflow/impl/y;->a:[B

    new-instance v4, Lio/appmetrica/analytics/productflow/impl/v;

    invoke-direct {v4}, Lio/appmetrica/analytics/productflow/impl/v;-><init>()V

    iput-object v4, v0, Lio/appmetrica/analytics/productflow/impl/y;->f:Lio/appmetrica/analytics/productflow/impl/v;

    iget-object v5, p1, Lio/appmetrica/analytics/productflow/impl/a;->a:Lio/appmetrica/analytics/productflow/ProductFlowStatus;

    sget-object v6, Lio/appmetrica/analytics/productflow/impl/b;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    packed-switch v5, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return-object v9

    :pswitch_0
    const/4 v5, 0x6

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x5

    goto :goto_0

    :pswitch_2
    move v5, v1

    goto :goto_0

    :pswitch_3
    move v5, v8

    goto :goto_0

    :pswitch_4
    move v5, v7

    goto :goto_0

    :pswitch_5
    move v5, v6

    :goto_0
    iput v5, v4, Lio/appmetrica/analytics/productflow/impl/v;->a:I

    iget-object v4, p1, Lio/appmetrica/analytics/productflow/impl/a;->d:Lio/appmetrica/analytics/productflow/OfferPrice;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lio/appmetrica/analytics/productflow/impl/c;->a:Lio/appmetrica/analytics/productflow/impl/k;

    invoke-virtual {v5, v4}, Lio/appmetrica/analytics/productflow/impl/k;->a(Lio/appmetrica/analytics/productflow/OfferPrice;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v4

    iget-object v5, v4, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v5, Lio/appmetrica/analytics/productflow/impl/r;

    iput-object v5, v0, Lio/appmetrica/analytics/productflow/impl/y;->g:Lio/appmetrica/analytics/productflow/impl/r;

    goto :goto_1

    :cond_0
    move-object v4, v9

    :goto_1
    iget-object p1, p1, Lio/appmetrica/analytics/productflow/impl/a;->e:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/c;->b:Lio/appmetrica/analytics/productflow/impl/p;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/productflow/impl/p;->a(Ljava/util/Map;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v9

    iget-object p0, v9, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/productflow/impl/t;

    iput-object p0, v0, Lio/appmetrica/analytics/productflow/impl/y;->h:Lio/appmetrica/analytics/productflow/impl/t;

    :cond_1
    new-array p0, v1, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 p1, 0x0

    aput-object v2, p0, p1

    aput-object v3, p0, v6

    aput-object v4, p0, v7

    aput-object v9, p0, v8

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p0

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
