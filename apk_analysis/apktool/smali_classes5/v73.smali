.class public final Lv73;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.tasks.domain.usecase.promocode.FetchPromocodeCodeUseCase$invoke$1"
    f = "FetchPromocodeCodeUseCase.kt"
    l = {
        0xc,
        0x11,
        0x13
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ls6;",
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
.field public l:Ljava/lang/String;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Z

.field public final synthetic p:Lw73;

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public constructor <init>(ZLw73;IILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lw73;",
            "II",
            "Le02<",
            "-",
            "Lv73;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lv73;->o:Z

    iput-object p2, p0, Lv73;->p:Lw73;

    iput p3, p0, Lv73;->q:I

    iput p4, p0, Lv73;->r:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
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

    new-instance v0, Lv73;

    iget v3, p0, Lv73;->q:I

    iget v4, p0, Lv73;->r:I

    iget-boolean v1, p0, Lv73;->o:Z

    iget-object v2, p0, Lv73;->p:Lw73;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lv73;-><init>(ZLw73;IILe02;)V

    iput-object p1, v0, Lv73;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lv73;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lv73;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lv73;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lv73;->m:I

    iget-object v2, p0, Lv73;->p:Lw73;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v1, p0, Lv73;->l:Ljava/lang/String;

    iget-object v2, p0, Lv73;->n:Ljava/lang/Object;

    check-cast v2, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lv73;->n:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lv73;->n:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    iget-boolean p1, p0, Lv73;->o:Z

    if-nez p1, :cond_5

    iget-object p1, v2, Lw73;->a:Lap8;

    iput-object v1, p0, Lv73;->n:Ljava/lang/Object;

    iput v5, p0, Lv73;->m:I

    iget v5, p0, Lv73;->q:I

    invoke-interface {p1, v5, p0}, Lap8;->m(ILf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    goto :goto_1

    :cond_5
    move-object p1, v1

    move-object v1, v6

    :goto_1
    iget-object v2, v2, Lw73;->a:Lap8;

    iput-object p1, p0, Lv73;->n:Ljava/lang/Object;

    iput-object v1, p0, Lv73;->l:Ljava/lang/String;

    iput v4, p0, Lv73;->m:I

    iget v4, p0, Lv73;->r:I

    invoke-interface {v2, v4, p0}, Lap8;->q(ILf02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, p1

    :goto_2
    new-instance p1, Ls6;

    invoke-direct {p1, v1}, Ls6;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lv73;->n:Ljava/lang/Object;

    iput-object v6, p0, Lv73;->l:Ljava/lang/String;

    iput v3, p0, Lv73;->m:I

    invoke-interface {v2, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_3
    return-object v0

    :cond_7
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
