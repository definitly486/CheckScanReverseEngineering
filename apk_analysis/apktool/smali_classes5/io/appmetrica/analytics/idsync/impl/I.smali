.class public final Lio/appmetrica/analytics/idsync/impl/I;
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
.method public final a(Lio/appmetrica/analytics/idsync/impl/n;)Lio/appmetrica/analytics/idsync/impl/G;
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/String;

    .line 177
    iget-object v2, v0, Lio/appmetrica/analytics/idsync/impl/n;->a:[B

    sget-object v3, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 178
    new-instance v2, Lio/appmetrica/analytics/idsync/impl/D;

    .line 179
    iget-object v4, v0, Lio/appmetrica/analytics/idsync/impl/n;->b:Lio/appmetrica/analytics/idsync/impl/m;

    if-eqz v4, :cond_1

    iget v4, v4, Lio/appmetrica/analytics/idsync/impl/m;->a:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 180
    sget-object v4, Lio/appmetrica/analytics/idsync/impl/z;->b:Lio/appmetrica/analytics/idsync/impl/z;

    goto :goto_0

    .line 181
    :cond_0
    sget-object v4, Lio/appmetrica/analytics/idsync/impl/z;->a:Lio/appmetrica/analytics/idsync/impl/z;

    goto :goto_0

    .line 182
    :cond_1
    sget-object v4, Lio/appmetrica/analytics/idsync/impl/z;->a:Lio/appmetrica/analytics/idsync/impl/z;

    .line 183
    :goto_0
    invoke-direct {v2, v4}, Lio/appmetrica/analytics/idsync/impl/D;-><init>(Lio/appmetrica/analytics/idsync/impl/z;)V

    move-object v4, v2

    new-instance v2, Ljava/lang/String;

    .line 184
    iget-object v5, v0, Lio/appmetrica/analytics/idsync/impl/n;->c:[B

    invoke-direct {v2, v5, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 185
    iget-object v3, v0, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    .line 186
    array-length v5, v3

    invoke-static {v5}, Lm05;->b(I)I

    move-result v5

    const/16 v6, 0x10

    if-ge v5, v6, :cond_2

    move v5, v6

    :cond_2
    move-object v6, v4

    .line 187
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 188
    array-length v5, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_4

    aget-object v9, v3, v8

    .line 189
    new-instance v10, Ljava/lang/String;

    .line 190
    iget-object v11, v9, Lio/appmetrica/analytics/idsync/impl/l;->a:[B

    sget-object v12, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v9, v9, Lio/appmetrica/analytics/idsync/impl/l;->b:[[B

    .line 191
    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v9

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    array-length v12, v9

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_3

    aget-object v14, v9, v13

    .line 193
    new-instance v15, Ljava/lang/String;

    .line 194
    sget-object v7, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v15, v14, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 195
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 196
    :cond_3
    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 197
    :cond_4
    iget-wide v7, v0, Lio/appmetrica/analytics/idsync/impl/n;->e:J

    move-object v3, v6

    move-wide v5, v7

    .line 198
    iget-wide v7, v0, Lio/appmetrica/analytics/idsync/impl/n;->f:J

    .line 199
    iget-object v9, v0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    invoke-static {v9}, Lyr;->f0([I)Ljava/util/List;

    move-result-object v9

    .line 200
    iget-boolean v10, v0, Lio/appmetrica/analytics/idsync/impl/n;->h:Z

    .line 201
    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/n;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    :goto_3
    move-object v11, v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 202
    :goto_4
    new-instance v0, Lio/appmetrica/analytics/idsync/impl/G;

    invoke-direct/range {v0 .. v11}, Lio/appmetrica/analytics/idsync/impl/G;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/idsync/impl/D;Ljava/util/LinkedHashMap;JJLjava/util/List;ZLjava/lang/String;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/idsync/impl/G;)Lio/appmetrica/analytics/idsync/impl/n;
    .locals 10

    new-instance p0, Lio/appmetrica/analytics/idsync/impl/n;

    invoke-direct {p0}, Lio/appmetrica/analytics/idsync/impl/n;-><init>()V

    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->a:Ljava/lang/String;

    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->a:[B

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/m;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/m;-><init>()V

    iget-object v2, p1, Lio/appmetrica/analytics/idsync/impl/G;->c:Lio/appmetrica/analytics/idsync/impl/D;

    iget-object v2, v2, Lio/appmetrica/analytics/idsync/impl/D;->a:Lio/appmetrica/analytics/idsync/impl/z;

    sget-object v3, Lio/appmetrica/analytics/idsync/impl/H;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput v4, v0, Lio/appmetrica/analytics/idsync/impl/m;->a:I

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->b:Lio/appmetrica/analytics/idsync/impl/m;

    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->c:[B

    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v5, Lio/appmetrica/analytics/idsync/impl/l;

    invoke-direct {v5}, Lio/appmetrica/analytics/idsync/impl/l;-><init>()V

    sget-object v6, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v5, Lio/appmetrica/analytics/idsync/impl/l;->a:[B

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v6, v4, [[B

    move v7, v3

    :goto_2
    if-ge v7, v4, :cond_1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    iput-object v6, v5, Lio/appmetrica/analytics/idsync/impl/l;->b:[[B

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-array v0, v3, [Lio/appmetrica/analytics/idsync/impl/l;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/idsync/impl/l;

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    iget-wide v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->e:J

    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->e:J

    iget-wide v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->f:J

    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->f:J

    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->g:Ljava/util/List;

    invoke-static {v0}, Lqn1;->s0(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    iget-boolean v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->h:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/idsync/impl/n;->h:Z

    iget-object p1, p1, Lio/appmetrica/analytics/idsync/impl/G;->i:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/n;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/idsync/impl/G;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/I;->a(Lio/appmetrica/analytics/idsync/impl/G;)Lio/appmetrica/analytics/idsync/impl/n;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/idsync/impl/n;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/I;->a(Lio/appmetrica/analytics/idsync/impl/n;)Lio/appmetrica/analytics/idsync/impl/G;

    move-result-object p0

    return-object p0
.end method
