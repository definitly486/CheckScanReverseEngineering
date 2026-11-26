.class public final Lfe4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw98;

.field public b:I


# direct methods
.method public constructor <init>(Lfc4;Lw98;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfe4;->a:Lw98;

    return-void
.end method


# virtual methods
.method public final a()Loc4;
    .locals 9

    iget-object v0, p0, Lfe4;->a:Lw98;

    invoke-virtual {v0}, Lw98;->p()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lfe4;->d(Z)Lpd4;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lfe4;->d(Z)Lpd4;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v1, v4, :cond_e

    iget v1, p0, Lfe4;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lfe4;->b:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_7

    new-instance v0, Lde4;

    invoke-direct {v0, p0, v5}, Lde4;-><init>(Lfe4;Le02;)V

    sget-object v1, Lj59;->a:Lj59;

    sget-object v2, Lzd2;->a:La32;

    new-instance v2, Lbe2;

    invoke-direct {v2}, Lae2;-><init>()V

    iput-object v0, v2, Lbe2;->b:Lde4;

    iput-object v1, v2, Lbe2;->c:Ljava/lang/Object;

    iput-object v2, v2, Lbe2;->d:Le02;

    sget-object v1, Lzd2;->a:La32;

    iput-object v1, v2, Lbe2;->e:Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object v0, v2, Lbe2;->e:Ljava/lang/Object;

    iget-object v3, v2, Lbe2;->d:Le02;

    if-nez v3, :cond_3

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    check-cast v0, Loc4;

    goto/16 :goto_5

    :cond_3
    invoke-static {v1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :try_start_0
    iget-object v0, v2, Lbe2;->b:Lde4;

    iget-object v4, v2, Lbe2;->c:Ljava/lang/Object;

    const/4 v5, 0x3

    if-nez v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Le02;->getContext()Lo22;

    move-result-object v6

    sget-object v7, Lgx2;->b:Lgx2;

    if-ne v6, v7, :cond_4

    new-instance v6, Lda4;

    invoke-direct {v6, v3}, Le57;-><init>(Le02;)V

    goto :goto_1

    :cond_4
    new-instance v7, Lea4;

    invoke-direct {v7, v3, v6}, Lf02;-><init>(Le02;Lo22;)V

    move-object v6, v7

    :goto_1
    invoke-static {v5, v0}, Lv39;->c(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, v4, v6}, Lde4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {v5, v0}, Lv39;->c(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, v4, v3}, Lde4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-eq v0, v4, :cond_2

    invoke-interface {v3, v0}, Le02;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v4, Lk57$a;

    invoke-direct {v4, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Le02;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iput-object v1, v2, Lbe2;->e:Ljava/lang/Object;

    invoke-interface {v3, v0}, Le02;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v4}, Lw98;->f(B)B

    move-result v1

    invoke-virtual {v0}, Lw98;->p()B

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_d

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_8
    invoke-virtual {v0}, Lw98;->b()Z

    move-result v7

    const/4 v8, 0x7

    if-eqz v7, :cond_a

    invoke-virtual {v0}, Lw98;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lw98;->f(B)B

    invoke-virtual {p0}, Lfe4;->a()Loc4;

    move-result-object v7

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lw98;->e()B

    move-result v1

    if-eq v1, v6, :cond_8

    if-ne v1, v8, :cond_9

    goto :goto_3

    :cond_9
    const-string p0, "Expected end of the object or comma"

    invoke-static {v0, p0, v3, v5, v4}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_a
    :goto_3
    if-ne v1, v4, :cond_b

    invoke-virtual {v0, v8}, Lw98;->f(B)B

    goto :goto_4

    :cond_b
    if-eq v1, v6, :cond_c

    :goto_4
    new-instance v0, Ljd4;

    invoke-direct {v0, v2}, Ljd4;-><init>(Ljava/util/Map;)V

    :goto_5
    iget v1, p0, Lfe4;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lfe4;->b:I

    return-object v0

    :cond_c
    const-string p0, "object"

    invoke-static {v0, p0}, Lyc4;->d(Lw98;Ljava/lang/String;)V

    throw v5

    :cond_d
    const-string p0, "Unexpected leading comma"

    invoke-static {v0, p0, v3, v5, v4}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_e
    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    invoke-virtual {p0}, Lfe4;->b()Lzb4;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {v1}, Ls0;->e(B)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot read Json element because of unexpected "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3, v5, v4}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public final b()Lzb4;
    .locals 8

    iget-object v0, p0, Lfe4;->a:Lw98;

    invoke-virtual {v0}, Lw98;->e()B

    move-result v1

    invoke-virtual {v0}, Lw98;->p()B

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v2, v5, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lw98;->b()Z

    move-result v6

    const/16 v7, 0x9

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lfe4;->a()Loc4;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lw98;->e()B

    move-result v1

    if-eq v1, v5, :cond_0

    if-ne v1, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iget v7, v0, Lw98;->b:I

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Expected end of the array or comma"

    invoke-static {v0, p0, v7, v4, v5}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_3
    const/16 p0, 0x8

    if-ne v1, p0, :cond_4

    invoke-virtual {v0, v7}, Lw98;->f(B)B

    goto :goto_2

    :cond_4
    if-eq v1, v5, :cond_5

    :goto_2
    new-instance p0, Lzb4;

    invoke-direct {p0, v2}, Lzb4;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_5
    const-string p0, "array"

    invoke-static {v0, p0}, Lyc4;->d(Lw98;Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string p0, "Unexpected leading comma"

    const/4 v1, 0x6

    invoke-static {v0, p0, v3, v4, v1}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4
.end method

.method public final c(Lae2;Lcd0;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lee4;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lee4;

    iget v1, v0, Lee4;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lee4;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Lee4;

    invoke-direct {v0, p0, p2}, Lee4;-><init>(Lfe4;Lcd0;)V

    :goto_0
    iget-object p2, v0, Lee4;->q:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lee4;->s:I

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v8, :cond_1

    iget p0, v0, Lee4;->p:I

    iget-object p1, v0, Lee4;->o:Ljava/lang/String;

    iget-object v2, v0, Lee4;->n:Ljava/util/LinkedHashMap;

    iget-object v9, v0, Lee4;->m:Lfe4;

    iget-object v10, v0, Lee4;->l:Lae2;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    move-object v12, p2

    move p2, p0

    move-object p0, v9

    move-object v9, v2

    move-object v2, v0

    move-object v0, v10

    move-object v10, v12

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lfe4;->a:Lw98;

    invoke-virtual {p2, v4}, Lw98;->f(B)B

    move-result v2

    invoke-virtual {p2}, Lw98;->p()B

    move-result v9

    if-eq v9, v7, :cond_9

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, p2

    move-object p2, p1

    move p1, v5

    :goto_1
    iget-object v10, p0, Lfe4;->a:Lw98;

    invoke-virtual {v10}, Lw98;->b()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lw98;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lw98;->f(B)B

    sget-object v10, Lj59;->a:Lj59;

    iput-object p2, v0, Lee4;->l:Lae2;

    iput-object p0, v0, Lee4;->m:Lfe4;

    iput-object v9, v0, Lee4;->n:Ljava/util/LinkedHashMap;

    iput-object v2, v0, Lee4;->o:Ljava/lang/String;

    iput p1, v0, Lee4;->p:I

    iput v8, v0, Lee4;->s:I

    invoke-virtual {p2, v10, v0}, Lae2;->a(Ljava/lang/Object;Lee4;)La32;

    move-result-object v10

    if-ne v10, v1, :cond_3

    return-object v1

    :cond_3
    move-object v12, p2

    move p2, p1

    move-object p1, v2

    move-object v2, v0

    move-object v0, v12

    :goto_2
    check-cast v10, Loc4;

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lfe4;->a:Lw98;

    invoke-virtual {p1}, Lw98;->e()B

    move-result p1

    if-eq p1, v7, :cond_5

    if-ne p1, v6, :cond_4

    move v2, p1

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lfe4;->a:Lw98;

    const-string p1, "Expected end of the object or comma"

    invoke-static {p0, p1, v5, v3, v4}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_5
    move-object v12, v2

    move v2, p1

    move p1, p2

    move-object p2, v0

    move-object v0, v12

    goto :goto_1

    :cond_6
    :goto_3
    iget-object p0, p0, Lfe4;->a:Lw98;

    if-ne v2, v4, :cond_7

    invoke-virtual {p0, v6}, Lw98;->f(B)B

    goto :goto_4

    :cond_7
    if-eq v2, v7, :cond_8

    :goto_4
    new-instance p0, Ljd4;

    invoke-direct {p0, v9}, Ljd4;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_8
    const-string p1, "object"

    invoke-static {p0, p1}, Lyc4;->d(Lw98;Ljava/lang/String;)V

    throw v3

    :cond_9
    const-string p0, "Unexpected leading comma"

    invoke-static {p2, p0, v5, v3, v4}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final d(Z)Lpd4;
    .locals 1

    iget-object p0, p0, Lfe4;->a:Lw98;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lw98;->j()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lw98;->i()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    const-string v0, "null"

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lgd4;->INSTANCE:Lgd4;

    return-object p0

    :cond_1
    new-instance v0, Lcd4;

    invoke-direct {v0, p0, p1}, Lcd4;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method
