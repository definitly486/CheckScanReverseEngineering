.class public final Lyads/wm4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/na6;

.field public final b:Lyads/sc6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V
    .locals 9

    new-instance v0, Lyads/na6;

    new-instance v1, Lyads/pl4;

    invoke-direct {v1}, Lyads/pl4;-><init>()V

    invoke-direct {v0, p1, v1}, Lyads/na6;-><init>(Landroid/content/Context;Lyads/ab6;)V

    new-instance v2, Lyads/sc6;

    new-instance v6, Lyads/zk4;

    invoke-direct {v6, p2}, Lyads/zk4;-><init>(Lyads/e4;)V

    new-instance v7, Lyads/hr4;

    invoke-direct {v7}, Lyads/hr4;-><init>()V

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v8}, Lyads/sc6;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/zk4;Lyads/hr4;Lyads/t5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/wm4;->a:Lyads/na6;

    iput-object v2, p0, Lyads/wm4;->b:Lyads/sc6;

    return-void
.end method

.method public static final a(Lyads/wm4;Ljava/util/List;Lf02;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lyads/tm4;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/tm4;

    iget v1, v0, Lyads/tm4;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/tm4;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/tm4;

    invoke-direct {v0, p0, p2}, Lyads/tm4;-><init>(Lyads/wm4;Lf02;)V

    :goto_0
    iget-object p2, v0, Lyads/tm4;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/tm4;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lyads/wm4;->b:Lyads/sc6;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/ja6;

    iget-object v5, v5, Lyads/ja6;->b:Lyads/t96;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput v4, v0, Lyads/tm4;->d:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p1}, Lc31;->u()V

    new-instance v0, Lyads/rc6;

    invoke-direct {v0, p1}, Lyads/rc6;-><init>(Lc31;)V

    iget-object p2, p2, Lyads/sc6;->a:Lyads/nc6;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, p2, Lyads/nc6;->c:Lyads/lc6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/lc6;->a(Ljava/util/List;)Lyads/kc6;

    move-result-object v2

    iget-object v5, v2, Lyads/kc6;->a:Ljava/util/List;

    iget-object v6, p2, Lyads/nc6;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v2, Lyads/kc6;->b:Ljava/util/List;

    new-instance v5, Lyads/mc6;

    invoke-direct {v5, p2, v0, v4}, Lyads/mc6;-><init>(Lyads/nc6;Lyads/v75;Ljava/lang/Object;)V

    iget-object v0, p2, Lyads/nc6;->b:Lyads/ol6;

    iget-object p2, p2, Lyads/nc6;->a:Landroid/content/Context;

    invoke-virtual {v0, p2, v2, v5, v4}, Lyads/ol6;->a(Landroid/content/Context;Ljava/util/List;Lyads/mc6;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p2

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Lyads/qc6;

    instance-of p1, p2, Lyads/oc6;

    if-eqz p1, :cond_5

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_5
    instance-of p1, p2, Lyads/pc6;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lyads/wm4;->a:Lyads/na6;

    check-cast p2, Lyads/pc6;

    iget-object p1, p2, Lyads/pc6;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lyads/na6;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Lme0;->e()V

    return-object v3
.end method
