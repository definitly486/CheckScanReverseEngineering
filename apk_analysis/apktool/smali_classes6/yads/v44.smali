.class public final Lyads/v44;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/monetization/ads/mediation/base/initialize/a;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lyads/x54;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Lyads/x54;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/v44;->c:Lcom/monetization/ads/mediation/base/initialize/a;

    iput-object p2, p0, Lyads/v44;->d:Landroid/content/Context;

    iput-object p3, p0, Lyads/v44;->e:Lyads/x54;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/v44;

    iget-object v0, p0, Lyads/v44;->c:Lcom/monetization/ads/mediation/base/initialize/a;

    iget-object v1, p0, Lyads/v44;->d:Landroid/content/Context;

    iget-object p0, p0, Lyads/v44;->e:Lyads/x54;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/v44;-><init>(Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Lyads/x54;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/v44;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/v44;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/v44;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/v44;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/v44;->c:Lcom/monetization/ads/mediation/base/initialize/a;

    iget-object v1, p0, Lyads/v44;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/v44;->e:Lyads/x54;

    iput v2, p0, Lyads/v44;->b:I

    sget-object v2, Lcom/monetization/ads/mediation/base/initialize/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v3, p0}, Lcom/monetization/ads/mediation/base/initialize/a;->a(Landroid/content/Context;Lyads/x54;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
