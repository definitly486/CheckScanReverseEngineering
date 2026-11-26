.class public abstract Lyads/dj6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/os4;ZZ)Lyads/aj6;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 187
    invoke-static {p1, p0, v0}, Lyads/dj6;->a(ILyads/os4;Z)Z

    .line 188
    :cond_0
    invoke-virtual {p0}, Lyads/os4;->e()J

    move-result-wide v1

    long-to-int p1, v1

    .line 189
    sget-object v1, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v1}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lyads/os4;->e()J

    move-result-wide v1

    long-to-int p1, v1

    .line 191
    new-array p1, p1, [Ljava/lang/String;

    :goto_0
    int-to-long v3, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    .line 192
    invoke-virtual {p0}, Lyads/os4;->e()J

    move-result-wide v3

    long-to-int v3, v3

    .line 193
    sget-object v4, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3, v4}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 194
    aput-object v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 195
    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    .line 196
    :cond_2
    const-string p0, "framing bit expected to be set"

    const/4 p1, 0x0

    .line 197
    invoke-static {p0, p1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object p1

    .line 198
    :cond_3
    :goto_1
    new-instance p0, Lyads/aj6;

    invoke-direct {p0, p1}, Lyads/aj6;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lyads/os4;)Lyads/cj6;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-static {v0, p0, v1}, Lyads/dj6;->a(ILyads/os4;Z)Z

    .line 169
    invoke-virtual {p0}, Lyads/os4;->c()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Top bit not zero: "

    if-ltz v0, :cond_3

    .line 170
    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v4

    .line 171
    invoke-virtual {p0}, Lyads/os4;->c()I

    move-result v5

    if-ltz v5, :cond_2

    .line 172
    invoke-virtual {p0}, Lyads/os4;->c()I

    move-result v0

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    .line 173
    :goto_0
    invoke-virtual {p0}, Lyads/os4;->c()I

    move-result v0

    if-gtz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v0

    .line 174
    :goto_1
    invoke-virtual {p0}, Lyads/os4;->c()I

    .line 175
    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    int-to-double v1, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 176
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-double v2, v0

    .line 177
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v9, v2

    .line 178
    invoke-virtual {p0}, Lyads/os4;->k()I

    .line 179
    iget-object v0, p0, Lyads/os4;->a:[B

    .line 180
    iget p0, p0, Lyads/os4;->c:I

    .line 181
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    .line 182
    new-instance v3, Lyads/cj6;

    move v8, v1

    invoke-direct/range {v3 .. v10}, Lyads/cj6;-><init>(IIIIII[B)V

    return-object v3

    .line 183
    :cond_2
    invoke-static {v5, v2}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1

    .line 185
    :cond_3
    invoke-static {v0, v2}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Ljava/util/List;)Lyads/h84;
    .locals 18

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v5, Lyads/u56;->a:I

    const-string v5, "="

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const-string v8, "VorbisUtil"

    if-eq v7, v6, :cond_0

    const-string v5, "Failed to parse Vorbis comment: "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    aget-object v0, v5, v2

    const-string v6, "METADATA_BLOCK_PICTURE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    aget-object v0, v5, v6

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v5, Lyads/os4;

    invoke-direct {v5, v0}, Lyads/os4;-><init>([B)V

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v10

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v0

    sget-object v6, Lyads/az;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v0, v6}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v0

    sget-object v6, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v0, v6}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v13

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v14

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v15

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v16

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v0

    new-array v6, v0, [B

    invoke-virtual {v5, v6, v2, v0}, Lyads/os4;->a([BII)V

    new-instance v9, Lyads/zu4;

    move-object/from16 v17, v6

    invoke-direct/range {v9 .. v17}, Lyads/zu4;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "Failed to parse vorbis picture"

    invoke-static {v5, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lyads/wi6;

    aget-object v7, v5, v2

    aget-object v5, v5, v6

    invoke-direct {v0, v7, v5}, Lyads/wi6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    new-instance v0, Lyads/h84;

    invoke-direct {v0, v1}, Lyads/h84;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v0
.end method

.method public static a(ILyads/os4;Z)Z
    .locals 3

    .line 199
    iget v0, p1, Lyads/os4;->c:I

    .line 200
    iget v1, p1, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    if-eqz p2, :cond_0

    return v2

    .line 201
    :cond_0
    iget p0, p1, Lyads/os4;->c:I

    iget p1, p1, Lyads/os4;->b:I

    sub-int/2addr p0, p1

    .line 202
    const-string p1, "too short header: "

    invoke-static {p0, p1}, Lu4;->c(ILjava/lang/String;)V

    return v2

    .line 203
    :cond_1
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_3

    if-eqz p2, :cond_2

    return v2

    .line 204
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "expected header type "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-static {p0, p1}, Lc9;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-static {p0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2

    .line 207
    :cond_3
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_5

    .line 208
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_5

    .line 209
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_5

    .line 210
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_5

    .line 211
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_5

    .line 212
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    return v2

    .line 213
    :cond_6
    const-string p0, "expected characters \'vorbis\'"

    .line 214
    invoke-static {p0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2
.end method
