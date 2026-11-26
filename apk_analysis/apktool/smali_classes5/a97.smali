.class public final La97;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.rx2.RxConvertKt$asObservable$1$job$1"
    f = "RxConvert.kt"
    l = {
        0x71
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lcf3;

.field public final synthetic o:Lxq5$a;


# direct methods
.method public constructor <init>(Lcf3;Lxq5$a;Le02;)V
    .locals 0

    iput-object p1, p0, La97;->n:Lcf3;

    iput-object p2, p0, La97;->o:Lxq5$a;

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

    new-instance v0, La97;

    iget-object v1, p0, La97;->n:Lcf3;

    iget-object p0, p0, La97;->o:Lxq5$a;

    invoke-direct {v0, v1, p0, p2}, La97;-><init>(Lcf3;Lxq5$a;Le02;)V

    iput-object p1, v0, La97;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, La97;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, La97;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, La97;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, La97;->m:Ljava/lang/Object;

    check-cast v0, Ly22;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, La97;->l:I

    const/4 v3, 0x1

    iget-object v4, p0, La97;->o:Lxq5$a;

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, La97;->n:Lcf3;

    new-instance v2, La97$a;

    invoke-direct {v2, v4}, La97$a;-><init>(Lxq5$a;)V

    iput-object v0, p0, La97;->m:Ljava/lang/Object;

    iput v3, p0, La97;->l:I

    invoke-virtual {p1, v2, p0}, Lcf3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    invoke-virtual {v4}, Lxq5$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_3

    invoke-virtual {v4, p0}, Lxq5$a;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0}, Ly22;->getCoroutineContext()Lo22;

    move-result-object p1

    invoke-static {p1, p0}, Luc5;->b(Lo22;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lxq5$a;->a()V

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
