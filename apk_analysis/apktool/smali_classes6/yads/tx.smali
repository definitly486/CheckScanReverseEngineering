.class public final Lyads/tx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/pg4;


# direct methods
.method public constructor <init>(Lyads/pg4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/tx;->a:Lyads/pg4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_call_to_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lyads/tx;->a:Lyads/pg4;

    invoke-interface {p0}, Lyads/pg4;->getAdType()Lyads/f95;

    move-result-object p0

    instance-of v0, p1, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;

    if-eqz v0, :cond_0

    sget-object v0, Lyads/f95;->e:Lyads/f95;

    if-eq p0, v0, :cond_0

    check-cast p1, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;

    invoke-virtual {p1}, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
