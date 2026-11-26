.class public final Lyads/q04;
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

    iput-object v0, p0, Lyads/q04;->a:Lyads/dy3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 3

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_media_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    iget-object p0, p0, Lyads/q04;->a:Lyads/dy3;

    invoke-virtual {p0}, Lyads/dy3;->a()Ljava/lang/Float;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v1, 0x3fe38e39

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance v1, Lyads/l25;

    invoke-direct {v1, p0}, Lyads/l25;-><init>(F)V

    new-instance p0, Lyads/rx3;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v2}, Lyads/rx3;-><init>(Landroid/view/ViewGroup;F)V

    const/4 p1, 0x2

    new-array p1, p1, [Lyads/wx3;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const/4 v1, 0x1

    aput-object p0, p1, v1

    invoke-static {p1}, Lyads/d50;->a([Lyads/wx3;)Lyads/e50;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->setMeasureSpecProvider(Lyads/wx3;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
