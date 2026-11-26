.class public final Lyads/ge0;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ig6;

.field public final b:Lyads/ch6;


# direct methods
.method public constructor <init>(Lyads/an3;Lyads/tf0;)V
    .locals 1

    new-instance v0, Lyads/ig6;

    invoke-direct {v0, p1, p2}, Lyads/ig6;-><init>(Lyads/an3;Lyads/tf0;)V

    new-instance p1, Lyads/ch6;

    invoke-direct {p1}, Lyads/ch6;-><init>()V

    new-instance p2, Lyads/nf0;

    invoke-direct {p2}, Lyads/nf0;-><init>()V

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object v0, p0, Lyads/ge0;->a:Lyads/ig6;

    iput-object p1, p0, Lyads/ge0;->b:Lyads/ch6;

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/uh0;

    iget-object p0, p0, Lyads/ge0;->b:Lyads/ch6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lyads/nh0;

    if-eqz p0, :cond_0

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_action_button:I

    return p0

    :cond_0
    instance-of p0, p1, Lyads/th0;

    if-eqz p0, :cond_1

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_switch:I

    return p0

    :cond_1
    instance-of p0, p1, Lyads/oh0;

    if-eqz p0, :cond_2

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_divider:I

    return p0

    :cond_2
    instance-of p0, p1, Lyads/ph0;

    if-eqz p0, :cond_3

    sget p0, Lcom/yandex/mobile/ads/R$layout;->deubg_panel_item_header:I

    return p0

    :cond_3
    instance-of p0, p1, Lyads/qh0;

    if-eqz p0, :cond_4

    sget p0, Lcom/yandex/mobile/ads/R$layout;->deubg_panel_item_key_value:I

    return p0

    :cond_4
    instance-of p0, p1, Lyads/rh0;

    if-eqz p0, :cond_5

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_mediation_adapter:I

    return p0

    :cond_5
    instance-of p0, p1, Lyads/lh0;

    if-eqz p0, :cond_6

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_ad_units:I

    return p0

    :cond_6
    instance-of p0, p1, Lyads/kh0;

    if-eqz p0, :cond_7

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_ad_unit:I

    return p0

    :cond_7
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lyads/wh0;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/uh0;

    invoke-virtual {p1, p0}, Lyads/wh0;->a(Lyads/uh0;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lyads/ge0;->a:Lyads/ig6;

    invoke-virtual {p0, p1, p2}, Lyads/ig6;->a(Landroid/view/View;I)Lyads/wh0;

    move-result-object p0

    return-object p0
.end method
