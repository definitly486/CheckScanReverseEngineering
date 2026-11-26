.class public final Lts5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljv6;


# instance fields
.field public final a:Ltu6;

.field public final b:Lns5;


# direct methods
.method public constructor <init>(Ltu6;Lns5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lts5;->a:Ltu6;

    iput-object p2, p0, Lts5;->b:Lns5;

    return-void
.end method

.method public static b(Lms5;La57;)Lus5;
    .locals 11

    iget-object v0, p1, La57;->a:Lz47;

    iget v3, v0, Lz47;->e:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lz47;->g:Ljv3;

    invoke-virtual {v0}, Ljv3;->c()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljv3;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lcv3;

    invoke-direct {v10, v6, v9}, Lcv3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p1, La57;->b:Ljava/lang/Object;

    check-cast v0, Lb57;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb57;->L()Lwu0;

    move-result-object v0

    invoke-interface {v0}, Lwu0;->w0()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lex0;->d(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move-object v5, v0

    goto :goto_4

    :cond_3
    :goto_3
    iget-object p1, p1, La57;->c:Lb57;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lb57;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    goto :goto_2

    :goto_4
    new-instance v1, Lus5;

    invoke-virtual {p0}, Lms5;->d()I

    move-result v2

    invoke-virtual {p0}, Lms5;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lus5;-><init>(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static c(Ljava/lang/String;)Lf37;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "{}"

    :cond_0
    sget-object v0, Lj95;->e:Ljava/util/regex/Pattern;

    const-string v0, "application/json"

    invoke-static {v0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v0

    invoke-static {p0, v0}, Lg37$a;->a(Ljava/lang/String;Lj95;)Lf37;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lc57;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    sget-object v0, Lj95;->e:Ljava/util/regex/Pattern;

    const-string v0, "application/json"

    invoke-static {v0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v0

    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lj95;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; charset=utf-8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    new-instance v2, Lbu0;

    invoke-direct {v2}, Lbu0;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p0, v3, v4, v1}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v3, v2, Lbu0;->c:J

    new-instance p0, Lc57;

    invoke-direct {p0, v0, v3, v4, v2}, Lc57;-><init>(Lj95;JLbu0;)V

    return-object p0
.end method

.method public static e(Lms5;La57;)Lus5;
    .locals 11

    iget-object v0, p1, La57;->a:Lz47;

    iget v3, v0, Lz47;->e:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lz47;->g:Ljv3;

    invoke-virtual {v0}, Ljv3;->c()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljv3;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lcv3;

    invoke-direct {v10, v6, v9}, Lcv3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p1, La57;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string p1, "<body>"

    invoke-static {v0, p1, v0}, Lta8;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</body>"

    const/4 v1, 0x6

    invoke-static {v1, p1, v0}, Lta8;->N(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v5, p1

    goto :goto_3

    :cond_3
    iget-object p1, p1, La57;->c:Lb57;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lb57;->v()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, ""

    goto :goto_2

    :goto_3
    new-instance v1, Lus5;

    invoke-virtual {p0}, Lms5;->d()I

    move-result v2

    invoke-virtual {p0}, Lms5;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lus5;-><init>(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lhv6;)Le08;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lts5;->a:Ltu6;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ltu6;->a(Lhv6;Z)Lmz7;

    move-result-object v0

    new-instance v2, Lss5;

    invoke-direct {v2, v1, p0, p1}, Lss5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Ly52;

    invoke-direct {p0, v2}, Ly52;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Le08;

    invoke-direct {p1, v0, p0}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final f(Ljava/util/ArrayList;Lhv6;)Le08;
    .locals 2

    new-instance v0, Lws5;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-direct {v0, p1, p2}, Lws5;-><init>(Ljava/util/List;Lhv6;)V

    iget-object p1, p0, Lts5;->a:Ltu6;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ltu6;->b(Lws5;Z)Lmz7;

    move-result-object p1

    new-instance v0, Lc54;

    invoke-direct {v0, v1, p0, p2}, Lc54;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lf90;

    const/4 p2, 0x4

    invoke-direct {p0, v0, p2}, Lf90;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Le08;

    invoke-direct {p2, p1, p0}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final g(Lms5;)Lu08;
    .locals 7

    invoke-virtual {p1}, Lms5;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lms5;->c()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcv3;

    invoke-virtual {v2}, Lcv3;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcv3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-virtual {p1}, Lms5;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lms5;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    :goto_2
    const-string v1, "GET"

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, p0, Lts5;->b:Lns5;

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v2, "POST_BYTE_ARRAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p1}, Lms5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lms5;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lts5;->c(Ljava/lang/String;)Lf37;

    move-result-object v2

    invoke-interface {v6, v0, v1, v2}, Lns5;->f(Ljava/util/Map;Ljava/lang/String;Lg37;)Lmz7;

    move-result-object v0

    new-instance v1, Lie1;

    invoke-direct {v1, p0, p1}, Lie1;-><init>(Lts5;Lms5;)V

    new-instance v2, Lfg2;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lfg2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lzi4;

    invoke-direct {v0, p0, p1}, Lzi4;-><init>(Lts5;Lms5;)V

    new-instance p0, Lu08;

    invoke-direct {p0, v1, v0, v5}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    return-object p0

    :sswitch_1
    const-string v2, "GET_BYTE_ARRAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1}, Lms5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Lns5;->c(Ljava/util/Map;Ljava/lang/String;)Lmz7;

    move-result-object v0

    new-instance v1, Lrs5;

    invoke-direct {v1, p0, p1}, Lrs5;-><init>(Lts5;Lms5;)V

    new-instance v2, Lzm3;

    invoke-direct {v2, v1, v4}, Lzm3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Low0;

    invoke-direct {v0, p0, p1}, Low0;-><init>(Lts5;Lms5;)V

    new-instance p0, Lu08;

    invoke-direct {p0, v1, v0, v5}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    return-object p0

    :sswitch_2
    const-string v2, "PUT_BYTE_ARRAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lms5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lms5;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lts5;->c(Ljava/lang/String;)Lf37;

    move-result-object v2

    invoke-interface {v6, v0, v1, v2}, Lns5;->a(Ljava/util/Map;Ljava/lang/String;Lg37;)Lmz7;

    move-result-object v0

    new-instance v1, Lt9;

    invoke-direct {v1, p0, p1}, Lt9;-><init>(Lts5;Lms5;)V

    new-instance v2, Lfl0;

    invoke-direct {v2, v1, v4}, Lfl0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lud1;

    invoke-direct {v0, p0, p1}, Lud1;-><init>(Lts5;Lms5;)V

    new-instance p0, Lu08;

    invoke-direct {p0, v1, v0, v5}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    return-object p0

    :sswitch_3
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lms5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lms5;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lts5;->c(Ljava/lang/String;)Lf37;

    move-result-object v2

    invoke-interface {v6, v0, v1, v2}, Lns5;->d(Ljava/util/Map;Ljava/lang/String;Lg37;)Lmz7;

    move-result-object v0

    new-instance v1, Lai1;

    invoke-direct {v1, p0, p1}, Lai1;-><init>(Lts5;Lms5;)V

    new-instance v2, Lv51;

    invoke-direct {v2, v1, v3}, Lv51;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lll0;

    invoke-direct {v0, p0, p1}, Lll0;-><init>(Lts5;Lms5;)V

    new-instance p0, Lu08;

    invoke-direct {p0, v1, v0, v5}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    return-object p0

    :sswitch_4
    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_4
    invoke-virtual {p1}, Lms5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Lns5;->e(Ljava/util/Map;Ljava/lang/String;)Lmz7;

    move-result-object v0

    new-instance v1, Lps5;

    invoke-direct {v1, p0, p1}, Lps5;-><init>(Lts5;Lms5;)V

    new-instance v2, Ljl0;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Ljl0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lkl0;

    invoke-direct {v0, p0, p1}, Lkl0;-><init>(Lts5;Lms5;)V

    new-instance p0, Lu08;

    invoke-direct {p0, v1, v0, v5}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    return-object p0

    :cond_9
    invoke-virtual {p1}, Lms5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lms5;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lts5;->c(Ljava/lang/String;)Lf37;

    move-result-object v2

    invoke-interface {v6, v0, v1, v2}, Lns5;->b(Ljava/util/Map;Ljava/lang/String;Lg37;)Lmz7;

    move-result-object v0

    new-instance v1, Lqs5;

    invoke-direct {v1, p0, p1}, Lqs5;-><init>(Lts5;Lms5;)V

    new-instance v2, Lml0;

    invoke-direct {v2, v1, v3}, Lml0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lp9;

    invoke-direct {v0, p0, p1}, Lp9;-><init>(Lts5;Lms5;)V

    new-instance p0, Lu08;

    invoke-direct {p0, v1, v0, v5}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x136ef -> :sswitch_4
        0x2590a0 -> :sswitch_3
        0x127a1392 -> :sswitch_2
        0x397d94eb -> :sswitch_1
        0x68277141 -> :sswitch_0
    .end sparse-switch
.end method

.method public final h(Lkd4;Lhv6;)Lmz7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkd4;",
            "Lhv6;",
            ")",
            "Lmz7<",
            "La57<",
            "Liv6;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lvs5;

    new-instance v2, Lx39;

    invoke-direct {v2, v1}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->a(Lpc4;Lx39;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvs5;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lvs5;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lvs5;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lms5;

    invoke-virtual {p0, v2}, Lts5;->g(Lms5;)Lu08;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget v0, Lgg3;->b:I

    new-instance v0, Lzg3;

    invoke-direct {v0, v1}, Lzg3;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lvg3;

    sget-object v2, Ln08;->INSTANCE:Ln08;

    sget v3, Lgg3;->b:I

    invoke-direct {v1, v0, v2, v3}, Lvg3;-><init>(Lzg3;Ln08;I)V

    new-instance v0, Los5;

    invoke-direct {v0, p1}, Los5;-><init>(Lvs5;)V

    sget-object p1, Lts5$a;->f:Lts5$a;

    new-instance v2, Lb9;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Lb9;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lig3;

    invoke-direct {p1, v1, v0, v2}, Lig3;-><init>(Lvg3;Los5;Lb9;)V

    new-instance v0, Lts5$b;

    invoke-direct {v0, p0, p2}, Lts5$b;-><init>(Lts5;Lhv6;)V

    new-instance v1, Lhl0;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lhl0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Le08;

    invoke-direct {v0, p1, v1}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lts5;->f(Ljava/util/ArrayList;Lhv6;)Le08;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lts5;->a:Ltu6;

    invoke-interface {p0, p2}, Ltu6;->c(Lhv6;)Lmz7;

    move-result-object p0

    return-object p0
.end method
