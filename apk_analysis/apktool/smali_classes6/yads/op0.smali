.class public final Lyads/op0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/xv;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public b:J

.field public final c:Lyads/lp0;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lyads/op0;->b:J

    new-instance v0, Lyads/lp0;

    invoke-direct {v0, p1}, Lyads/lp0;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lyads/op0;->c:Lyads/lp0;

    iput p2, p0, Lyads/op0;->d:I

    return-void
.end method

.method public static a(Lyads/np0;)I
    .locals 4

    .line 252
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 253
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v3

    if-eq v3, v2, :cond_2

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 254
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v3

    if-eq v3, v2, :cond_1

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    .line 255
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result p0

    if-eq p0, v2, :cond_0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0

    .line 256
    :cond_0
    invoke-static {}, Ln7;->e()V

    return v1

    .line 257
    :cond_1
    invoke-static {}, Ln7;->e()V

    return v1

    .line 258
    :cond_2
    invoke-static {}, Ln7;->e()V

    return v1

    .line 259
    :cond_3
    invoke-static {}, Ln7;->e()V

    return v1
.end method

.method public static a(Ljava/io/BufferedOutputStream;I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    .line 260
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 261
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 262
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 263
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static a(Ljava/io/BufferedOutputStream;J)V
    .locals 2

    long-to-int v0, p1

    int-to-byte v0, v0

    .line 264
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 265
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 266
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 267
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 268
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 269
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 270
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 271
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static a(Lyads/np0;J)[B
    .locals 5

    .line 245
    iget-wide v0, p0, Lyads/np0;->b:J

    .line 246
    iget-wide v2, p0, Lyads/np0;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 247
    new-array p1, v2, [B

    .line 248
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    .line 249
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v2, "streamToBytes length="

    const-string v3, ", maxLength="

    .line 250
    invoke-static {p1, p2, v2, v3}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 251
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lyads/np0;)J
    .locals 10

    .line 180
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    int-to-long v4, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 181
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v0

    if-eq v0, v3, :cond_6

    int-to-long v8, v0

    and-long/2addr v8, v6

    const/16 v0, 0x8

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    .line 182
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v0

    if-eq v0, v3, :cond_5

    int-to-long v8, v0

    and-long/2addr v8, v6

    const/16 v0, 0x10

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    .line 183
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v0

    if-eq v0, v3, :cond_4

    int-to-long v8, v0

    and-long/2addr v8, v6

    const/16 v0, 0x18

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    .line 184
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v0

    if-eq v0, v3, :cond_3

    int-to-long v8, v0

    and-long/2addr v8, v6

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    .line 185
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v0

    if-eq v0, v3, :cond_2

    int-to-long v8, v0

    and-long/2addr v8, v6

    const/16 v0, 0x28

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    .line 186
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result v0

    if-eq v0, v3, :cond_1

    int-to-long v8, v0

    and-long/2addr v8, v6

    const/16 v0, 0x30

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    .line 187
    invoke-virtual {p0}, Lyads/np0;->read()I

    move-result p0

    if-eq p0, v3, :cond_0

    int-to-long v0, p0

    and-long/2addr v0, v6

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v4

    return-wide v0

    .line 188
    :cond_0
    invoke-static {}, Ln7;->e()V

    return-wide v1

    .line 189
    :cond_1
    invoke-static {}, Ln7;->e()V

    return-wide v1

    .line 190
    :cond_2
    invoke-static {}, Ln7;->e()V

    return-wide v1

    .line 191
    :cond_3
    invoke-static {}, Ln7;->e()V

    return-wide v1

    .line 192
    :cond_4
    invoke-static {}, Ln7;->e()V

    return-wide v1

    .line 193
    :cond_5
    invoke-static {}, Ln7;->e()V

    return-wide v1

    .line 194
    :cond_6
    invoke-static {}, Ln7;->e()V

    return-wide v1

    .line 195
    :cond_7
    invoke-static {}, Ln7;->e()V

    return-wide v1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 14

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lyads/op0;->c:Lyads/lp0;

    .line 222
    iget-object v0, v0, Lyads/lp0;->a:Ljava/io/File;

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    sget-boolean v0, Lyads/li6;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 226
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    .line 228
    :cond_2
    :try_start_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 230
    new-instance v6, Lyads/np0;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 231
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 232
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v4, v5}, Lyads/np0;-><init>(Ljava/io/BufferedInputStream;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 233
    :try_start_4
    invoke-static {v6}, Lyads/mp0;->a(Lyads/np0;)Lyads/mp0;

    move-result-object v7

    .line 234
    iput-wide v4, v7, Lyads/mp0;->a:J

    .line 235
    iget-object v4, v7, Lyads/mp0;->b:Ljava/lang/String;

    .line 236
    iget-object v5, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 237
    iget-wide v8, p0, Lyads/op0;->b:J

    iget-wide v10, v7, Lyads/mp0;->a:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lyads/op0;->b:J

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_3

    .line 238
    :cond_3
    iget-object v5, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/mp0;

    .line 239
    iget-wide v8, p0, Lyads/op0;->b:J

    iget-wide v10, v7, Lyads/mp0;->a:J

    iget-wide v12, v5, Lyads/mp0;->a:J

    sub-long/2addr v10, v12

    add-long/2addr v10, v8

    iput-wide v10, p0, Lyads/op0;->b:J

    .line 240
    :goto_2
    iget-object v5, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 241
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :goto_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 242
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 243
    :catchall_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 244
    :catch_0
    :try_start_7
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-virtual {p0, p1}, Lyads/op0;->get(Ljava/lang/String;)Lyads/wv;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 218
    iput-wide v1, v0, Lyads/wv;->f:J

    .line 219
    iput-wide v1, v0, Lyads/wv;->e:J

    .line 220
    invoke-virtual {p0, p1, v0}, Lyads/op0;->a(Ljava/lang/String;Lyads/wv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lyads/wv;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lyads/op0;->b:J

    iget-object v2, p2, Lyads/wv;->a:[B

    array-length v3, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    iget v3, p0, Lyads/op0;->d:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v0

    int-to-float v1, v3

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lyads/op0;->c:Lyads/lp0;

    iget-object v1, v1, Lyads/lp0;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lyads/mp0;

    invoke-direct {v2, p1, p2}, Lyads/mp0;-><init>(Ljava/lang/String;Lyads/wv;)V

    invoke-virtual {v2, v1}, Lyads/mp0;->a(Ljava/io/BufferedOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p2, Lyads/wv;->a:[B

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v2, Lyads/mp0;->a:J

    iget-object p2, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-wide v3, p0, Lyads/op0;->b:J

    iget-wide v5, v2, Lyads/mp0;->a:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lyads/op0;->b:J

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/mp0;

    iget-wide v3, p0, Lyads/op0;->b:J

    iget-wide v5, v2, Lyads/mp0;->a:J

    iget-wide v7, p2, Lyads/mp0;->a:J

    sub-long/2addr v5, v7

    add-long/2addr v5, v3

    iput-wide v5, p0, Lyads/op0;->b:J

    :goto_0
    iget-object p2, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lyads/op0;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    sget-boolean p1, Lyads/li6;->a:Z

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    sget-boolean p1, Lyads/li6;->a:Z

    :cond_3
    iget-object p1, p0, Lyads/op0;->c:Lyads/lp0;

    iget-object p1, p1, Lyads/lp0;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    sget-boolean p1, Lyads/li6;->a:Z

    iget-object p1, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lyads/op0;->b:J

    invoke-virtual {p0}, Lyads/op0;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 8

    iget-wide v0, p0, Lyads/op0;->b:J

    iget v2, p0, Lyads/op0;->d:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-boolean v0, Lyads/li6;->a:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/mp0;

    iget-object v2, v1, Lyads/mp0;->b:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lyads/op0;->c:Lyads/lp0;

    iget-object v4, v4, Lyads/lp0;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lad2;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lyads/op0;->b:J

    iget-wide v4, v1, Lyads/mp0;->a:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lyads/op0;->b:J

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lyads/mp0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-wide v1, p0, Lyads/op0;->b:J

    long-to-float v1, v1

    iget v2, p0, Lyads/op0;->d:I

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_3
    sget-boolean p0, Lyads/li6;->a:Z

    if-eqz p0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :cond_4
    :goto_1
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 166
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lyads/op0;->c:Lyads/lp0;

    .line 167
    iget-object v1, v1, Lyads/lp0;->a:Ljava/io/File;

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    .line 169
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 173
    iget-object v1, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/mp0;

    if-eqz v1, :cond_0

    .line 174
    iget-wide v4, p0, Lyads/op0;->b:J

    iget-wide v1, v1, Lyads/mp0;->a:J

    sub-long/2addr v4, v1

    iput-wide v4, p0, Lyads/op0;->b:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 176
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 178
    sget-boolean p1, Lyads/li6;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized get(Ljava/lang/String;)Lyads/wv;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/mp0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lyads/op0;->c:Lyads/lp0;

    iget-object v3, v3, Lyads/lp0;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Lyads/np0;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lyads/np0;-><init>(Ljava/io/BufferedInputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v3}, Lyads/mp0;->a(Lyads/np0;)Lyads/mp0;

    move-result-object v4

    iget-object v4, v4, Lyads/mp0;->b:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    sget-boolean v0, Lyads/li6;->a:Z

    iget-object v0, p0, Lyads/op0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/mp0;

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lyads/op0;->b:J

    iget-wide v6, v0, Lyads/mp0;->a:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lyads/op0;->b:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_5
    iget-wide v4, v3, Lyads/np0;->b:J

    iget-wide v6, v3, Lyads/np0;->c:J

    sub-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lyads/op0;->a(Lyads/np0;J)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lyads/mp0;->a([B)Lyads/wv;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_0
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    sget-boolean v0, Lyads/li6;->a:Z

    invoke-virtual {p0, p1}, Lyads/op0;->b(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method
