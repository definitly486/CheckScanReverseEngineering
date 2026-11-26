.class public final Lyads/yy2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/bz2;

.field public final synthetic e:Lyads/c65;


# direct methods
.method public constructor <init>(Lyads/bz2;Lyads/c65;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/yy2;->d:Lyads/bz2;

    iput-object p2, p0, Lyads/yy2;->e:Lyads/c65;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance v0, Lyads/yy2;

    iget-object v1, p0, Lyads/yy2;->d:Lyads/bz2;

    iget-object p0, p0, Lyads/yy2;->e:Lyads/c65;

    invoke-direct {v0, v1, p0, p2}, Lyads/yy2;-><init>(Lyads/bz2;Lyads/c65;Le02;)V

    iput-object p1, v0, Lyads/yy2;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/yy2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/yy2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/yy2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/yy2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/yy2;->c:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object p1, p0, Lyads/yy2;->d:Lyads/bz2;

    iget-object v1, p0, Lyads/yy2;->e:Lyads/c65;

    :try_start_1
    iput v2, p0, Lyads/yy2;->b:I

    invoke-virtual {p1, v1, p0}, Lyads/bz2;->a(Lyads/c65;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    new-instance p0, Lk57;

    invoke-direct {p0, p1}, Lk57;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
