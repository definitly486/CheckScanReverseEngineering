.class public final Llx0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lfz3;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lgx0;->e:Lgx0;

    iget-object p0, p0, Lfz3;->i:Ljava/lang/String;

    invoke-static {p0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object p0

    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Lgx0;->e(Ljava/lang/String;)Lgx0;

    move-result-object p0

    invoke-virtual {p0}, Lgx0;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Liy6;)I
    .locals 12

    const-string v0, "expected an int but was \""

    :try_start_0
    iget-object v1, p0, Liy6;->c:Lbu0;

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Liy6;->c0(J)V

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    add-long v8, v6, v2

    invoke-virtual {p0, v8, v9}, Liy6;->request(J)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v1, v6, v7}, Lbu0;->Q(J)B

    move-result v10

    const/16 v11, 0x30

    if-lt v10, v11, :cond_0

    const/16 v11, 0x39

    if-le v10, v11, :cond_1

    :cond_0
    cmp-long v6, v6, v4

    if-nez v6, :cond_2

    const/16 v7, 0x2d

    if-eq v10, v7, :cond_1

    goto :goto_1

    :cond_1
    move-wide v6, v8

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    const/16 v0, 0x10

    invoke-static {v0}, Lga1;->b(I)V

    invoke-static {v10, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Expected a digit or \'-\' but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lbu0;->e0()J

    move-result-wide v1

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {p0, v6, v7}, Liy6;->S(J)Ljava/lang/String;

    move-result-object p0

    cmp-long v3, v1, v4

    if-ltz v3, :cond_5

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    long-to-int p0, v1

    return p0

    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljv3;)Ljava/util/Set;
    .locals 7

    invoke-virtual {p0}, Ljv3;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    const-string v4, "Vary"

    invoke-virtual {p0, v3}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [C

    const/16 v6, 0x2c

    aput-char v6, v5, v2

    invoke-static {v4, v5}, Lta8;->X(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    sget-object p0, Lox2;->b:Lox2;

    return-object p0

    :cond_4
    return-object v1
.end method
