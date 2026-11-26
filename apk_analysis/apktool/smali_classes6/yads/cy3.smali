.class public final Lyads/cy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/dy3;


# direct methods
.method public constructor <init>(Lyads/f80;)V
    .locals 1

    new-instance v0, Lyads/dy3;

    invoke-direct {v0, p1}, Lyads/dy3;-><init>(Lyads/f80;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/cy3;->a:Lyads/dy3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_media_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    iget-object p0, p0, Lyads/cy3;->a:Lyads/dy3;

    invoke-virtual {p0}, Lyads/dy3;->a()Ljava/lang/Float;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lyads/l25;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v0, p0}, Lyads/l25;-><init>(F)V

    invoke-virtual {p1, v0}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->setMeasureSpecProvider(Lyads/wx3;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
