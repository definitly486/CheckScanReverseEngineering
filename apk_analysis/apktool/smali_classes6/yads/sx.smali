.class public final Lyads/sx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/wd4;

.field public final b:Lyads/rx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lyads/wd4;

    invoke-direct {v0}, Lyads/wd4;-><init>()V

    new-instance v1, Lyads/rx;

    invoke-direct {v1, p1}, Lyads/rx;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/sx;->a:Lyads/wd4;

    iput-object v1, p0, Lyads/sx;->b:Lyads/rx;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lyads/sx;->a:Lyads/wd4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_call_to_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/sx;->b:Lyads/rx;

    iget-object v0, p0, Lyads/rx;->a:Ly22;

    new-instance v1, Lyads/qx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lyads/qx;-><init>(Lyads/rx;Landroid/widget/TextView;Le02;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Lyads/rx;->c:Lmb4;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object p0, p0, Lyads/sx;->b:Lyads/rx;

    iget-object v0, p0, Lyads/rx;->c:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lyads/rx;->c:Lmb4;

    iget-object p0, p0, Lyads/rx;->b:Lyads/t40;

    invoke-virtual {p0}, Lyads/t40;->cancel()V

    return-void
.end method
