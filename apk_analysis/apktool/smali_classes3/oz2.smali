.class public final Loz2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "coil3.intercept.EngineInterceptor$execute$executeResult$1"
    f = "EngineInterceptor.kt"
    l = {
        0x83
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
        "Llz2$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public final synthetic m:Llz2;

.field public final synthetic n:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Lb83;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic o:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Lfs1;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Lb24;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Lzz5;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:La13;


# direct methods
.method public constructor <init>(Llz2;Lr07;Lr07;Lb24;Ljava/lang/Object;Lr07;La13;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llz2;",
            "Lr07<",
            "Lb83;",
            ">;",
            "Lr07<",
            "Lfs1;",
            ">;",
            "Lb24;",
            "Ljava/lang/Object;",
            "Lr07<",
            "Lzz5;",
            ">;",
            "La13;",
            "Le02<",
            "-",
            "Loz2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Loz2;->m:Llz2;

    iput-object p2, p0, Loz2;->n:Lr07;

    iput-object p3, p0, Loz2;->o:Lr07;

    iput-object p4, p0, Loz2;->p:Lb24;

    iput-object p5, p0, Loz2;->q:Ljava/lang/Object;

    iput-object p6, p0, Loz2;->r:Lr07;

    iput-object p7, p0, Loz2;->s:La13;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 9
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

    new-instance v0, Loz2;

    iget-object v6, p0, Loz2;->r:Lr07;

    iget-object v7, p0, Loz2;->s:La13;

    iget-object v1, p0, Loz2;->m:Llz2;

    iget-object v2, p0, Loz2;->n:Lr07;

    iget-object v3, p0, Loz2;->o:Lr07;

    iget-object v4, p0, Loz2;->p:Lb24;

    iget-object v5, p0, Loz2;->q:Ljava/lang/Object;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Loz2;-><init>(Llz2;Lr07;Lr07;Lb24;Ljava/lang/Object;Lr07;La13;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Loz2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Loz2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Loz2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Loz2;->l:I

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

    iget-object p1, p0, Loz2;->n:Lr07;

    iget-object p1, p1, Lr07;->b:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lx48;

    iget-object p1, p0, Loz2;->o:Lr07;

    iget-object p1, p1, Lr07;->b:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lfs1;

    iget-object p1, p0, Loz2;->r:Lr07;

    iget-object p1, p1, Lr07;->b:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Lzz5;

    iput v2, p0, Loz2;->l:I

    iget-object v3, p0, Loz2;->m:Llz2;

    iget-object v6, p0, Loz2;->p:Lb24;

    iget-object v7, p0, Loz2;->q:Ljava/lang/Object;

    iget-object v9, p0, Loz2;->s:La13;

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Llz2;->b(Lx48;Lfs1;Lb24;Ljava/lang/Object;Lzz5;La13;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
