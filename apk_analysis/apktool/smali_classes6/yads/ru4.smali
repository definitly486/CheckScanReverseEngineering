.class public final Lyads/ru4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/uu4;


# direct methods
.method public constructor <init>(Lyads/uu4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ru4;->b:Lyads/uu4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/ru4;

    iget-object p0, p0, Lyads/ru4;->b:Lyads/uu4;

    invoke-direct {p1, p0, p2}, Lyads/ru4;-><init>(Lyads/uu4;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/ru4;

    iget-object p0, p0, Lyads/ru4;->b:Lyads/uu4;

    invoke-direct {p1, p0, p2}, Lyads/ru4;-><init>(Lyads/uu4;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/ru4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ru4;->b:Lyads/uu4;

    invoke-static {p1}, Lyads/uu4;->b(Lyads/uu4;)Lyads/qu4;

    move-result-object p1

    invoke-virtual {p1}, Lyads/qu4;->a()Lyads/ou4;

    move-result-object p1

    iget-object v0, p0, Lyads/ru4;->b:Lyads/uu4;

    invoke-static {v0}, Lyads/uu4;->a(Lyads/uu4;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lyads/ru4;->b:Lyads/uu4;

    monitor-enter v0

    :try_start_0
    invoke-static {v1, p1}, Lyads/uu4;->a(Lyads/uu4;Lyads/ou4;)V

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lyads/ru4;->b:Lyads/uu4;

    invoke-static {p0}, Lyads/uu4;->c(Lyads/uu4;)V

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
