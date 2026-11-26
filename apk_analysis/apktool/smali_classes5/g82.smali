.class public final Lg82;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.tasks.domain.interactor.DailyTaskInteractor$getReward$3"
    f = "DailyTaskInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ld82$a;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ld82;

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Ld82;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82;",
            "I",
            "Le02<",
            "-",
            "Lg82;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg82;->m:Ld82;

    iput p2, p0, Lg82;->n:I

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

    new-instance v0, Lg82;

    iget-object v1, p0, Lg82;->m:Ld82;

    iget p0, p0, Lg82;->n:I

    invoke-direct {v0, v1, p0, p2}, Lg82;-><init>(Ld82;ILe02;)V

    iput-object p1, v0, Lg82;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld82$a;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lg82;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lg82;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lg82;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lg82;->l:Ljava/lang/Object;

    check-cast p1, Ld82$a;

    instance-of p1, p1, Ld82$a$a;

    if-nez p1, :cond_0

    iget p1, p0, Lg82;->n:I

    iget-object p0, p0, Lg82;->m:Ld82;

    invoke-virtual {p0, p1}, Ld82;->a(I)V

    iget-object p1, p0, Ld82;->b:Ljf6;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljf6;->C(Z)V

    iget-object p0, p0, Ld82;->f:Lz68;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
