.class public final Lzv1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.domain.useCases.ConfirmEmailUseCase$invoke$1"
    f = "ConfirmEmailUseCase.kt"
    l = {
        0xf,
        0x10,
        0x11
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lgw2;",
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
.field public l:Lgw2$c;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Law1;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Law1;Ljava/lang/String;Ljava/lang/String;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law1;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lzv1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lzv1;->o:Law1;

    iput-object p2, p0, Lzv1;->p:Ljava/lang/String;

    iput-object p3, p0, Lzv1;->q:Ljava/lang/String;

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

    new-instance v0, Lzv1;

    iget-object v1, p0, Lzv1;->p:Ljava/lang/String;

    iget-object v2, p0, Lzv1;->q:Ljava/lang/String;

    iget-object p0, p0, Lzv1;->o:Law1;

    invoke-direct {v0, p0, v1, v2, p2}, Lzv1;-><init>(Law1;Ljava/lang/String;Ljava/lang/String;Le02;)V

    iput-object p1, v0, Lzv1;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lzv1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lzv1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lzv1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lzv1;->m:I

    const/4 v2, 0x0

    iget-object v3, p0, Lzv1;->o:Law1;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lzv1;->l:Lgw2$c;

    iget-object v3, p0, Lzv1;->n:Ljava/lang/Object;

    check-cast v3, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lzv1;->n:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lzv1;->n:Ljava/lang/Object;

    check-cast p1, Lid3;

    iget-object v1, v3, Law1;->a:Lvw;

    iput-object p1, p0, Lzv1;->n:Ljava/lang/Object;

    iput v6, p0, Lzv1;->m:I

    iget-object v6, p0, Lzv1;->p:Ljava/lang/String;

    iget-object v7, p0, Lzv1;->q:Ljava/lang/String;

    invoke-interface {v1, v6, v7, p0}, Lvw;->b(Ljava/lang/String;Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_0
    check-cast p1, Lgw2;

    instance-of v6, p1, Lgw2$c;

    if-eqz v6, :cond_6

    iget-object v3, v3, Law1;->b:Le89;

    move-object v6, p1

    check-cast v6, Lgw2$c;

    iget-object v7, v6, Lgw2$c;->a:Lj3;

    iget-object v7, v7, Lj3;->f:Ljava/lang/String;

    iput-object v1, p0, Lzv1;->n:Ljava/lang/Object;

    iput-object v6, p0, Lzv1;->l:Lgw2$c;

    iput v5, p0, Lzv1;->m:I

    invoke-virtual {v3, v7, p0}, Le89;->a(Ljava/lang/String;Lpg8;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v1

    move-object v1, p1

    :goto_1
    move-object p1, v1

    move-object v1, v3

    :cond_6
    iput-object v2, p0, Lzv1;->n:Ljava/lang/Object;

    iput-object v2, p0, Lzv1;->l:Lgw2$c;

    iput v4, p0, Lzv1;->m:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_2
    return-object v0

    :cond_7
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
