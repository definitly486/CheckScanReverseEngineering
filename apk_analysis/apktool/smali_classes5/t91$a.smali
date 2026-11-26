.class public final Lt91$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2"
    f = "Channels.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt91;->a(Lno7;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lp91<",
        "+",
        "Lj59;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lno7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lno7<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lno7;Ljava/lang/Object;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno7<",
            "-TE;>;TE;",
            "Le02<",
            "-",
            "Lt91$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lt91$a;->n:Lno7;

    iput-object p2, p0, Lt91$a;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lt91$a;

    iget-object v1, p0, Lt91$a;->n:Lno7;

    iget-object p0, p0, Lt91$a;->o:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p2}, Lt91$a;-><init>(Lno7;Ljava/lang/Object;Le02;)V

    iput-object p1, v0, Lt91$a;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lt91$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lt91$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lt91$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lt91$a;->m:Ljava/lang/Object;

    check-cast v0, Ly22;

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lt91$a;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lt91$a;->n:Lno7;

    iget-object v1, p0, Lt91$a;->o:Ljava/lang/Object;

    :try_start_1
    iput-object v2, p0, Lt91$a;->m:Ljava/lang/Object;

    iput v3, p0, Lt91$a;->l:I

    invoke-interface {p1, v1, p0}, Lno7;->send(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_1
    nop

    instance-of p1, p0, Lk57$a;

    if-nez p1, :cond_3

    sget-object p0, Lj59;->a:Lj59;

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Lp91$a;

    invoke-direct {p1, p0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    new-instance p1, Lp91;

    invoke-direct {p1, p0}, Lp91;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
