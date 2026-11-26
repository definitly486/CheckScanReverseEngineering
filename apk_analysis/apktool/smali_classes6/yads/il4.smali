.class public final Lyads/il4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly22;

.field public final b:Lyads/sl0;

.field public final c:Lyads/ix2;

.field public final d:Lyads/le4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly22;Lyads/e4;Lyads/t5;Lyads/bf5;)V
    .locals 3

    new-instance v0, Lyads/sl0;

    invoke-direct {v0, p1, p4}, Lyads/sl0;-><init>(Landroid/content/Context;Lyads/t5;)V

    new-instance v1, Lyads/ix2;

    invoke-direct {v1, p1, p4}, Lyads/ix2;-><init>(Landroid/content/Context;Lyads/t5;)V

    new-instance v2, Lyads/le4;

    invoke-direct {v2, p1, p3, p4, p5}, Lyads/le4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/il4;->a:Ly22;

    iput-object v0, p0, Lyads/il4;->b:Lyads/sl0;

    iput-object v1, p0, Lyads/il4;->c:Lyads/ix2;

    iput-object v2, p0, Lyads/il4;->d:Lyads/le4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/d9;Lyads/ee4;Lyads/jd0;Lf02;)Ljava/lang/Object;
    .locals 8

    .line 155
    new-instance v0, Lc31;

    invoke-static {p5}, Lzya;->b(Le02;)Le02;

    move-result-object p5

    const/4 v1, 0x1

    invoke-direct {v0, v1, p5}, Lc31;-><init>(ILe02;)V

    .line 156
    invoke-virtual {v0}, Lc31;->u()V

    .line 157
    new-instance v4, Lyads/hl4;

    invoke-direct {v4, v0}, Lyads/hl4;-><init>(Lc31;)V

    .line 158
    sget-object p5, Lyads/xt2;->c:Lyads/xt2;

    .line 159
    invoke-static {p1, p5}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result p1

    .line 160
    sget-object p5, Lyads/ql4;->b:[Lyads/ql4;

    .line 161
    const-string p5, "first_video_preloading_strategy"

    .line 162
    iget-object p2, p2, Lyads/d9;->v:Ljava/lang/String;

    .line 163
    invoke-virtual {p5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 164
    iget-object p0, p0, Lyads/il4;->c:Lyads/ix2;

    .line 165
    iget-object p1, p0, Lyads/ix2;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 166
    :try_start_0
    iget-object p2, p3, Lyads/ee4;->a:Lyads/vg4;

    .line 167
    iget-object p3, p0, Lyads/ix2;->c:Lyads/zl4;

    invoke-virtual {p3, p2}, Lyads/zl4;->a(Lyads/vg4;)Ljava/util/List;

    move-result-object p2

    .line 168
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 169
    invoke-virtual {v4}, Lyads/hl4;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 170
    :cond_0
    new-instance v2, Lyads/gx2;

    .line 171
    iget-object v3, p0, Lyads/ix2;->a:Lyads/t5;

    .line 172
    iget-object v5, p0, Lyads/ix2;->b:Lyads/al4;

    .line 173
    invoke-static {p2, v1}, Lqn1;->O(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, p4

    .line 174
    invoke-direct/range {v2 .. v7}, Lyads/gx2;-><init>(Lyads/t5;Lyads/hl4;Lyads/al4;Ljava/util/Iterator;Lyads/jd0;)V

    .line 175
    iget-object p3, p0, Lyads/ix2;->a:Lyads/t5;

    sget-object p4, Lyads/s5;->r:Lyads/s5;

    const/4 p5, 0x0

    .line 176
    invoke-virtual {p3, p4, p5}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    .line 177
    invoke-static {p2}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb36;

    .line 178
    iget-object p3, p2, Lb36;->b:Ljava/lang/Object;

    .line 179
    check-cast p3, Ljava/lang/String;

    .line 180
    iget-object p2, p2, Lb36;->c:Ljava/lang/Object;

    .line 181
    check-cast p2, Ljava/lang/String;

    .line 182
    iget-object p0, p0, Lyads/ix2;->b:Lyads/al4;

    invoke-virtual {p0, p3, v2, p2}, Lyads/al4;->a(Ljava/lang/String;Lyads/vc6;Ljava/lang/String;)V

    .line 183
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw p0

    :cond_1
    move-object v7, p4

    .line 185
    iget-object p0, p0, Lyads/il4;->b:Lyads/sl0;

    .line 186
    invoke-virtual {p0, p3, v4, v7}, Lyads/sl0;->a(Lyads/ee4;Lyads/hl4;Lyads/jd0;)V

    .line 187
    :goto_2
    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    .line 188
    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_2

    return-object p0

    .line 189
    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(ZLandroid/content/Context;Lyads/ee4;Lyads/jd0;Lf02;)Ljava/lang/Object;
    .locals 11

    move-object/from16 v2, p5

    instance-of v3, v2, Lyads/fl4;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lyads/fl4;

    iget v4, v3, Lyads/fl4;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lyads/fl4;->g:I

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lyads/fl4;

    invoke-direct {v3, p0, v2}, Lyads/fl4;-><init>(Lyads/il4;Lf02;)V

    goto :goto_0

    :goto_1
    iget-object v2, v5, Lyads/fl4;->e:Ljava/lang/Object;

    sget-object v6, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v5, Lyads/fl4;->g:I

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v8, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v0, v5, Lyads/fl4;->c:Ljava/lang/Object;

    check-cast v0, Lyads/ee4;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-boolean v1, v5, Lyads/fl4;->b:Z

    iget-object v3, v5, Lyads/fl4;->d:Lyads/jd0;

    iget-object v8, v5, Lyads/fl4;->c:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    move-object v10, v3

    move-object v3, v2

    move-object v2, v8

    move-object v8, v5

    move-object v5, v10

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lyads/il4;->d:Lyads/le4;

    iput-object p2, v5, Lyads/fl4;->c:Ljava/lang/Object;

    iput-object p4, v5, Lyads/fl4;->d:Lyads/jd0;

    iput-boolean p1, v5, Lyads/fl4;->b:Z

    iput v8, v5, Lyads/fl4;->g:I

    invoke-virtual {v2, p2, p3, v5}, Lyads/le4;->a(Landroid/content/Context;Lyads/ee4;Lf02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_4

    goto :goto_3

    :cond_4
    move v1, p1

    move-object v3, v2

    move-object v8, v5

    move-object v2, p2

    move-object v5, p4

    :goto_2
    check-cast v3, Lyads/ee4;

    if-nez v3, :cond_5

    return-object v7

    :cond_5
    if-nez v1, :cond_6

    move-object v4, v3

    goto :goto_4

    :cond_6
    move v1, v4

    move-object v4, v3

    iget-object v3, v4, Lyads/ee4;->b:Lyads/d9;

    iget-boolean v9, v3, Lyads/d9;->E:Z

    if-eqz v9, :cond_7

    iget-object v8, p0, Lyads/il4;->a:Ly22;

    new-instance v0, Lyads/gl4;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lyads/gl4;-><init>(Lyads/il4;Landroid/content/Context;Lyads/d9;Lyads/ee4;Lyads/jd0;Le02;)V

    const/4 v1, 0x3

    invoke-static {v8, v7, v7, v0, v1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object v4

    :cond_7
    iget-boolean v0, v3, Lyads/d9;->x:Z

    if-eqz v0, :cond_8

    iput-object v4, v8, Lyads/fl4;->c:Ljava/lang/Object;

    iput-object v7, v8, Lyads/fl4;->d:Lyads/jd0;

    iput v1, v8, Lyads/fl4;->g:I

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lyads/il4;->a(Landroid/content/Context;Lyads/d9;Lyads/ee4;Lyads/jd0;Lf02;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v3

    if-ne v0, v6, :cond_8

    :goto_3
    return-object v6

    :cond_8
    :goto_4
    return-object v4
.end method
