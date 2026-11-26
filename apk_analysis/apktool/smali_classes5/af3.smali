.class public final Laf3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1"
    f = "Share.kt"
    l = {
        0xd2,
        0xd6,
        0xd7,
        0xdd
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
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

.field public final synthetic m:Leu7;

.field public final synthetic n:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic o:Lvg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvg5<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leu7;Lhd3;Lvg5;Ljava/lang/Object;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu7;",
            "Lhd3<",
            "Ljava/lang/Object;",
            ">;",
            "Lvg5<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Le02<",
            "-",
            "Laf3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Laf3;->m:Leu7;

    iput-object p2, p0, Laf3;->n:Lhd3;

    iput-object p3, p0, Laf3;->o:Lvg5;

    iput-object p4, p0, Laf3;->p:Ljava/lang/Object;

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

    new-instance v0, Laf3;

    iget-object v3, p0, Laf3;->o:Lvg5;

    iget-object v4, p0, Laf3;->p:Ljava/lang/Object;

    iget-object v1, p0, Laf3;->m:Leu7;

    iget-object v2, p0, Laf3;->n:Lhd3;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Laf3;-><init>(Leu7;Lhd3;Lvg5;Ljava/lang/Object;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Laf3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Laf3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Laf3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Laf3;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    iget-object v6, p0, Laf3;->n:Lhd3;

    const/4 v7, 0x2

    iget-object v8, p0, Laf3;->o:Lvg5;

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v7, :cond_1

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Leu7$a;->a:Lsj0;

    iget-object v1, p0, Laf3;->m:Leu7;

    if-ne v1, p1, :cond_4

    iput v5, p0, Laf3;->l:I

    invoke-interface {v6, v8, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_2

    :cond_4
    sget-object p1, Leu7$a;->b:Lv68;

    if-ne v1, p1, :cond_6

    invoke-interface {v8}, Lvg5;->f()Lgc8;

    move-result-object p1

    new-instance v1, Laf3$a;

    invoke-direct {v1, v7, v2}, Lpg8;-><init>(ILe02;)V

    iput v7, p0, Laf3;->l:I

    invoke-static {p1, v1, p0}, Lue3;->b(Lhd3;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    iput v4, p0, Laf3;->l:I

    invoke-interface {v6, v8, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Lvg5;->f()Lgc8;

    move-result-object p1

    invoke-interface {v1, p1}, Leu7;->b(Ly68;)Lhd3;

    move-result-object p1

    invoke-static {p1}, Lzd3;->c(Lhd3;)Lhd3;

    move-result-object p1

    new-instance v1, Laf3$b;

    iget-object v4, p0, Laf3;->p:Ljava/lang/Object;

    invoke-direct {v1, v6, v8, v4, v2}, Laf3$b;-><init>(Lhd3;Lvg5;Ljava/lang/Object;Le02;)V

    iput v3, p0, Laf3;->l:I

    invoke-static {p1, v1, p0}, Lpx;->c(Lhd3;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_2
    return-object v0

    :cond_7
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
