.class public final Lbe3;
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
.field public final synthetic b:Lhd3;

.field public final synthetic c:Ldm3;


# direct methods
.method public constructor <init>(Lhd3;Ldm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbe3;->b:Lhd3;

    iput-object p2, p0, Lbe3;->c:Ldm3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p2, Lbe3$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lbe3$a;

    iget v1, v0, Lbe3$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lbe3$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lbe3$a;

    invoke-direct {v0, p0, p2}, Lbe3$a;-><init>(Lbe3;Le02;)V

    :goto_0
    iget-object p2, v0, Lbe3$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lbe3$a;->m:I

    iget-object v3, p0, Lbe3;->c:Ldm3;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lbe3$a;->p:Ljava/io/Serializable;

    check-cast p0, Lpb7;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-object p0, v0, Lbe3$a;->p:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_6

    :cond_3
    iget p0, v0, Lbe3$a;->q:I

    iget-object p1, v0, Lbe3$a;->o:Lid3;

    :try_start_1
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move p2, p0

    move-object p0, p1

    goto :goto_4

    :cond_4
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    :try_start_2
    iget-object p0, p0, Lbe3;->b:Lhd3;

    iput-object p1, v0, Lbe3$a;->o:Lid3;

    iput p2, v0, Lbe3$a;->q:I

    iput v6, v0, Lbe3$a;->m:I

    invoke-interface {p0, p1, v0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p0, v1, :cond_5

    goto :goto_5

    :cond_5
    move p0, p2

    :goto_1
    new-instance p2, Lpb7;

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Lpb7;-><init>(Lid3;Lo22;)V

    :try_start_3
    iput-object v7, v0, Lbe3$a;->o:Lid3;

    iput-object p2, v0, Lbe3$a;->p:Ljava/io/Serializable;

    iput p0, v0, Lbe3$a;->q:I

    iput v4, v0, Lbe3$a;->m:I

    invoke-interface {v3, p2, v7, v0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p0, v1, :cond_6

    goto :goto_5

    :cond_6
    move-object p0, p2

    :goto_2
    invoke-virtual {p0}, Lf02;->releaseIntercepted()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_2
    move-exception p1

    move-object p0, p2

    :goto_3
    invoke-virtual {p0}, Lf02;->releaseIntercepted()V

    throw p1

    :catchall_3
    move-exception p0

    :goto_4
    new-instance p1, Lyt8;

    invoke-direct {p1, p0}, Lyt8;-><init>(Ljava/lang/Throwable;)V

    iput-object v7, v0, Lbe3$a;->o:Lid3;

    iput-object p0, v0, Lbe3$a;->p:Ljava/io/Serializable;

    iput p2, v0, Lbe3$a;->q:I

    iput v5, v0, Lbe3$a;->m:I

    invoke-static {p1, v3, p0, v0}, Lq1;->f(Lyt8;Ldm3;Ljava/lang/Throwable;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_5
    return-object v1

    :cond_7
    :goto_6
    throw p0
.end method
