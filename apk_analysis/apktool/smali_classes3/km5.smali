.class public final Lkm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkm5$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lzz5;

.field public final c:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Lgm5;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lfh8;

.field public final e:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Ltx0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lh54;

.field public final g:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Lev1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lzz5;Lfh8;Lfh8;Lfh8;Lh54;Lfh8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkm5;->a:Ljava/lang/String;

    iput-object p2, p0, Lkm5;->b:Lzz5;

    iput-object p3, p0, Lkm5;->c:Lcl4;

    iput-object p4, p0, Lkm5;->d:Lfh8;

    iput-object p5, p0, Lkm5;->e:Lcl4;

    iput-object p6, p0, Lkm5;->f:Lh54;

    iput-object p7, p0, Lkm5;->g:Lcl4;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "text/plain"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x23

    invoke-static {p0, v1}, Lta8;->d0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3f

    invoke-static {p0, v1}, Lta8;->d0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2f

    invoke-static {v1, p0, p0}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2e

    const-string v2, ""

    invoke-static {v1, p0, v2}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Leb5;->a:Luz4;

    invoke-virtual {v1, p0}, Luz4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    if-eqz p1, :cond_5

    const/16 p0, 0x3b

    invoke-static {p1, p0}, Lta8;->c0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0
.end method

.method public static f(Lvm5;)V
    .locals 2

    iget p0, p0, Lvm5;->a:I

    const/16 v0, 0xc8

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x130

    if-ne p0, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcoil3/network/HttpException;

    const-string v1, "HTTP "

    invoke-static {p0, v1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lkm5;->g:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lev1;

    iget-object v1, p0, Lkm5;->b:Lzz5;

    iget-object v1, v1, Lzz5;->e:Ljava/lang/String;

    new-instance v2, Llm5;

    const-string v7, "doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Lkm5;

    const-string v6, "doFetch"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2, p1}, Lev1;->a(Llm5;Lpz2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Le02;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lb83;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    instance-of v1, v0, Lkm5$b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkm5$b;

    iget v3, v1, Lkm5$b;->p:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v1, Lkm5$b;->p:I

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lkm5$b;

    invoke-direct {v1, v2, v0}, Lkm5$b;-><init>(Lkm5;Le02;)V

    goto :goto_0

    :goto_1
    iget-object v0, v6, Lkm5$b;->n:Ljava/lang/Object;

    sget-object v7, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v6, Lkm5$b;->p:I

    iget-object v8, v2, Lkm5;->c:Lcl4;

    iget-object v3, v2, Lkm5;->a:Ljava/lang/String;

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x1

    iget-object v5, v2, Lkm5;->b:Lzz5;

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v10, :cond_2

    if-ne v1, v9, :cond_1

    iget-object v1, v6, Lkm5$b;->l:Lr07;

    :try_start_0
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v11

    :cond_2
    iget-object v1, v6, Lkm5$b;->l:Lr07;

    :try_start_1
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :cond_3
    iget-object v1, v6, Lkm5$b;->m:Lr07;

    iget-object v4, v6, Lkm5$b;->l:Lr07;

    :try_start_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v1, v4

    goto/16 :goto_a

    :cond_4
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    iget-object v0, v5, Lzz5;->h:Lsx0;

    invoke-virtual {v0}, Lsx0;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v2, Lkm5;->d:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqn2;

    if-eqz v0, :cond_6

    iget-object v12, v5, Lzz5;->e:Ljava/lang/String;

    if-nez v12, :cond_5

    move-object v12, v3

    :cond_5
    invoke-interface {v0, v12}, Lqn2;->b(Ljava/lang/String;)Lqy6$b;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v11

    :goto_2
    iput-object v0, v1, Lr07;->b:Ljava/lang/Object;

    :try_start_3
    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    iget-object v12, v1, Lr07;->b:Ljava/lang/Object;

    if-eqz v12, :cond_b

    invoke-virtual {v2}, Lkm5;->c()Lw93;

    move-result-object v12

    iget-object v13, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v13, Lqn2$c;

    invoke-interface {v13}, Lqn2$c;->getMetadata()Lj46;

    move-result-object v13

    invoke-virtual {v12, v13}, Lw93;->p(Lj46;)Ls93;

    move-result-object v12

    iget-object v12, v12, Ls93;->d:Ljava/lang/Long;

    if-nez v12, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_8

    new-instance v0, Lx48;

    iget-object v4, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v4, Lqn2$c;

    invoke-virtual {v2, v4}, Lkm5;->g(Lqn2$c;)Ln93;

    move-result-object v2

    invoke-static {v3, v11}, Lkm5;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lz82;->DISK:Lz82;

    invoke-direct {v0, v2, v3, v4}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v0

    :cond_8
    :goto_3
    iget-object v12, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v12, Lqn2$c;

    invoke-virtual {v2, v12}, Lkm5;->i(Lqn2$c;)Lvm5;

    move-result-object v12

    iput-object v12, v0, Lr07;->b:Ljava/lang/Object;

    if-eqz v12, :cond_b

    invoke-static {v12}, Lkm5;->f(Lvm5;)V

    iget-object v12, v2, Lkm5;->e:Lcl4;

    invoke-interface {v12}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltx0;

    iget-object v13, v0, Lr07;->b:Ljava/lang/Object;

    check-cast v13, Lvm5;

    invoke-virtual {v2}, Lkm5;->e()Ltm5;

    iput-object v1, v6, Lkm5$b;->l:Lr07;

    iput-object v0, v6, Lkm5$b;->m:Lr07;

    iput v4, v6, Lkm5$b;->p:I

    invoke-interface {v12, v13}, Ltx0;->b(Lvm5;)Ltx0$a;

    move-result-object v4

    if-ne v4, v7, :cond_9

    goto/16 :goto_8

    :cond_9
    move-object/from16 v16, v4

    move-object v4, v0

    move-object/from16 v0, v16

    :goto_4
    check-cast v0, Ltx0$a;

    iget-object v12, v0, Ltx0$a;->a:Lvm5;

    if-eqz v12, :cond_a

    new-instance v4, Lx48;

    iget-object v5, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v5, Lqn2$c;

    invoke-virtual {v2, v5}, Lkm5;->g(Lqn2$c;)Ln93;

    move-result-object v2

    iget-object v0, v0, Ltx0$a;->a:Lvm5;

    iget-object v0, v0, Lvm5;->d:Lpm5;

    invoke-virtual {v0}, Lpm5;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkm5;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lz82;->DISK:Lz82;

    invoke-direct {v4, v2, v0, v3}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v4

    :cond_a
    move-object v3, v4

    goto :goto_5

    :cond_b
    move-object v3, v0

    :goto_5
    iget-object v0, v5, Lzz5;->i:Lsx0;

    invoke-virtual {v0}, Lsx0;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v0, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    :cond_d
    :goto_6
    invoke-virtual {v2}, Lkm5;->e()Ltm5;

    move-result-object v4

    invoke-interface {v8}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lgm5;

    new-instance v0, Lkm5$d;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkm5$d;-><init>(Lr07;Lkm5;Lr07;Ltm5;Le02;)V

    iput-object v1, v6, Lkm5$b;->l:Lr07;

    iput-object v11, v6, Lkm5$b;->m:Lr07;

    iput v10, v6, Lkm5$b;->p:I

    invoke-interface {v12, v4, v0, v6}, Lgm5;->a(Ltm5;Lbm3;Lkm5$b;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_e

    goto :goto_8

    :cond_e
    :goto_7
    check-cast v0, Lx48;

    if-nez v0, :cond_10

    invoke-interface {v8}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgm5;

    invoke-virtual {v2}, Lkm5;->e()Ltm5;

    move-result-object v3

    new-instance v4, Lkm5$c;

    invoke-direct {v4, v2, v11}, Lkm5$c;-><init>(Lkm5;Le02;)V

    iput-object v1, v6, Lkm5$b;->l:Lr07;

    iput v9, v6, Lkm5$b;->p:I

    invoke-interface {v0, v3, v4, v6}, Lgm5;->a(Ltm5;Lbm3;Lkm5$b;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_f

    :goto_8
    return-object v7

    :cond_f
    :goto_9
    check-cast v0, Lx48;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_10
    return-object v0

    :goto_a
    iget-object v1, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Lqn2$c;

    if-eqz v1, :cond_11

    :try_start_4
    invoke-static {v1}, Lug;->g(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_b

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    :cond_11
    :goto_b
    throw v0
.end method

.method public final c()Lw93;
    .locals 1

    iget-object v0, p0, Lkm5;->d:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqn2;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lqn2;->getFileSystem()Lw93;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lkm5;->b:Lzz5;

    iget-object p0, p0, Lzz5;->f:Lw93;

    return-object p0
.end method

.method public final e()Ltm5;
    .locals 9

    sget-object v0, Lc24;->b:Lb53$b;

    iget-object v1, p0, Lkm5;->b:Lzz5;

    invoke-static {v1, v0}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpm5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lpm5$a;

    invoke-direct {v2, v0}, Lpm5$a;-><init>(Lpm5;)V

    iget-object v0, v1, Lzz5;->h:Lsx0;

    invoke-virtual {v0}, Lsx0;->a()Z

    move-result v3

    iget-object v4, v1, Lzz5;->i:Lsx0;

    invoke-virtual {v4}, Lsx0;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lkm5;->f:Lh54;

    iget-object v4, v4, Lh54;->b:Ljava/lang/Object;

    check-cast v4, Lww1;

    invoke-interface {v4}, Lww1;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    const-string v0, "only-if-cached, max-stale=2147483647"

    invoke-virtual {v2, v0}, Lpm5$a;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lsx0;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "no-cache"

    invoke-virtual {v2, v0}, Lpm5$a;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "no-cache, no-store"

    invoke-virtual {v2, v0}, Lpm5$a;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    const-string v0, "no-cache, only-if-cached"

    invoke-virtual {v2, v0}, Lpm5$a;->b(Ljava/lang/String;)V

    :cond_4
    :goto_1
    new-instance v3, Ltm5;

    sget-object v0, Lc24;->a:Lb53$b;

    invoke-static {v1, v0}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lpm5;

    iget-object v0, v2, Lpm5$a;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Lpm5;-><init>(Ljava/util/Map;)V

    sget-object v0, Lc24;->c:Lb53$b;

    invoke-static {v1, v0}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lum5;

    iget-object v8, v1, Lzz5;->j:Lb53;

    iget-object v4, p0, Lkm5;->a:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Ltm5;-><init>(Ljava/lang/String;Ljava/lang/String;Lpm5;Lum5;Lb53;)V

    return-object v3
.end method

.method public final g(Lqn2$c;)Ln93;
    .locals 3

    invoke-interface {p1}, Lqn2$c;->getData()Lj46;

    move-result-object v0

    invoke-virtual {p0}, Lkm5;->c()Lw93;

    move-result-object v1

    iget-object v2, p0, Lkm5;->b:Lzz5;

    iget-object v2, v2, Lzz5;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lkm5;->a:Ljava/lang/String;

    :cond_0
    const/16 p0, 0x10

    invoke-static {v0, v1, v2, p1, p0}, Li24;->a(Lj46;Lw93;Ljava/lang/String;Lqn2$c;I)Ln93;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lb58;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lmm5;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmm5;

    iget v1, v0, Lmm5;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmm5;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmm5;

    invoke-direct {v0, p0, p2}, Lmm5;-><init>(Lkm5;Lf02;)V

    :goto_0
    iget-object p2, v0, Lmm5;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lmm5;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lmm5;->l:Lbu0;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Lbu0;

    invoke-direct {p2}, Lbu0;-><init>()V

    iput-object p2, v0, Lmm5;->l:Lbu0;

    iput v4, v0, Lmm5;->o:I

    invoke-virtual {p1, p2}, Lb58;->a(Lbu0;)Lj59;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    :goto_1
    invoke-virtual {p0}, Lkm5;->c()Lw93;

    move-result-object p0

    new-instance p2, La58;

    invoke-direct {p2, p1, p0, v3}, La58;-><init>(Lwu0;Lw93;Lh24$a;)V

    return-object p2
.end method

.method public final i(Lqn2$c;)Lvm5;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lkm5;->c()Lw93;

    move-result-object p0

    invoke-interface {p1}, Lqn2$c;->getMetadata()Lj46;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw93;->Q(Lj46;)Lv48;

    move-result-object p0

    invoke-static {p0}, Lc84;->f(Lv48;)Liy6;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lrx0;->a(Liy6;)Lvm5;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Liy6;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p0, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Liy6;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-static {p1, p0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    move-object p0, p1

    move-object p1, v0

    :goto_1
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method public final j(Lqn2$c;Lvm5;Ltm5;Lvm5;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of p3, p5, Lnm5;

    if-eqz p3, :cond_0

    move-object p3, p5

    check-cast p3, Lnm5;

    iget v0, p3, Lnm5;->q:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p3, Lnm5;->q:I

    goto :goto_0

    :cond_0
    new-instance p3, Lnm5;

    invoke-direct {p3, p0, p5}, Lnm5;-><init>(Lkm5;Lf02;)V

    :goto_0
    iget-object p5, p3, Lnm5;->o:Ljava/lang/Object;

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p3, Lnm5;->q:I

    iget-object v2, p0, Lkm5;->b:Lzz5;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p0, p3, Lnm5;->n:Lqn2$b;

    iget-object p1, p3, Lnm5;->m:Lvm5;

    iget-object p2, p3, Lnm5;->l:Ljava/lang/Object;

    check-cast p2, Lvm5;

    :try_start_0
    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception p3

    goto/16 :goto_c

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p4, p3, Lnm5;->m:Lvm5;

    iget-object p1, p3, Lnm5;->l:Ljava/lang/Object;

    check-cast p1, Lqn2$c;

    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p5, v2, Lzz5;->h:Lsx0;

    invoke-virtual {p5}, Lsx0;->d()Z

    move-result p5

    if-nez p5, :cond_4

    if-eqz p1, :cond_a

    :try_start_1
    invoke-static {p1}, Lug;->g(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_1
    move-exception p0

    throw p0

    :cond_4
    iget-object p5, p0, Lkm5;->e:Lcl4;

    invoke-interface {p5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ltx0;

    iput-object p1, p3, Lnm5;->l:Ljava/lang/Object;

    iput-object p4, p3, Lnm5;->m:Lvm5;

    iput v4, p3, Lnm5;->q:I

    invoke-interface {p5, p2, p4}, Ltx0;->a(Lvm5;Lvm5;)Ltx0$b;

    move-result-object p5

    if-ne p5, v0, :cond_5

    goto/16 :goto_8

    :cond_5
    :goto_1
    check-cast p5, Ltx0$b;

    iget-object p2, p5, Ltx0$b;->a:Lvm5;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lqn2$c;->l0()Lqy6$a;

    move-result-object p1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lkm5;->d:Lfh8;

    invoke-virtual {p1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqn2;

    if-eqz p1, :cond_9

    iget-object p5, v2, Lzz5;->e:Ljava/lang/String;

    if-nez p5, :cond_8

    iget-object p5, p0, Lkm5;->a:Ljava/lang/String;

    :cond_8
    invoke-interface {p1, p5}, Lqn2;->a(Ljava/lang/String;)Lqy6$a;

    move-result-object p1

    goto :goto_2

    :cond_9
    move-object p1, v5

    :goto_2
    if-nez p1, :cond_b

    :catch_2
    :cond_a
    :goto_3
    return-object v5

    :cond_b
    :try_start_2
    invoke-virtual {p0}, Lkm5;->c()Lw93;

    move-result-object p5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    iget-object v1, p1, Lqy6$a;->a:Lvn2$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lvn2$a;->b(I)Lj46;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-virtual {p5, v1, v2}, Lw93;->P(Lj46;Z)Ls18;

    move-result-object p5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lhy6;

    invoke-direct {v1, p5}, Lhy6;-><init>(Ls18;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    invoke-static {p2, v1}, Lrx0;->b(Lvm5;Lhy6;)V

    sget-object p5, Lj59;->a:Lj59;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v1}, Lhy6;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object p5, v5

    goto :goto_4

    :catchall_0
    move-exception p5

    goto :goto_4

    :catchall_1
    move-exception p5

    :try_start_8
    invoke-virtual {v1}, Lhy6;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    :try_start_9
    invoke-static {p5, v1}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    if-nez p5, :cond_e

    iget-object p5, p2, Lvm5;->e:Lb58;

    if-eqz p5, :cond_d

    invoke-virtual {p0}, Lkm5;->c()Lw93;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :try_start_a
    iget-object v1, p1, Lqy6$a;->a:Lvn2$a;

    invoke-virtual {v1, v4}, Lvn2$a;->b(I)Lj46;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :try_start_b
    iput-object p4, p3, Lnm5;->l:Ljava/lang/Object;

    iput-object p2, p3, Lnm5;->m:Lvm5;

    iput-object p1, p3, Lnm5;->n:Lqn2$b;

    iput v3, p3, Lnm5;->q:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :try_start_c
    iget-object p3, p5, Lb58;->b:Lwu0;

    invoke-virtual {p0, v1, v2}, Lw93;->P(Lj46;Z)Ls18;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Lhy6;

    invoke-direct {p5, p0}, Lhy6;-><init>(Ls18;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :try_start_d
    invoke-interface {p3, p5}, Lwu0;->o0(Ls18;)J

    move-result-wide v1

    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {p5}, Lhy6;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v5

    goto :goto_7

    :goto_5
    move-object v5, p0

    goto :goto_6

    :catchall_4
    move-exception p0

    goto :goto_5

    :goto_6
    :try_start_f
    invoke-virtual {p5}, Lhy6;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p0

    :try_start_10
    invoke-static {v5, p0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    if-nez v5, :cond_c

    sget-object p0, Lj59;->a:Lj59;

    if-ne p0, v0, :cond_d

    :goto_8
    return-object v0

    :cond_c
    throw v5
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    :goto_9
    move-object p3, p0

    goto :goto_a

    :catch_3
    move-exception p0

    goto :goto_9

    :goto_a
    move-object p0, p1

    move-object p1, p2

    move-object p2, p4

    goto :goto_c

    :catch_4
    move-exception p3

    goto :goto_a

    :catch_5
    move-exception p0

    goto :goto_9

    :cond_d
    move-object p0, p1

    move-object p1, p2

    move-object p2, p4

    :goto_b
    :try_start_11
    invoke-interface {p0}, Lqn2$b;->a()Lqy6$b;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    return-object p0

    :cond_e
    :try_start_12
    throw p5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    :catch_6
    move-exception p0

    goto :goto_9

    :goto_c
    :try_start_13
    invoke-interface {p0}, Lqn2$b;->abort()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    :catch_7
    iget-object p0, p2, Lvm5;->e:Lb58;

    if-eqz p0, :cond_f

    :try_start_14
    invoke-static {p0}, Lug;->g(Ljava/lang/AutoCloseable;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_d

    :catch_8
    move-exception p0

    throw p0

    :catch_9
    :cond_f
    :goto_d
    iget-object p0, p1, Lvm5;->e:Lb58;

    if-eqz p0, :cond_10

    :try_start_15
    invoke-static {p0}, Lug;->g(Ljava/lang/AutoCloseable;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_e

    :catch_a
    move-exception p0

    throw p0

    :catch_b
    :cond_10
    :goto_e
    throw p3
.end method
