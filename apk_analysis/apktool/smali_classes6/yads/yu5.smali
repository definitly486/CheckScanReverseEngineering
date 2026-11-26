.class public Lyads/yu5;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final a:Lyads/uu5;

.field public final b:Landroid/view/View;

.field public final c:Lyads/pg6;

.field public final d:Lyads/ld5;

.field public e:Lyads/a62;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, p1, v0}, Lyads/yu5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p2, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_tabs_block:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lyads/uu5;

    sget v2, Lcom/yandex/mobile/ads/R$attr;->monetization_ads_divkit_divTabIndicatorLayoutStyle:I

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lyads/uu5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v2, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_base_tabbed_title_container_scroller:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_title_tab_title_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v4, 0x800003

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_title_tab_title_margin_vertical:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_title_tab_title_margin_horizontal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iput-object v1, p0, Lyads/yu5;->a:Lyads/uu5;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_tabs_divider:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_div_separator_delimiter_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_div_horizontal_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_title_tab_title_separator_margin_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_title_tab_title_margin_vertical:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lcom/yandex/mobile/ads/R$color;->monetization_ads_divkit_div_separator_color:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iput-object v4, p0, Lyads/yu5;->b:Landroid/view/View;

    new-instance v5, Lyads/ld5;

    invoke-direct {v5, p1}, Lyads/ld5;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_tabs_pager_container:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-static {v5, p2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iput-object v5, p0, Lyads/yu5;->d:Lyads/ld5;

    new-instance p2, Lyads/pg6;

    const/4 v6, 0x6

    invoke-direct {p2, p1, v3, v6, v2}, Lyads/pg6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget v3, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_tabs_container_helper:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v2}, Lyads/pg6;->setCollapsiblePaddingBottom(I)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p1, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lyads/yu5;->c:Lyads/pg6;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "android.widget.TabWidget"

    return-object p0
.end method

.method public final h()Lyads/a62;
    .locals 0

    iget-object p0, p0, Lyads/yu5;->e:Lyads/a62;

    return-object p0
.end method

.method public final j()Lyads/ld5;
    .locals 0

    iget-object p0, p0, Lyads/yu5;->d:Lyads/ld5;

    return-object p0
.end method

.method public setDivTabsAdapter(Lyads/a62;)V
    .locals 0

    iput-object p1, p0, Lyads/yu5;->e:Lyads/a62;

    return-void
.end method
