.class public final Lyads/mp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lyads/mp0;->b:Ljava/lang/String;

    .line 76
    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lyads/mp0;->c:Ljava/lang/String;

    .line 77
    iput-wide p3, p0, Lyads/mp0;->d:J

    .line 78
    iput-wide p5, p0, Lyads/mp0;->e:J

    .line 79
    iput-wide p7, p0, Lyads/mp0;->f:J

    .line 80
    iput-wide p9, p0, Lyads/mp0;->g:J

    .line 81
    iput-object p11, p0, Lyads/mp0;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyads/wv;)V
    .locals 13

    iget-object v2, p2, Lyads/wv;->b:Ljava/lang/String;

    iget-wide v3, p2, Lyads/wv;->c:J

    iget-wide v5, p2, Lyads/wv;->d:J

    iget-wide v7, p2, Lyads/wv;->e:J

    iget-wide v9, p2, Lyads/wv;->f:J

    iget-object v0, p2, Lyads/wv;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p1

    move-object v11, v0

    move-object v0, p0

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lyads/wv;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v11, Lyads/q83;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v11, v12, v1}, Lyads/q83;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v11}, Lyads/mp0;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method public static a(Lyads/np0;)Lyads/mp0;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {v0}, Lyads/op0;->a(Lyads/np0;)I

    move-result v1

    const v2, 0x20150306

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lyads/op0;->b(Lyads/np0;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lyads/op0;->a(Lyads/np0;J)[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lyads/op0;->b(Lyads/np0;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lyads/op0;->a(Lyads/np0;J)[B

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lyads/op0;->b(Lyads/np0;)J

    move-result-wide v5

    invoke-static {v0}, Lyads/op0;->b(Lyads/np0;)J

    move-result-wide v7

    invoke-static {v0}, Lyads/op0;->b(Lyads/np0;)J

    move-result-wide v9

    invoke-static {v0}, Lyads/op0;->b(Lyads/np0;)J

    move-result-wide v11

    invoke-static {v0}, Lyads/op0;->a(Lyads/np0;)I

    move-result v1

    if-ltz v1, :cond_2

    if-nez v1, :cond_0

    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v1, :cond_1

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static {v0}, Lyads/op0;->b(Lyads/np0;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lyads/op0;->a(Lyads/np0;J)[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v17, v5

    invoke-static {v0}, Lyads/op0;->b(Lyads/np0;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lyads/op0;->a(Lyads/np0;J)[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lyads/q83;

    invoke-direct {v5, v3, v4}, Lyads/q83;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object v3, v15

    move-object/from16 v4, v16

    move-wide/from16 v5, v17

    goto :goto_1

    :cond_1
    move-object v15, v3

    move-object/from16 v16, v4

    move-wide/from16 v17, v5

    new-instance v2, Lyads/mp0;

    invoke-direct/range {v2 .. v13}, Lyads/mp0;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v2

    :cond_2
    const-string v0, "readHeaderList size="

    invoke-static {v1, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a([B)Lyads/wv;
    .locals 4

    .line 157
    new-instance v0, Lyads/wv;

    invoke-direct {v0}, Lyads/wv;-><init>()V

    .line 158
    iput-object p1, v0, Lyads/wv;->a:[B

    .line 159
    iget-object p1, p0, Lyads/mp0;->c:Ljava/lang/String;

    iput-object p1, v0, Lyads/wv;->b:Ljava/lang/String;

    .line 160
    iget-wide v1, p0, Lyads/mp0;->d:J

    iput-wide v1, v0, Lyads/wv;->c:J

    .line 161
    iget-wide v1, p0, Lyads/mp0;->e:J

    iput-wide v1, v0, Lyads/wv;->d:J

    .line 162
    iget-wide v1, p0, Lyads/mp0;->f:J

    iput-wide v1, v0, Lyads/wv;->e:J

    .line 163
    iget-wide v1, p0, Lyads/mp0;->g:J

    iput-wide v1, v0, Lyads/wv;->f:J

    .line 164
    iget-object p1, p0, Lyads/mp0;->h:Ljava/util/List;

    .line 165
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/q83;

    .line 167
    iget-object v3, v2, Lyads/q83;->a:Ljava/lang/String;

    .line 168
    iget-object v2, v2, Lyads/q83;->b:Ljava/lang/String;

    .line 169
    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_0
    iput-object v1, v0, Lyads/wv;->g:Ljava/util/Map;

    .line 171
    iget-object p0, p0, Lyads/mp0;->h:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lyads/wv;->h:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/io/BufferedOutputStream;)Z
    .locals 6

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    const v2, 0x20150306

    .line 172
    :try_start_0
    invoke-static {p1, v2}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;I)V

    .line 173
    iget-object v2, p0, Lyads/mp0;->b:Ljava/lang/String;

    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 175
    array-length v3, v2

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;J)V

    .line 176
    array-length v3, v2

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 177
    iget-object v2, p0, Lyads/mp0;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 178
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 179
    array-length v3, v2

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;J)V

    .line 180
    array-length v3, v2

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iget-wide v2, p0, Lyads/mp0;->d:J

    invoke-static {p1, v2, v3}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;J)V

    .line 182
    iget-wide v2, p0, Lyads/mp0;->e:J

    invoke-static {p1, v2, v3}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;J)V

    .line 183
    iget-wide v2, p0, Lyads/mp0;->f:J

    invoke-static {p1, v2, v3}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;J)V

    .line 184
    iget-wide v2, p0, Lyads/mp0;->g:J

    invoke-static {p1, v2, v3}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;J)V

    .line 185
    iget-object p0, p0, Lyads/mp0;->h:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 186
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;I)V

    .line 187
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/q83;

    .line 188
    iget-object v3, v2, Lyads/q83;->a:Ljava/lang/String;

    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 190
    array-length v4, v3

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;J)V

    .line 191
    array-length v4, v3

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 192
    iget-object v2, v2, Lyads/q83;->b:Ljava/lang/String;

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 194
    array-length v3, v2

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;J)V

    .line 195
    array-length v3, v2

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {p1, v1}, Lyads/op0;->a(Ljava/io/BufferedOutputStream;I)V

    .line 197
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 198
    :catch_0
    sget-boolean p0, Lyads/li6;->a:Z

    return v1
.end method
