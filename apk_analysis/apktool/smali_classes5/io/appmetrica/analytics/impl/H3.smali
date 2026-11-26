.class public final Lio/appmetrica/analytics/impl/H3;
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

.method public static a(Lio/appmetrica/analytics/impl/I3;)Lio/appmetrica/analytics/impl/F3;
    .locals 6

    .line 123
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I3;->a:Lio/appmetrica/analytics/impl/K3;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, v0, Lio/appmetrica/analytics/impl/K3;->a:[Lio/appmetrica/analytics/impl/J3;

    .line 125
    array-length v1, v0

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    .line 126
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 127
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 128
    iget-object v5, v4, Lio/appmetrica/analytics/impl/J3;->a:Ljava/lang/String;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/J3;->b:Ljava/lang/String;

    .line 129
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 130
    :cond_2
    iget p0, p0, Lio/appmetrica/analytics/impl/I3;->b:I

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    .line 131
    sget-object p0, Lio/appmetrica/analytics/impl/f8;->c:Lio/appmetrica/analytics/impl/f8;

    goto :goto_1

    .line 132
    :cond_3
    sget-object p0, Lio/appmetrica/analytics/impl/f8;->f:Lio/appmetrica/analytics/impl/f8;

    goto :goto_1

    .line 133
    :cond_4
    sget-object p0, Lio/appmetrica/analytics/impl/f8;->e:Lio/appmetrica/analytics/impl/f8;

    goto :goto_1

    .line 134
    :cond_5
    sget-object p0, Lio/appmetrica/analytics/impl/f8;->d:Lio/appmetrica/analytics/impl/f8;

    goto :goto_1

    .line 135
    :cond_6
    sget-object p0, Lio/appmetrica/analytics/impl/f8;->c:Lio/appmetrica/analytics/impl/f8;

    .line 136
    :goto_1
    new-instance v0, Lio/appmetrica/analytics/impl/F3;

    invoke-direct {v0, v2, p0}, Lio/appmetrica/analytics/impl/F3;-><init>(Ljava/util/Map;Lio/appmetrica/analytics/impl/f8;)V

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/F3;)Lio/appmetrica/analytics/impl/I3;
    .locals 10

    new-instance v0, Lio/appmetrica/analytics/impl/I3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/I3;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F3;->a:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    new-instance v5, Lio/appmetrica/analytics/impl/K3;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/K3;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    new-array v7, v6, [Lio/appmetrica/analytics/impl/J3;

    move v8, v3

    :goto_0
    if-ge v8, v6, :cond_0

    new-instance v9, Lio/appmetrica/analytics/impl/J3;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/J3;-><init>()V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iput-object v7, v5, Lio/appmetrica/analytics/impl/K3;->a:[Lio/appmetrica/analytics/impl/J3;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v6, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, v5, Lio/appmetrica/analytics/impl/K3;->a:[Lio/appmetrica/analytics/impl/J3;

    aget-object v9, v9, v6

    iput-object v8, v9, Lio/appmetrica/analytics/impl/J3;->a:Ljava/lang/String;

    iput-object v7, v9, Lio/appmetrica/analytics/impl/J3;->b:Ljava/lang/String;

    add-int/2addr v6, v4

    goto :goto_1

    :cond_1
    move-object v5, v2

    :cond_2
    iput-object v5, v0, Lio/appmetrica/analytics/impl/I3;->a:Lio/appmetrica/analytics/impl/K3;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F3;->b:Lio/appmetrica/analytics/impl/f8;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_4

    const/4 v3, 0x2

    if-eq p0, v3, :cond_5

    const/4 v3, 0x3

    if-ne p0, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_4
    move v3, v4

    :cond_5
    :goto_2
    iput v3, v0, Lio/appmetrica/analytics/impl/I3;->b:I

    return-object v0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/L3;)Lio/appmetrica/analytics/impl/G3;
    .locals 4

    .line 109
    iget-object p0, p1, Lio/appmetrica/analytics/impl/L3;->a:Lio/appmetrica/analytics/impl/I3;

    if-nez p0, :cond_0

    new-instance p0, Lio/appmetrica/analytics/impl/I3;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/I3;-><init>()V

    :cond_0
    invoke-static {p0}, Lio/appmetrica/analytics/impl/H3;->a(Lio/appmetrica/analytics/impl/I3;)Lio/appmetrica/analytics/impl/F3;

    move-result-object p0

    .line 110
    iget-object p1, p1, Lio/appmetrica/analytics/impl/L3;->b:[Lio/appmetrica/analytics/impl/I3;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 113
    invoke-static {v3}, Lio/appmetrica/analytics/impl/H3;->a(Lio/appmetrica/analytics/impl/I3;)Lio/appmetrica/analytics/impl/F3;

    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    new-instance p1, Lio/appmetrica/analytics/impl/G3;

    invoke-direct {p1, p0, v0}, Lio/appmetrica/analytics/impl/G3;-><init>(Lio/appmetrica/analytics/impl/F3;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/G3;)Lio/appmetrica/analytics/impl/L3;
    .locals 4

    .line 116
    new-instance p0, Lio/appmetrica/analytics/impl/L3;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/L3;-><init>()V

    .line 117
    iget-object v0, p1, Lio/appmetrica/analytics/impl/G3;->a:Lio/appmetrica/analytics/impl/F3;

    .line 118
    invoke-static {v0}, Lio/appmetrica/analytics/impl/H3;->a(Lio/appmetrica/analytics/impl/F3;)Lio/appmetrica/analytics/impl/I3;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/L3;->a:Lio/appmetrica/analytics/impl/I3;

    .line 119
    iget-object v0, p1, Lio/appmetrica/analytics/impl/G3;->b:Ljava/util/List;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lio/appmetrica/analytics/impl/I3;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 121
    iget-object v3, p1, Lio/appmetrica/analytics/impl/G3;->b:Ljava/util/List;

    .line 122
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/F3;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/H3;->a(Lio/appmetrica/analytics/impl/F3;)Lio/appmetrica/analytics/impl/I3;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lio/appmetrica/analytics/impl/L3;->b:[Lio/appmetrica/analytics/impl/I3;

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/G3;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/H3;->a(Lio/appmetrica/analytics/impl/G3;)Lio/appmetrica/analytics/impl/L3;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/L3;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/H3;->a(Lio/appmetrica/analytics/impl/L3;)Lio/appmetrica/analytics/impl/G3;

    move-result-object p0

    return-object p0
.end method
