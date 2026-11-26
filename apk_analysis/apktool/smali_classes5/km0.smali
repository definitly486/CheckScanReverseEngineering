.class public final Lkm0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$fetchMain$$inlined$flatMapLatest$1"
    f = "BonusBlockInteractor.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Lid3<",
        "-",
        "Lw81;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lak0;",
        ">;",
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

.field public synthetic m:Lid3;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lwl0;


# direct methods
.method public constructor <init>(Lwl0;Le02;)V
    .locals 0

    iput-object p1, p0, Lkm0;->o:Lwl0;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lid3;

    check-cast p3, Le02;

    new-instance v0, Lkm0;

    iget-object p0, p0, Lkm0;->o:Lwl0;

    invoke-direct {v0, p0, p3}, Lkm0;-><init>(Lwl0;Le02;)V

    iput-object p1, v0, Lkm0;->m:Lid3;

    iput-object p2, v0, Lkm0;->n:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lkm0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lkm0;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkm0;->m:Lid3;

    iget-object v1, p0, Lkm0;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v1, p0, Lkm0;->o:Lwl0;

    iget-object v1, v1, Lwl0;->c:Ln53;

    invoke-interface {v1}, Ln53;->a()Lfy6;

    move-result-object v1

    iput v2, p0, Lkm0;->l:I

    invoke-static {p1, v1, p0}, Lpx;->f(Lid3;Lhd3;Lpg8;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
