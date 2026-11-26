.class public final Lyads/le4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zg5;

.field public final b:Lyads/wm4;

.field public final c:Lyads/rm4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V
    .locals 2

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    new-instance v1, Lyads/wm4;

    invoke-direct {v1, p1, p2, p3, p4}, Lyads/wm4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    new-instance p1, Lyads/rm4;

    invoke-direct {p1}, Lyads/rm4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/le4;->a:Lyads/zg5;

    iput-object v1, p0, Lyads/le4;->b:Lyads/wm4;

    iput-object p1, p0, Lyads/le4;->c:Lyads/rm4;

    return-void
.end method

.method public static final a(Lyads/le4;Lyads/ak;Lf02;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lyads/he4;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/he4;

    iget v1, v0, Lyads/he4;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/he4;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/he4;

    invoke-direct {v0, p0, p2}, Lyads/he4;-><init>(Lyads/le4;Lf02;)V

    :goto_0
    iget-object p2, v0, Lyads/he4;->c:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/he4;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lyads/he4;->b:Lyads/ak;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p1, Lyads/ak;->c:Ljava/lang/Object;

    instance-of p2, p2, Lyads/v14;

    if-eqz p2, :cond_3

    move-object p2, p1

    goto :goto_1

    :cond_3
    move-object p2, v4

    :goto_1
    if-nez p2, :cond_4

    return-object p1

    :cond_4
    iget-object p0, p0, Lyads/le4;->b:Lyads/wm4;

    iget-object p1, p2, Lyads/ak;->c:Ljava/lang/Object;

    check-cast p1, Lyads/v14;

    iget-object p1, p1, Lyads/v14;->b:Lyads/r96;

    iput-object p2, v0, Lyads/he4;->b:Lyads/ak;

    iput v3, v0, Lyads/he4;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    new-instance v3, Lyads/sm4;

    invoke-direct {v3, p1, p0, v4}, Lyads/sm4;-><init>(Lyads/r96;Lyads/wm4;Le02;)V

    invoke-static {v2, v3, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v9, p2

    move-object p2, p0

    move-object p0, v9

    :goto_2
    check-cast p2, Lyads/r96;

    if-nez p2, :cond_6

    iget-object p1, p0, Lyads/ak;->c:Ljava/lang/Object;

    check-cast p1, Lyads/v14;

    iget-object v0, p1, Lyads/v14;->c:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object p1, p1, Lyads/v14;->a:Lyads/by3;

    if-nez p1, :cond_6

    return-object v4

    :cond_6
    iget-object p1, p0, Lyads/ak;->c:Ljava/lang/Object;

    check-cast p1, Lyads/v14;

    iget-object v0, p1, Lyads/v14;->a:Lyads/by3;

    iget-object p1, p1, Lyads/v14;->c:Ljava/util/List;

    new-instance v4, Lyads/v14;

    invoke-direct {v4, v0, p2, p1}, Lyads/v14;-><init>(Lyads/by3;Lyads/r96;Ljava/util/List;)V

    iget-object v2, p0, Lyads/ak;->a:Ljava/lang/String;

    iget-object v3, p0, Lyads/ak;->b:Ljava/lang/String;

    iget-object v5, p0, Lyads/ak;->d:Lyads/ot3;

    iget-boolean v6, p0, Lyads/ak;->e:Z

    iget-boolean v7, p0, Lyads/ak;->f:Z

    iget-object v8, p0, Lyads/ak;->g:Lyads/wr3;

    new-instance v1, Lyads/ak;

    invoke-direct/range {v1 .. v8}, Lyads/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lyads/ot3;ZZLyads/wr3;)V

    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/ee4;Lf02;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    instance-of v3, v2, Lyads/ie4;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lyads/ie4;

    iget v4, v3, Lyads/ie4;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lyads/ie4;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lyads/ie4;

    invoke-direct {v3, v0, v2}, Lyads/ie4;-><init>(Lyads/le4;Lf02;)V

    :goto_0
    iget-object v2, v3, Lyads/ie4;->c:Ljava/lang/Object;

    .line 145
    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    .line 146
    iget v5, v3, Lyads/ie4;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v0, v3, Lyads/ie4;->b:Lyads/ee4;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    .line 147
    iget-object v2, v0, Lyads/le4;->a:Lyads/zg5;

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 148
    iget-boolean v2, v2, Lyads/fe5;->E0:Z

    if-ne v2, v7, :cond_5

    .line 149
    iget-object v2, v1, Lyads/ee4;->a:Lyads/vg4;

    .line 150
    iget-object v2, v2, Lyads/vg4;->a:Ljava/util/List;

    .line 151
    iput-object v1, v3, Lyads/ie4;->b:Lyads/ee4;

    iput v7, v3, Lyads/ie4;->e:I

    .line 152
    sget-object v5, Lqo2;->a:Loi2;

    .line 153
    sget-object v5, Lsh2;->c:Lsh2;

    .line 154
    new-instance v7, Lyads/ke4;

    invoke-direct {v7, v2, v0, v6}, Lyads/ke4;-><init>(Ljava/util/List;Lyads/le4;Le02;)V

    .line 155
    invoke-static {v5, v7, v3}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_3

    return-object v4

    :cond_3
    move-object v0, v1

    .line 156
    :goto_1
    move-object v8, v2

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_4

    return-object v6

    .line 157
    :cond_4
    iget-object v1, v0, Lyads/ee4;->a:Lyads/vg4;

    .line 158
    iget-object v9, v1, Lyads/vg4;->b:Ljava/util/List;

    iget-object v10, v1, Lyads/vg4;->c:Ljava/util/List;

    iget-object v11, v1, Lyads/vg4;->d:Lyads/j5;

    iget-object v12, v1, Lyads/vg4;->e:Ljava/util/Map;

    iget-object v13, v1, Lyads/vg4;->f:Ljava/util/List;

    iget-object v14, v1, Lyads/vg4;->g:Ljava/util/List;

    iget-object v15, v1, Lyads/vg4;->h:Ljava/lang/String;

    iget-object v2, v1, Lyads/vg4;->i:Lyads/uj5;

    iget-object v1, v1, Lyads/vg4;->j:Lyads/n6;

    .line 159
    new-instance v7, Lyads/vg4;

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    invoke-direct/range {v7 .. v17}, Lyads/vg4;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/j5;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lyads/uj5;Lyads/n6;)V

    .line 160
    iget-object v1, v0, Lyads/ee4;->b:Lyads/d9;

    iget-object v0, v0, Lyads/ee4;->c:Lyads/e4;

    .line 161
    new-instance v2, Lyads/ee4;

    invoke-direct {v2, v0, v1, v7}, Lyads/ee4;-><init>(Lyads/e4;Lyads/d9;Lyads/vg4;)V

    return-object v2

    :cond_5
    return-object v1
.end method
