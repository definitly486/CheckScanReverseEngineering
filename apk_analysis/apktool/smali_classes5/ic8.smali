.class public final Lic8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ltc8;

.field public final b:Ljf6;

.field public final c:Lz68;

.field public final d:Lfh8;

.field public final e:Lz68;

.field public final f:Lgy6;


# direct methods
.method public constructor <init>(Ltc8;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic8;->a:Ltc8;

    iput-object p2, p0, Lic8;->b:Ljf6;

    sget-object p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$c;->a:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$c;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lic8;->c:Lz68;

    sget-object p1, Lic8$a;->f:Lic8$a;

    invoke-static {p1}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p1

    iput-object p1, p0, Lic8;->d:Lfh8;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lic8;->e:Lz68;

    invoke-static {p1}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p1

    iput-object p1, p0, Lic8;->f:Lgy6;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Ljc8;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljc8;

    iget v1, v0, Ljc8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljc8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljc8;

    invoke-direct {v0, p0, p1}, Ljc8;-><init>(Lic8;Lf02;)V

    :goto_0
    iget-object p1, v0, Ljc8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ljc8;->n:I

    const/4 v3, 0x0

    iget-object v4, p0, Lic8;->e:Lz68;

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lic8;->b:Ljf6;

    invoke-interface {p1}, Ljf6;->G0()Z

    move-result p1

    if-nez p1, :cond_7

    :try_start_1
    iget-object p0, p0, Lic8;->a:Ltc8;

    iput v5, v0, Ljc8;->n:I

    invoke-interface {p0, v0}, Ltc8;->a(Ljc8;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lxc8;

    :cond_4
    invoke-virtual {v4}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lwc8;

    invoke-virtual {p1}, Lxc8;->a()Lwc8;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    :cond_5
    invoke-virtual {v4}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lwc8;

    invoke-virtual {v4, p0, v3}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_6
    throw p0

    :cond_7
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final b(Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lkc8;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkc8;

    iget v1, v0, Lkc8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkc8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkc8;

    invoke-direct {v0, p0, p1}, Lkc8;-><init>(Lic8;Lf02;)V

    :goto_0
    iget-object p1, v0, Lkc8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lkc8;->n:I

    iget-object v3, p0, Lic8;->c:Lz68;

    iget-object v4, p0, Lic8;->b:Ljf6;

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-interface {v4}, Ljf6;->G0()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lic8;->d:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lic8;->a:Ltc8;

    iput v5, v0, Lkc8;->n:I

    invoke-interface {p0, v0}, Ltc8;->b(Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    move-object p0, p1

    check-cast p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    invoke-virtual {v3, p1, p0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_4
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8

    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    :cond_6
    invoke-virtual {v3}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    new-instance p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;

    invoke-interface {v4}, Ljf6;->L()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_7
    throw p0

    :cond_8
    :goto_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
