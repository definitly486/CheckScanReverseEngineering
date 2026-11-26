.class public abstract Lyads/pn4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/r75;Ljava/util/List;)Lyads/en4;
    .locals 7

    iget-object p0, p0, Lyads/r75;->p:Lyads/wv;

    const/4 v0, 0x1

    const/16 v1, 0x130

    if-nez p0, :cond_0

    new-instance p0, Lyads/en4;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, p1}, Lyads/en4;-><init>(I[BZLjava/util/List;)V

    return-object p0

    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/q83;

    iget-object v4, v4, Lyads/q83;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lyads/wv;->h:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lyads/wv;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/q83;

    iget-object v5, v4, Lyads/q83;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lyads/wv;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lyads/wv;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lyads/q83;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lyads/q83;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p1, Lyads/en4;

    iget-object p0, p0, Lyads/wv;->a:[B

    invoke-direct {p1, v1, p0, v0, v3}, Lyads/en4;-><init>(I[BZLjava/util/List;)V

    return-object p1
.end method

.method public static a(Ljava/io/InputStream;ILyads/rv;)[B
    .locals 3

    .line 163
    new-instance v0, Lyads/lx4;

    invoke-direct {v0, p2, p1}, Lyads/lx4;-><init>(Lyads/rv;I)V

    const/16 p1, 0x400

    .line 164
    :try_start_0
    invoke-virtual {p2, p1}, Lyads/rv;->a(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, p1, v2, v1}, Lyads/lx4;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 169
    :catch_0
    sget-boolean p0, Lyads/li6;->a:Z

    .line 170
    :goto_1
    invoke-virtual {p2, p1}, Lyads/rv;->a([B)V

    .line 171
    invoke-virtual {v0}, Lyads/lx4;->close()V

    return-object v1

    :catchall_1
    move-exception v1

    const/4 p1, 0x0

    .line 172
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 173
    :catch_1
    sget-boolean p0, Lyads/li6;->a:Z

    .line 174
    :goto_3
    invoke-virtual {p2, p1}, Lyads/rv;->a([B)V

    .line 175
    invoke-virtual {v0}, Lyads/lx4;->close()V

    .line 176
    throw v1
.end method
