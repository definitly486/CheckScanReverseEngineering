.class public final Lkn0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$updateFavoriteGroupPreview$1"
    f = "BonusBlockInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/Boolean;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Z

.field public final synthetic m:Lwl0;

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Lwl0;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwl0;",
            "I",
            "Le02<",
            "-",
            "Lkn0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkn0;->m:Lwl0;

    iput p2, p0, Lkn0;->n:I

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

    new-instance v0, Lkn0;

    iget-object v1, p0, Lkn0;->m:Lwl0;

    iget p0, p0, Lkn0;->n:I

    invoke-direct {v0, v1, p0, p2}, Lkn0;-><init>(Lwl0;ILe02;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lkn0;->l:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lkn0;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lkn0;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lkn0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lkn0;->l:Z

    iget-object v0, p0, Lkn0;->m:Lwl0;

    iget-object v0, v0, Lwl0;->c:Ln53;

    iget p0, p0, Lkn0;->n:I

    invoke-interface {v0, p0, p1}, Ln53;->b(IZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
