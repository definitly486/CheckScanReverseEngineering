.class public final Lyads/n84;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/q84;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lyads/q84;Ljava/lang/String;Ljava/lang/Throwable;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/n84;->b:Lyads/q84;

    iput-object p2, p0, Lyads/n84;->c:Ljava/lang/String;

    iput-object p3, p0, Lyads/n84;->d:Ljava/lang/Throwable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/n84;

    iget-object v0, p0, Lyads/n84;->b:Lyads/q84;

    iget-object v1, p0, Lyads/n84;->c:Ljava/lang/String;

    iget-object p0, p0, Lyads/n84;->d:Ljava/lang/Throwable;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/n84;-><init>(Lyads/q84;Ljava/lang/String;Ljava/lang/Throwable;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/n84;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/n84;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/n84;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lyads/n84;->b:Lyads/q84;

    iget-object v0, p0, Lyads/n84;->c:Ljava/lang/String;

    iget-object v1, p0, Lyads/n84;->d:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lyads/q84;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lyads/n84;->b:Lyads/q84;

    iget-object p1, p1, Lyads/q84;->a:Lyads/wg;

    iget-object v0, p0, Lyads/n84;->c:Ljava/lang/String;

    iget-object p0, p0, Lyads/n84;->d:Ljava/lang/Throwable;

    invoke-virtual {p1, v0, p0}, Lyads/wg;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
