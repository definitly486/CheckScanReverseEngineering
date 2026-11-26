.class public final Lyads/w44;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/monetization/ads/mediation/base/initialize/a;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/w44;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lyads/w44;->d:Lcom/monetization/ads/mediation/base/initialize/a;

    iput-object p3, p0, Lyads/w44;->e:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3

    new-instance v0, Lyads/w44;

    iget-object v1, p0, Lyads/w44;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lyads/w44;->d:Lcom/monetization/ads/mediation/base/initialize/a;

    iget-object p0, p0, Lyads/w44;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0, p2}, Lyads/w44;-><init>(Ljava/util/ArrayList;Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Le02;)V

    iput-object p1, v0, Lyads/w44;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/w44;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/w44;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/w44;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/w44;->b:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v0, p0, Lyads/w44;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lyads/w44;->d:Lcom/monetization/ads/mediation/base/initialize/a;

    iget-object p0, p0, Lyads/w44;->e:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/x54;

    new-instance v3, Lyads/v44;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p0, v2, v4}, Lyads/v44;-><init>(Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Lyads/x54;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v4, v4, v3, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
