.class public final Lyads/f64;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/g64;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/util/HashMap;

.field public final synthetic f:Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;


# direct methods
.method public constructor <init>(Lyads/g64;Landroid/content/Context;Ljava/util/HashMap;Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/f64;->c:Lyads/g64;

    iput-object p2, p0, Lyads/f64;->d:Landroid/content/Context;

    iput-object p3, p0, Lyads/f64;->e:Ljava/util/HashMap;

    iput-object p4, p0, Lyads/f64;->f:Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6

    new-instance v0, Lyads/f64;

    iget-object v1, p0, Lyads/f64;->c:Lyads/g64;

    iget-object v2, p0, Lyads/f64;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/f64;->e:Ljava/util/HashMap;

    iget-object v4, p0, Lyads/f64;->f:Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lyads/f64;-><init>(Lyads/g64;Landroid/content/Context;Ljava/util/HashMap;Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/f64;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/f64;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/f64;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/f64;->b:I

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

    iget-object p1, p0, Lyads/f64;->c:Lyads/g64;

    iget-object v1, p0, Lyads/f64;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/f64;->e:Ljava/util/HashMap;

    iget-object v4, p0, Lyads/f64;->f:Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;

    iput v2, p0, Lyads/f64;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p1}, Lc31;->u()V

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :try_start_0
    new-instance v6, Lyads/d64;

    invoke-direct {v6, p0, p1}, Lyads/d64;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lc31;)V

    invoke-interface {v4, v1, v3, v6}, Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;->loadBidderToken(Landroid/content/Context;Ljava/util/Map;Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v3, Lyads/a64;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lyads/a64;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v3}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method
