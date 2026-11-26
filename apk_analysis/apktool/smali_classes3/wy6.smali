.class public final Lwy6;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "coil3.RealImageLoader$execute$result$1"
    f = "RealImageLoader.kt"
    l = {
        0x8f
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
        "Lg24;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public final synthetic m:Lb24;

.field public final synthetic n:Lsy6;

.field public final synthetic o:Lt18;

.field public final synthetic p:La13;

.field public final synthetic q:Lx04;


# direct methods
.method public constructor <init>(Lb24;Lsy6;Lt18;La13;Lx04;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb24;",
            "Lsy6;",
            "Lt18;",
            "La13;",
            "Lx04;",
            "Le02<",
            "-",
            "Lwy6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lwy6;->m:Lb24;

    iput-object p2, p0, Lwy6;->n:Lsy6;

    iput-object p3, p0, Lwy6;->o:Lt18;

    iput-object p4, p0, Lwy6;->p:La13;

    iput-object p5, p0, Lwy6;->q:Lx04;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7
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

    new-instance v0, Lwy6;

    iget-object v4, p0, Lwy6;->p:La13;

    iget-object v5, p0, Lwy6;->q:Lx04;

    iget-object v1, p0, Lwy6;->m:Lb24;

    iget-object v2, p0, Lwy6;->n:Lsy6;

    iget-object v3, p0, Lwy6;->o:Lt18;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lwy6;-><init>(Lb24;Lsy6;Lt18;La13;Lx04;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lwy6;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lwy6;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lwy6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lwy6;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v3, Lfz6;

    iget-object p1, p0, Lwy6;->n:Lsy6;

    iget-object p1, p1, Lsy6;->d:Lfs1;

    iget-object v5, p1, Lfs1;->a:Ljava/util/List;

    iget-object p1, p0, Lwy6;->q:Lx04;

    if-eqz p1, :cond_2

    move v10, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move v10, p1

    :goto_0
    iget-object v4, p0, Lwy6;->m:Lb24;

    const/4 v6, 0x0

    iget-object v8, p0, Lwy6;->o:Lt18;

    iget-object v9, p0, Lwy6;->p:La13;

    move-object v7, v4

    invoke-direct/range {v3 .. v10}, Lfz6;-><init>(Lb24;Ljava/util/List;ILb24;Lt18;La13;Z)V

    iput v2, p0, Lwy6;->l:I

    invoke-virtual {v3, p0}, Lfz6;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method
