.class public final Lyads/co0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qc;


# instance fields
.field public final a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lyads/uc;Lyads/yb;)V
    .locals 3

    new-instance v0, Lyads/bc;

    invoke-direct {v0, p1, p2, p3}, Lyads/bc;-><init>(Landroid/app/Activity;Lyads/uc;Lyads/yb;)V

    new-instance p2, Lyads/hc;

    invoke-direct {p2}, Lyads/hc;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p3, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_BottomAdtuneDialog:I

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lyads/bc;->a:Landroid/app/Activity;

    iget-object p3, v0, Lyads/bc;->c:Lyads/yb;

    iget-boolean p3, p3, Lyads/yb;->d:Z

    if-eqz p3, :cond_0

    sget p3, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_AdtuneTheme_Dark:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_AdtuneTheme_Light:I

    :goto_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_adtune_container:I

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p3, v0, Lyads/bc;->d:Lyads/tc;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Lcom/yandex/mobile/ads/R$id;->adtune_content_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    if-eqz p3, :cond_1

    iget-object v2, v0, Lyads/bc;->e:Lyads/ic;

    invoke-virtual {p3, v2}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->setMeasureSpecProvider(Lyads/wx3;)V

    :cond_1
    iget-object p3, v0, Lyads/bc;->d:Lyads/tc;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Lcom/yandex/mobile/ads/R$id;->adtune_webview_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_3

    const/16 v2, 0x23

    invoke-static {v2}, Lyads/za;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Lyads/bc;->a(Landroid/view/ViewGroup;)V

    :cond_2
    iget-object v0, v0, Lyads/bc;->b:Lyads/uc;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    sget p3, Lcom/yandex/mobile/ads/R$id;->adtune_drag_view_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v0, Lyads/gc;

    iget-object v2, p2, Lyads/hc;->a:Lyads/fr3;

    invoke-direct {v0, p1, v1, v2}, Lyads/gc;-><init>(Landroid/view/ViewGroup;Landroid/app/Dialog;Lyads/fr3;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    sget p3, Lcom/yandex/mobile/ads/R$id;->adtune_background_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_5

    new-instance v0, Lyads/fc;

    iget-object p2, p2, Lyads/hc;->a:Lyads/fr3;

    invoke-direct {v0, v1, p2}, Lyads/fc;-><init>(Landroid/app/Dialog;Lyads/fr3;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_6

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    :cond_6
    invoke-static {v1}, Lyads/fo0;->a(Landroid/app/Dialog;)V

    iput-object v1, p0, Lyads/co0;->a:Landroid/app/Dialog;

    return-void
.end method

.method public static final a(Lll3;Landroid/content/DialogInterface;)V
    .locals 0

    .line 11
    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lll3;)V
    .locals 1

    iget-object p0, p0, Lyads/co0;->a:Landroid/app/Dialog;

    new-instance v0, Lvr9;

    invoke-direct {v0, p1}, Lvr9;-><init>(Lll3;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final dismiss()V
    .locals 0

    iget-object p0, p0, Lyads/co0;->a:Landroid/app/Dialog;

    invoke-static {p0}, Lyads/eo0;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method public final show()V
    .locals 0

    iget-object p0, p0, Lyads/co0;->a:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
