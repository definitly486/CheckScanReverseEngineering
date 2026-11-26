.class public final Lyads/hg0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyads/vf0;

.field public c:Lyads/wf0;

.field public d:I

.field public final synthetic e:Lyads/ig0;


# direct methods
.method public constructor <init>(Lyads/ig0;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/hg0;->e:Lyads/ig0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/hg0;

    iget-object p0, p0, Lyads/hg0;->e:Lyads/ig0;

    invoke-direct {p1, p0, p2}, Lyads/hg0;-><init>(Lyads/ig0;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/hg0;

    iget-object p0, p0, Lyads/hg0;->e:Lyads/ig0;

    invoke-direct {p1, p0, p2}, Lyads/hg0;-><init>(Lyads/ig0;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/hg0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/hg0;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lyads/hg0;->c:Lyads/wf0;

    iget-object v1, p0, Lyads/hg0;->b:Lyads/vf0;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Lk57;

    iget-object p1, p1, Lk57;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/hg0;->e:Lyads/ig0;

    iget-object p1, p1, Lyads/ig0;->a:Lyads/wu3;

    invoke-virtual {p1}, Lyads/wu3;->a()Lyads/vf0;

    move-result-object v1

    iget-object p1, v1, Lyads/vf0;->f:Lyads/wf0;

    if-nez p1, :cond_2

    sget-object p0, Lyads/yg3;->a:Lyads/yg3;

    return-object p0

    :cond_2
    iget-object v4, p0, Lyads/hg0;->e:Lyads/ig0;

    iget-object v4, v4, Lyads/ig0;->b:Lyads/b65;

    iput-object v1, p0, Lyads/hg0;->b:Lyads/vf0;

    iput-object p1, p0, Lyads/hg0;->c:Lyads/wf0;

    iput v3, p0, Lyads/hg0;->d:I

    invoke-virtual {v4, p0}, Lyads/b65;->a(Lf02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v3

    :goto_0
    nop

    instance-of v3, p1, Lk57$a;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    check-cast v2, Lyads/dg0;

    if-eqz v2, :cond_5

    iget-object p1, v2, Lyads/dg0;->g:Ljava/util/List;

    if-nez p1, :cond_6

    :cond_5
    sget-object p1, Lkx2;->b:Lkx2;

    :cond_6
    iget-object v2, v1, Lyads/vf0;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lyads/hg0;->e:Lyads/ig0;

    iget-object v3, v3, Lyads/ig0;->c:Lyads/y64;

    invoke-virtual {v3, p1}, Lyads/y64;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v7, v2

    goto :goto_2

    :cond_7
    move-object v7, p1

    :goto_2
    new-instance v4, Lyads/gg0;

    iget-object v5, v1, Lyads/vf0;->a:Lyads/we0;

    iget-object v6, v1, Lyads/vf0;->b:Lyads/ng0;

    iget-object v8, v1, Lyads/vf0;->d:Lyads/df0;

    iget-object v9, v0, Lyads/wf0;->a:Ljava/util/List;

    iget-object v10, v0, Lyads/wf0;->b:Ljava/util/List;

    invoke-direct/range {v4 .. v10}, Lyads/gg0;-><init>(Lyads/we0;Lyads/ng0;Ljava/util/List;Lyads/df0;Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lyads/hg0;->e:Lyads/ig0;

    iget-object p1, p1, Lyads/ig0;->d:Lyads/wg3;

    invoke-virtual {p1, v4}, Lyads/wg3;->a(Lyads/gg0;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lyads/hg0;->e:Lyads/ig0;

    iget-object p0, p0, Lyads/ig0;->e:Lyads/bh3;

    invoke-virtual {p0, p1}, Lyads/bh3;->a(Ljava/lang/String;)Lyads/ah3;

    move-result-object p0

    return-object p0
.end method
