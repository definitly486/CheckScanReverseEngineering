.class public final Lyads/wn4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/ao4;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lyads/sl5;

.field public final synthetic f:Lyads/x54;


# direct methods
.method public constructor <init>(Lyads/ao4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/wn4;->c:Lyads/ao4;

    iput-object p2, p0, Lyads/wn4;->d:Landroid/content/Context;

    iput-object p3, p0, Lyads/wn4;->e:Lyads/sl5;

    iput-object p4, p0, Lyads/wn4;->f:Lyads/x54;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6

    new-instance v0, Lyads/wn4;

    iget-object v1, p0, Lyads/wn4;->c:Lyads/ao4;

    iget-object v2, p0, Lyads/wn4;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/wn4;->e:Lyads/sl5;

    iget-object v4, p0, Lyads/wn4;->f:Lyads/x54;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lyads/wn4;-><init>(Lyads/ao4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/wn4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/wn4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/wn4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/wn4;->b:I

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

    iget-object p1, p0, Lyads/wn4;->c:Lyads/ao4;

    iget-object v4, p1, Lyads/ao4;->a:Lyads/g64;

    iget-object v5, p0, Lyads/wn4;->d:Landroid/content/Context;

    iget-object v6, p0, Lyads/wn4;->e:Lyads/sl5;

    iget-object v7, p0, Lyads/wn4;->f:Lyads/x54;

    iput v3, p0, Lyads/wn4;->b:I

    iget-object p1, v4, Lyads/g64;->a:Lyads/e34;

    const-class v1, Lcom/monetization/ads/mediation/base/a;

    invoke-virtual {p1, v5, v7, v1}, Lyads/e34;->a(Landroid/content/Context;Lyads/x54;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v4, Lyads/g64;->d:Lyads/p24;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lyads/o24;

    invoke-direct {v8, p1}, Lyads/o24;-><init>(Lcom/monetization/ads/mediation/base/a;)V

    instance-of v1, p1, Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;

    if-nez v1, :cond_3

    move-object v6, v7

    move-object v7, v8

    const-string v8, "Can\'t create bidder token loader."

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lyads/g64;->a(Landroid/content/Context;Lyads/x54;Lyads/o24;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    move-object v1, v6

    move-object v6, v7

    move-object v7, v8

    move-object v9, p1

    check-cast v9, Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;

    move-object v10, p0

    move-object v7, v6

    move-object v6, v1

    invoke-virtual/range {v4 .. v10}, Lyads/g64;->a(Landroid/content/Context;Lyads/sl5;Lyads/x54;Lyads/o24;Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;Lf02;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    return-object v2
.end method
