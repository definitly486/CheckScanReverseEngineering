.class public final Ltp;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.AppLauncher$handlePushIntent$1"
    f = "AppLauncher.kt"
    l = {
        0x195
    }
    m = "invokeSuspend"
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/a;

.field public final synthetic n:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/a;Landroid/content/Intent;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/a;",
            "Landroid/content/Intent;",
            "Le02<",
            "-",
            "Ltp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltp;->m:Lcom/warefly/checkscan/presentation/a;

    iput-object p2, p0, Ltp;->n:Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
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

    new-instance p1, Ltp;

    iget-object v0, p0, Ltp;->m:Lcom/warefly/checkscan/presentation/a;

    iget-object p0, p0, Ltp;->n:Landroid/content/Intent;

    invoke-direct {p1, v0, p0, p2}, Ltp;-><init>(Lcom/warefly/checkscan/presentation/a;Landroid/content/Intent;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ltp;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ltp;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ltp;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Ltp;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ltp;->m:Lcom/warefly/checkscan/presentation/a;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/a;->e:Lmu6;

    iput v3, p0, Ltp;->l:I

    const-string v1, "push_id"

    iget-object v3, p0, Ltp;->n:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lqa8;->q(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_4

    iget-object p1, p1, Lmu6;->a:Lhc1;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, p0}, Lhc1;->b(JLtp;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    :goto_0
    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
