.class public final Luy6;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "coil3.RealImageLoader$execute$2"
    f = "RealImageLoader.kt"
    l = {
        0x58
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

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lsy6;

.field public final synthetic o:Lb24;


# direct methods
.method public constructor <init>(Lsy6;Lb24;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsy6;",
            "Lb24;",
            "Le02<",
            "-",
            "Luy6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Luy6;->n:Lsy6;

    iput-object p2, p0, Luy6;->o:Lb24;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance v0, Luy6;

    iget-object v1, p0, Luy6;->n:Lsy6;

    iget-object p0, p0, Luy6;->o:Lb24;

    invoke-direct {v0, v1, p0, p2}, Luy6;-><init>(Lsy6;Lb24;Le02;)V

    iput-object p1, v0, Luy6;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Luy6;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Luy6;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Luy6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Luy6;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Luy6;->m:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v1, p0, Luy6;->n:Lsy6;

    iget-object v4, v1, Lsy6;->a:Lsy6$a;

    iget-object v4, v4, Lsy6$a;->c:Lfh8;

    invoke-virtual {v4}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo22;

    new-instance v5, Luy6$a;

    iget-object v6, p0, Luy6;->o:Lb24;

    invoke-direct {v5, v1, v6, v2}, Luy6$a;-><init>(Lsy6;Lb24;Le02;)V

    const/4 v1, 0x2

    invoke-static {p1, v4, v2, v5, v1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p1

    invoke-static {v6, p1}, Lcz6;->a(Lb24;Lnk2;)Lep2;

    move-result-object p1

    invoke-interface {p1}, Lep2;->a()Lmk2;

    move-result-object p1

    iput v3, p0, Luy6;->l:I

    invoke-interface {p1, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
