.class public final Lyads/wc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/yc;


# direct methods
.method public constructor <init>(Lyads/yc;)V
    .locals 0

    iput-object p1, p0, Lyads/wc;->b:Lyads/yc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lyads/wc;->b:Lyads/yc;

    iget-object v0, p0, Lyads/yc;->a:Lyads/lc;

    iget-object p0, p0, Lyads/yc;->b:Lyads/yb;

    new-instance v1, Lyads/mc;

    iget-object v2, v0, Lyads/lc;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lyads/mc;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lyads/lc;->a:Landroid/app/Activity;

    new-instance v2, Lyads/ic;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lyads/ic;-><init>(Landroid/app/Activity;I)V

    new-instance v3, Lyads/fr3;

    invoke-direct {v3}, Lyads/fr3;-><init>()V

    new-instance v4, Landroid/app/Dialog;

    sget v5, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_BottomAdtuneDialog:I

    invoke-direct {v4, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-boolean v5, p0, Lyads/yb;->d:Z

    if-eqz v5, :cond_0

    sget v5, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_AdtuneTheme_Dark:I

    goto :goto_0

    :cond_0
    sget v5, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_AdtuneTheme_Light:I

    :goto_0
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_adtune_container:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/view/ViewGroup;

    sget v5, Lcom/yandex/mobile/ads/R$id;->adtune_content_container:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->setMeasureSpecProvider(Lyads/wx3;)V

    :cond_1
    sget v2, Lcom/yandex/mobile/ads/R$id;->adtune_webview_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    sget v2, Lcom/yandex/mobile/ads/R$id;->adtune_drag_view_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v5, Lyads/gc;

    invoke-direct {v5, v0, v4, v3}, Lyads/gc;-><init>(Landroid/view/ViewGroup;Landroid/app/Dialog;Lyads/fr3;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    sget v2, Lcom/yandex/mobile/ads/R$id;->adtune_background_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    new-instance v5, Lyads/fc;

    invoke-direct {v5, v4, v3}, Lyads/fc;-><init>(Landroid/app/Dialog;Lyads/fr3;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    :cond_5
    invoke-static {v4}, Lyads/fo0;->a(Landroid/app/Dialog;)V

    new-instance v0, Lyads/kc;

    invoke-direct {v0, v4, v1}, Lyads/kc;-><init>(Landroid/app/Dialog;Lyads/mc;)V

    iget-object p0, p0, Lyads/yb;->c:Ljava/lang/String;

    new-instance v2, Lyads/jc;

    invoke-direct {v2, v0}, Lyads/jc;-><init>(Lyads/kc;)V

    invoke-virtual {v1, v2}, Lyads/mc;->setAdtuneWebViewListener(Lyads/pc;)V

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void
.end method
