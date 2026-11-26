.class public final Lxd3$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1"
    f = "Delay.kt"
    l = {
        0x18b
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxd3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lp91<",
        "Ljava/lang/Object;",
        ">;",
        "Le02<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Ljava/lang/Object;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lid3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lxd3$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lxd3$a;->o:Lid3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

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

    new-instance v0, Lxd3$a;

    iget-object p0, p0, Lxd3$a;->o:Lid3;

    invoke-direct {v0, p0, p2}, Lxd3$a;-><init>(Lid3;Le02;)V

    check-cast p1, Lp91;

    iget-object p0, p1, Lp91;->a:Ljava/lang/Object;

    iput-object p0, v0, Lxd3$a;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lp91;

    iget-object p1, p1, Lp91;->a:Ljava/lang/Object;

    check-cast p2, Le02;

    new-instance v0, Lxd3$a;

    iget-object p0, p0, Lxd3$a;->o:Lid3;

    invoke-direct {v0, p0, p2}, Lxd3$a;-><init>(Lid3;Le02;)V

    iput-object p1, v0, Lxd3$a;->n:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lxd3$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lxd3$a;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Lxd3$a;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v0, p0, Lxd3$a;->l:Ljava/lang/Object;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    instance-of p1, v0, Lp91$b;

    if-nez p1, :cond_2

    iput-object v3, p0, Lxd3$a;->n:Ljava/lang/Object;

    iput-object v0, p0, Lxd3$a;->l:Ljava/lang/Object;

    iput v4, p0, Lxd3$a;->m:I

    iget-object p1, p0, Lxd3$a;->o:Lid3;

    invoke-interface {p1, v0, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    instance-of p0, v0, Lp91$a;

    if-eqz p0, :cond_4

    invoke-static {v0}, Lp91;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    throw p0

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
