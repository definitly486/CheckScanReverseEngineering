.class public final Lxm0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$loadBonusesBlocks$1"
    f = "BonusBlockInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lak0;",
        ">;>;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic l:Lwl0;


# direct methods
.method public constructor <init>(Lwl0;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwl0;",
            "Le02<",
            "-",
            "Lxm0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lxm0;->l:Lwl0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Lxm0;

    iget-object p0, p0, Lxm0;->l:Lwl0;

    invoke-direct {p1, p0, p2}, Lxm0;-><init>(Lwl0;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lxm0;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lxm0;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lxm0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lxm0;->l:Lwl0;

    iget-object p1, p0, Lwl0;->g:Lz68;

    iget-object p0, p0, Lwl0;->e:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Lz68;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
