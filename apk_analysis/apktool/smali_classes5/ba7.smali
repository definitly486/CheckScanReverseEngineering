.class public final Lba7;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.sse.SSEInteractor$startListening$2"
    f = "SSEInteractor.kt"
    l = {
        0x23,
        0x24,
        0x25,
        0x26,
        0x27
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lka7$a;",
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

.field public final synthetic n:Lda7;


# direct methods
.method public constructor <init>(Lda7;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda7;",
            "Le02<",
            "-",
            "Lba7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lba7;->n:Lda7;

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

    new-instance v0, Lba7;

    iget-object p0, p0, Lba7;->n:Lda7;

    invoke-direct {v0, p0, p2}, Lba7;-><init>(Lda7;Le02;)V

    iput-object p1, v0, Lba7;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lka7$a;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lba7;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lba7;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lba7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lba7;->l:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lba7;->m:Ljava/lang/Object;

    check-cast p1, Lka7$a;

    iget-object p1, p1, Lka7$a;->a:Ly97;

    instance-of v1, p1, Lpa7;

    iget-object v7, p0, Lba7;->n:Lda7;

    if-eqz v1, :cond_4

    iget-object p1, v7, Lda7;->b:Lbo0;

    iput v6, p0, Lba7;->l:I

    iget-object p1, p1, Lbo0;->a:Lzs7;

    sget-object v1, Lbo0$a$a;->a:Lbo0$a$a;

    invoke-virtual {p1, v1, p0}, Lzs7;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    :goto_1
    if-ne p0, v0, :cond_8

    goto :goto_2

    :cond_4
    instance-of v1, p1, Loa7;

    if-eqz v1, :cond_5

    iget-object p1, v7, Lda7;->c:Lb40;

    iput v5, p0, Lba7;->l:I

    invoke-static {v4, p1, p0}, Lb40;->d(ILb40;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    goto :goto_2

    :cond_5
    instance-of v1, p1, Lra7;

    sget-object v5, Lzl2$a$h;->a:Lzl2$a$h;

    if-eqz v1, :cond_6

    iget-object p1, v7, Lda7;->d:Lzl2;

    iput v4, p0, Lba7;->l:I

    invoke-virtual {p1, v5, p0}, Lzl2;->a(Lzl2$a;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    goto :goto_2

    :cond_6
    instance-of v1, p1, Lqa7;

    if-eqz v1, :cond_7

    iget-object p1, v7, Lda7;->e:Lic8;

    iput v3, p0, Lba7;->l:I

    invoke-virtual {p1, p0}, Lic8;->b(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    goto :goto_2

    :cond_7
    instance-of p1, p1, Lsa7;

    if-eqz p1, :cond_8

    iget-object p1, v7, Lda7;->d:Lzl2;

    iput v2, p0, Lba7;->l:I

    invoke-virtual {p1, v5, p0}, Lzl2;->a(Lzl2$a;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    :goto_2
    return-object v0

    :cond_8
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
