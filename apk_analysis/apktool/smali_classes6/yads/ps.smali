.class public abstract Lyads/ps;
.super Lyads/r06;
.source "SourceFile"


# instance fields
.field public final B:Lyads/gj5;

.field public final C:Lyads/cj5;

.field public final D:Lyads/z76;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/q84;Ljava/lang/String;Lyads/qi6;Ljava/lang/Object;Lyads/h85;Lyads/l86;Lyads/gj5;Lyads/cj5;Lyads/z76;)V
    .locals 10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lyads/r06;-><init>(Landroid/content/Context;Lyads/e4;ILjava/lang/String;Lyads/ds;Ljava/lang/Object;Lyads/h85;Lyads/w75;Lyads/q84;)V

    move-object/from16 p1, p9

    iput-object p1, p0, Lyads/ps;->B:Lyads/gj5;

    move-object/from16 p1, p10

    iput-object p1, p0, Lyads/ps;->C:Lyads/cj5;

    move-object/from16 p1, p11

    iput-object p1, p0, Lyads/ps;->D:Lyads/z76;

    return-void
.end method


# virtual methods
.method public final a(Lyads/en4;I)Lyads/z85;
    .locals 10

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-ne v0, p2, :cond_d

    iget-object p2, p1, Lyads/en4;->b:[B

    if-eqz p2, :cond_d

    array-length p2, p2

    if-nez p2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object p2, p1, Lyads/en4;->c:Ljava/util/Map;

    sget-object v0, Lmx2;->b:Lmx2;

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    iget-object v2, p0, Lyads/ps;->C:Lyads/cj5;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lyads/cj5;->a(Ljava/util/Map;Z)V

    iget-object p0, p0, Lyads/ps;->D:Lyads/z76;

    iget-object p2, p0, Lyads/z76;->a:Lyads/ni6;

    iget-object v2, p2, Lyads/ni6;->a:Lyads/mi6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lyads/a95;

    iget v3, p1, Lyads/en4;->a:I

    new-instance v4, Lyads/b95;

    iget-object v5, p1, Lyads/en4;->b:[B

    invoke-direct {v4, v5}, Lyads/b95;-><init>([B)V

    iget-object v5, p1, Lyads/en4;->c:Ljava/util/Map;

    if-nez v5, :cond_2

    move-object v5, v0

    :cond_2
    invoke-direct {v2, v3, v4, v5}, Lyads/a95;-><init>(ILyads/b95;Ljava/util/Map;)V

    iget-object p2, p2, Lyads/ni6;->b:Lyads/gn4;

    invoke-virtual {p2, v2}, Lyads/gn4;->a(Lyads/a95;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lyads/yo;

    iget-object v3, p1, Lyads/en4;->c:Ljava/util/Map;

    if-nez v3, :cond_3

    move-object v3, v0

    :cond_3
    invoke-direct {v2, v3}, Lyads/yo;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lyads/z76;->c:Lyads/u83;

    iget-object v4, p1, Lyads/en4;->c:Ljava/util/Map;

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v4

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lyads/oa3;->L:Lyads/oa3;

    invoke-static {v0, v3}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Lyads/qe;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :cond_5
    move-object v9, v1

    :goto_1
    sget-object v3, Lyads/oa3;->m:Lyads/oa3;

    invoke-static {v0, v3}, Lyads/v83;->d(Ljava/util/Map;Lyads/oa3;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v0}, Lyads/e9;->a(Ljava/util/Map;)Lyads/c;

    move-result-object v8

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    :try_start_0
    iget-object p0, p0, Lyads/z76;->b:Lyads/w86;

    invoke-virtual {p0, p2, v2}, Lyads/w86;->a(Ljava/lang/String;Lyads/yo;)Lyads/q76;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object p0, p1, Lyads/en4;->c:Ljava/util/Map;

    const/4 p1, 0x0

    if-eqz p0, :cond_8

    sget-object v0, Lyads/oa3;->B:Lyads/oa3;

    invoke-static {p0, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    move-object v6, p2

    goto :goto_3

    :cond_9
    move-object v6, v1

    :goto_3
    new-instance v4, Lyads/v76;

    invoke-direct/range {v4 .. v9}, Lyads/v76;-><init>(Lyads/q76;Ljava/lang/String;Ljava/util/ArrayList;Lyads/c;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    :cond_a
    :goto_4
    move-object v4, v1

    :goto_5
    if-eqz v4, :cond_c

    iget-object p0, v4, Lyads/v76;->a:Lyads/q76;

    iget-object p0, p0, Lyads/q76;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    new-instance p0, Lyads/z85;

    invoke-direct {p0, v4, v1}, Lyads/z85;-><init>(Ljava/lang/Object;Lyads/wv;)V

    goto :goto_6

    :cond_b
    new-instance p0, Lyads/fn2;

    invoke-direct {p0}, Lyads/fn2;-><init>()V

    new-instance p1, Lyads/z85;

    invoke-direct {p1, p0}, Lyads/z85;-><init>(Lyads/hi6;)V

    move-object p0, p1

    :goto_6
    return-object p0

    :cond_c
    new-instance p0, Lyads/qs4;

    const-string p1, "Can\'t parse VAST response."

    invoke-direct {p0, p1}, Lyads/qs4;-><init>(Ljava/lang/String;)V

    new-instance p1, Lyads/z85;

    invoke-direct {p1, p0}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object p1

    :cond_d
    :goto_7
    sget p0, Lyads/i4;->d:I

    invoke-static {p1}, Lyads/h4;->a(Lyads/en4;)Lyads/i4;

    move-result-object p0

    iget-object p0, p0, Lyads/i4;->c:Lyads/o4;

    invoke-static {v1, p0}, Lyads/p4;->a(Lyads/e4;Lyads/o4;)Lyads/m4;

    move-result-object p0

    iget-object p0, p0, Lyads/m4;->b:Ljava/lang/String;

    new-instance p1, Lyads/hi6;

    invoke-direct {p1, p0}, Lyads/hi6;-><init>(Ljava/lang/String;)V

    new-instance p0, Lyads/z85;

    invoke-direct {p0, p1}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object p0
.end method

.method public final d()Ljava/util/Map;
    .locals 3

    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    iget-object v1, p0, Lyads/ps;->B:Lyads/gj5;

    invoke-virtual {v1}, Lyads/gj5;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lyads/oa3;->D:Lyads/oa3;

    invoke-virtual {v2}, Lyads/oa3;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    invoke-super {p0}, Lyads/r06;->d()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Luz4;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object p0

    return-object p0
.end method
