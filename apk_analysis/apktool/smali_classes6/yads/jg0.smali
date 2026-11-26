.class public final Lyads/jg0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyg5;

.field public c:Lyads/kg0;

.field public d:Lyads/kg0;

.field public e:I

.field public final synthetic f:Lyads/kg0;


# direct methods
.method public constructor <init>(Lyads/kg0;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/jg0;->f:Lyads/kg0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/jg0;

    iget-object p0, p0, Lyads/jg0;->f:Lyads/kg0;

    invoke-direct {p1, p0, p2}, Lyads/jg0;-><init>(Lyads/kg0;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/jg0;

    iget-object p0, p0, Lyads/jg0;->f:Lyads/kg0;

    invoke-direct {p1, p0, p2}, Lyads/jg0;-><init>(Lyads/kg0;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/jg0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/jg0;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lyads/jg0;->d:Lyads/kg0;

    iget-object v1, p0, Lyads/jg0;->c:Lyads/kg0;

    iget-object p0, p0, Lyads/jg0;->b:Lyg5;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Lk57;

    iget-object p1, p1, Lk57;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lyads/jg0;->c:Lyads/kg0;

    iget-object v3, p0, Lyads/jg0;->b:Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object p1, v1

    move-object v1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/jg0;->f:Lyads/kg0;

    iget-object v1, p1, Lyads/kg0;->f:Lyg5;

    iput-object v1, p0, Lyads/jg0;->b:Lyg5;

    iput-object p1, p0, Lyads/jg0;->c:Lyads/kg0;

    iput v3, p0, Lyads/jg0;->e:I

    invoke-interface {v1, v4, p0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_1
    iget-object v3, p1, Lyads/kg0;->e:Lyads/dg0;

    if-eqz v3, :cond_4

    move-object p0, v1

    goto :goto_3

    :cond_4
    iget-object v3, p1, Lyads/kg0;->b:Lyads/b65;

    iput-object v1, p0, Lyads/jg0;->b:Lyg5;

    iput-object p1, p0, Lyads/jg0;->c:Lyads/kg0;

    iput-object p1, p0, Lyads/jg0;->d:Lyads/kg0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput v2, p0, Lyads/jg0;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3, p0}, Lyads/b65;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p0, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v0

    :goto_2
    :try_start_4
    instance-of v2, p1, Lk57$a;

    if-eqz v2, :cond_6

    move-object p1, v4

    :cond_6
    check-cast p1, Lyads/dg0;

    iput-object p1, v0, Lyads/kg0;->e:Lyads/dg0;

    move-object p1, v1

    :goto_3
    iget-object v0, p1, Lyads/kg0;->a:Lyads/wu3;

    invoke-virtual {v0}, Lyads/wu3;->a()Lyads/vf0;

    move-result-object v0

    iget-object v1, p1, Lyads/kg0;->c:Lyads/ff0;

    iget-object p1, p1, Lyads/kg0;->e:Lyads/dg0;

    invoke-virtual {v1, v0, p1}, Lyads/ff0;->a(Lyads/vf0;Lyads/dg0;)Lyads/ef0;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_4
    move-object v1, p0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p1, p0

    goto :goto_5

    :catchall_2
    move-exception p1

    :goto_5
    invoke-interface {v1, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
