.class public final Lio/appmetrica/analytics/impl/C2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Dm;)Lio/appmetrica/analytics/impl/B2;
    .locals 6

    .line 82
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Dm;->a:[Lio/appmetrica/analytics/impl/Cm;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 84
    new-instance v3, Landroid/util/Pair;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/Cm;->a:Ljava/lang/String;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Cm;->b:Lio/appmetrica/analytics/impl/Bm;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 85
    :cond_0
    new-instance v5, Lio/appmetrica/analytics/impl/A2;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Bm;->a:Ljava/lang/String;

    invoke-direct {v5, v2}, Lio/appmetrica/analytics/impl/A2;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 86
    :goto_1
    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    new-instance p1, Lio/appmetrica/analytics/impl/B2;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/B2;-><init>(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/B2;)Lio/appmetrica/analytics/impl/Dm;
    .locals 4

    new-instance p0, Lio/appmetrica/analytics/impl/Dm;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Dm;-><init>()V

    iget-object v0, p1, Lio/appmetrica/analytics/impl/B2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lio/appmetrica/analytics/impl/Cm;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Dm;->a:[Lio/appmetrica/analytics/impl/Cm;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/B2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lio/appmetrica/analytics/impl/Cm;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Cm;-><init>()V

    iget-object v2, p1, Lio/appmetrica/analytics/impl/B2;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lio/appmetrica/analytics/impl/Cm;->a:Ljava/lang/String;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_1

    new-instance v3, Lio/appmetrica/analytics/impl/Bm;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Bm;-><init>()V

    iput-object v3, v1, Lio/appmetrica/analytics/impl/Cm;->b:Lio/appmetrica/analytics/impl/Bm;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/A2;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    new-instance v3, Lio/appmetrica/analytics/impl/Bm;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Bm;-><init>()V

    iget-object v2, v2, Lio/appmetrica/analytics/impl/A2;->a:Ljava/lang/String;

    iput-object v2, v3, Lio/appmetrica/analytics/impl/Bm;->a:Ljava/lang/String;

    move-object v2, v3

    :goto_1
    iput-object v2, v1, Lio/appmetrica/analytics/impl/Cm;->b:Lio/appmetrica/analytics/impl/Bm;

    :cond_1
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Dm;->a:[Lio/appmetrica/analytics/impl/Cm;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/B2;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C2;->a(Lio/appmetrica/analytics/impl/B2;)Lio/appmetrica/analytics/impl/Dm;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Dm;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C2;->a(Lio/appmetrica/analytics/impl/Dm;)Lio/appmetrica/analytics/impl/B2;

    move-result-object p0

    return-object p0
.end method
