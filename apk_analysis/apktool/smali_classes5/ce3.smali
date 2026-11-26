.class public final Lce3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lhd3;


# direct methods
.method public constructor <init>(Lhd3;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lce3;->b:Lbm3;

    iput-object p1, p0, Lce3;->c:Lhd3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lce3$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lce3$a;

    iget v1, v0, Lce3$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lce3$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lce3$a;

    invoke-direct {v0, p0, p2}, Lce3$a;-><init>(Lce3;Le02;)V

    :goto_0
    iget-object p2, v0, Lce3$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lce3$a;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lce3$a;->q:I

    iget-object v2, v0, Lce3$a;->p:Lpb7;

    iget-object v4, v0, Lce3$a;->o:Lid3;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, p1

    move-object p1, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v2, Lpb7;

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lpb7;-><init>(Lid3;Lo22;)V

    :try_start_1
    iget-object p2, p0, Lce3;->b:Lbm3;

    iput-object p1, v0, Lce3$a;->o:Lid3;

    iput-object v2, v0, Lce3$a;->p:Lpb7;

    const/4 v6, 0x0

    iput v6, v0, Lce3$a;->q:I

    iput v4, v0, Lce3$a;->m:I

    invoke-interface {p2, v2, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v2}, Lf02;->releaseIntercepted()V

    iput-object v5, v0, Lce3$a;->o:Lid3;

    iput-object v5, v0, Lce3$a;->p:Lpb7;

    iput v6, v0, Lce3$a;->q:I

    iput v3, v0, Lce3$a;->m:I

    iget-object p0, p0, Lce3;->c:Lhd3;

    invoke-interface {p0, p1, v0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_4
    invoke-virtual {v2}, Lf02;->releaseIntercepted()V

    throw p0
.end method
