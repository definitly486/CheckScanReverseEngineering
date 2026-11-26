.class public final Ly63;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.tasks.domain.usecase.checkboxSteps.FetchCheckboxStepsSubtaskUseCase$invoke$1"
    f = "FetchCheckboxStepsSubtaskUseCase.kt"
    l = {
        0xc,
        0xc
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ljava/lang/String;",
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

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lz63;

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public constructor <init>(Lz63;IILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz63;",
            "II",
            "Le02<",
            "-",
            "Ly63;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ly63;->n:Lz63;

    iput p2, p0, Ly63;->o:I

    iput p3, p0, Ly63;->p:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3
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

    new-instance v0, Ly63;

    iget v1, p0, Ly63;->o:I

    iget v2, p0, Ly63;->p:I

    iget-object p0, p0, Ly63;->n:Lz63;

    invoke-direct {v0, p0, v1, v2, p2}, Ly63;-><init>(Lz63;IILe02;)V

    iput-object p1, v0, Ly63;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ly63;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ly63;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ly63;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Ly63;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Ly63;->m:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ly63;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    iget-object p1, p0, Ly63;->n:Lz63;

    iget-object p1, p1, Lz63;->a:Lap8;

    iput-object v1, p0, Ly63;->m:Ljava/lang/Object;

    iput v4, p0, Ly63;->l:I

    iget v4, p0, Ly63;->o:I

    iget v5, p0, Ly63;->p:I

    invoke-interface {p1, v4, v5, p0}, Lap8;->h(IILf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iput-object v2, p0, Ly63;->m:Ljava/lang/Object;

    iput v3, p0, Ly63;->l:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
