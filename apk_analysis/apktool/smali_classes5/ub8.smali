.class public final Lub8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lid3;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Lbm3<",
            "-",
            "Lid3<",
            "-TT;>;-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lub8;->b:Lid3;

    iput-object p2, p0, Lub8;->c:Lbm3;

    return-void
.end method


# virtual methods
.method public final c(Lf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Ltb8;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ltb8;

    iget v1, v0, Ltb8;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ltb8;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltb8;

    invoke-direct {v0, p0, p1}, Ltb8;-><init>(Lub8;Lf02;)V

    :goto_0
    iget-object p1, v0, Ltb8;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ltb8;->o:I

    const/4 v3, 0x0

    iget-object v4, p0, Lub8;->b:Lid3;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p0, v0, Ltb8;->l:Lpb7;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Lpb7;

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object v2

    invoke-direct {p1, v4, v2}, Lpb7;-><init>(Lid3;Lo22;)V

    :try_start_1
    iget-object p0, p0, Lub8;->c:Lbm3;

    iput-object p1, v0, Ltb8;->l:Lpb7;

    iput v6, v0, Ltb8;->o:I

    invoke-interface {p0, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p0, p1

    :goto_1
    invoke-virtual {p0}, Lf02;->releaseIntercepted()V

    instance-of p0, v4, Lub8;

    if-eqz p0, :cond_6

    check-cast v4, Lub8;

    iput-object v3, v0, Ltb8;->l:Lpb7;

    iput v5, v0, Ltb8;->o:I

    invoke-virtual {v4, v0}, Lub8;->c(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_1
    move-exception p0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_4
    invoke-virtual {p0}, Lf02;->releaseIntercepted()V

    throw p1
.end method

.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lub8;->b:Lid3;

    invoke-interface {p0, p1, p2}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
