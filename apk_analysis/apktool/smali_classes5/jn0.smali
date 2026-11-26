.class public final Ljn0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$setUpBonusesScreen$1"
    f = "BonusBlockInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lbo0$a;",
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

.field public final synthetic m:Lwl0;

.field public final synthetic n:Ly22;


# direct methods
.method public constructor <init>(Lwl0;Ly22;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwl0;",
            "Ly22;",
            "Le02<",
            "-",
            "Ljn0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljn0;->m:Lwl0;

    iput-object p2, p0, Ljn0;->n:Ly22;

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

    new-instance v0, Ljn0;

    iget-object v1, p0, Ljn0;->m:Lwl0;

    iget-object p0, p0, Ljn0;->n:Ly22;

    invoke-direct {v0, v1, p0, p2}, Ljn0;-><init>(Lwl0;Ly22;Le02;)V

    iput-object p1, v0, Ljn0;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lbo0$a;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ljn0;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ljn0;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ljn0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ljn0;->l:Ljava/lang/Object;

    check-cast p1, Lbo0$a;

    sget-object v0, Lbo0$a$a;->a:Lbo0$a$a;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljn0;->m:Lwl0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lwl0;->k(Z)Ldf3;

    move-result-object p1

    iget-object p0, p0, Ljn0;->n:Ly22;

    invoke-static {p1, p0}, Lpx;->h(Lhd3;Ly22;)Ls68;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
