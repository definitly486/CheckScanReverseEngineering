.class public final Lyads/wg3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxb4;


# direct methods
.method public constructor <init>(Lxb4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wg3;->a:Lxb4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/gg0;)Ljava/lang/String;
    .locals 10

    iget-object p0, p0, Lyads/wg3;->a:Lxb4;

    sget-object v0, Lxb4;->d:Lxb4$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/gg0;->Companion:Lyads/fg0;

    invoke-virtual {v0}, Lyads/fg0;->serializer()Ldf4;

    move-result-object v0

    check-cast v0, Lxp7;

    invoke-virtual {p0, v0, p1}, Lxb4;->b(Lxp7;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/xo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    new-instance p1, Laa1;

    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-direct {p1, v0, v1}, Laa1;-><init>(CC)V

    new-instance v0, Laa1;

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-direct {v0, v1, v2}, Laa1;-><init>(CC)V

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-static {v0, p1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    move-object p1, v1

    :goto_0
    new-instance v0, Ly74;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v2}, Lw74;-><init>(III)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lw74;->b()Lx74;

    move-result-object v0

    :goto_1
    iget-boolean v1, v0, Lx74;->d:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lx74;->nextInt()I

    sget-object v1, Ldx6;->b:Ldx6$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    sget-object v2, Ldx6;->c:Lj1;

    invoke-virtual {v2, v1}, Lj1;->a(I)I

    move-result v1

    invoke-static {v1, p1}, Lqn1;->Q(ILjava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string p0, "Collection is empty."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
