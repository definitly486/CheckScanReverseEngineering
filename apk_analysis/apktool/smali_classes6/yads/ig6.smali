.class public final Lyads/ig6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/an3;

.field public final b:Lyads/tf0;


# direct methods
.method public constructor <init>(Lyads/an3;Lyads/tf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ig6;->a:Lyads/an3;

    iput-object p2, p0, Lyads/ig6;->b:Lyads/tf0;

    return-void
.end method

.method public static final a(Lyads/ig6;)Lj59;
    .locals 1

    .line 122
    iget-object p0, p0, Lyads/ig6;->a:Lyads/an3;

    sget-object v0, Lyads/ug0;->a:Lyads/ug0;

    invoke-virtual {p0, v0}, Lyads/an3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/ig6;Ljava/lang/String;)Lj59;
    .locals 1

    .line 120
    iget-object p0, p0, Lyads/ig6;->a:Lyads/an3;

    new-instance v0, Lyads/zg0;

    invoke-direct {v0, p1}, Lyads/zg0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lyads/an3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/ig6;Lyads/rh0;)Lj59;
    .locals 1

    .line 118
    iget-object p0, p0, Lyads/ig6;->a:Lyads/an3;

    new-instance v0, Lyads/xg0;

    invoke-direct {v0, p1}, Lyads/xg0;-><init>(Lyads/rh0;)V

    invoke-virtual {p0, v0}, Lyads/an3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/ig6;Lyads/sh0;Z)Lj59;
    .locals 1

    .line 115
    sget-object v0, Lyads/hg6;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 116
    iget-object p0, p0, Lyads/ig6;->a:Lyads/an3;

    new-instance p1, Lyads/wg0;

    invoke-direct {p1, p2}, Lyads/wg0;-><init>(Z)V

    invoke-virtual {p0, p1}, Lyads/an3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/mh0;)Lj59;
    .locals 1

    .line 113
    sget-object v0, Lyads/hg6;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    .line 114
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/ig6;Ljava/lang/String;)Lj59;
    .locals 1

    iget-object p0, p0, Lyads/ig6;->a:Lyads/an3;

    new-instance v0, Lyads/tg0;

    invoke-direct {v0, p1}, Lyads/tg0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lyads/an3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Lyads/wh0;
    .locals 4

    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_action_button:I

    if-ne p2, v0, :cond_0

    new-instance p0, Lyads/v0;

    new-instance p2, Lgn6;

    const/4 v0, 0x7

    invoke-direct {p2, v0}, Lgn6;-><init>(I)V

    invoke-direct {p0, p2, p1}, Lyads/v0;-><init>(Lnl3;Landroid/view/View;)V

    return-object p0

    :cond_0
    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_switch:I

    if-ne p2, v0, :cond_1

    new-instance p2, Lyads/zt5;

    new-instance v0, Lzy9;

    invoke-direct {v0, p0}, Lzy9;-><init>(Lyads/ig6;)V

    invoke-direct {p2, p1, v0}, Lyads/zt5;-><init>(Landroid/view/View;Lbm3;)V

    return-object p2

    :cond_1
    sget v0, Lcom/yandex/mobile/ads/R$layout;->deubg_panel_item_header:I

    if-ne p2, v0, :cond_2

    new-instance p0, Lyads/w83;

    invoke-direct {p0, p1}, Lyads/w83;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_2
    sget v0, Lcom/yandex/mobile/ads/R$layout;->deubg_panel_item_key_value:I

    if-ne p2, v0, :cond_3

    new-instance p0, Lyads/er3;

    invoke-direct {p0, p1}, Lyads/er3;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_3
    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_mediation_adapter:I

    if-ne p2, v0, :cond_4

    new-instance p2, Lyads/x64;

    iget-object v0, p0, Lyads/ig6;->b:Lyads/tf0;

    new-instance v1, Lby0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lby0;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lgj5;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lgj5;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p1, v0, v1, v2}, Lyads/x64;-><init>(Landroid/view/View;Lyads/tf0;Lnl3;Lnl3;)V

    return-object p2

    :cond_4
    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_ad_units:I

    if-ne p2, v0, :cond_5

    new-instance p2, Lyads/wa;

    new-instance v0, Lsg0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lsg0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p1, v0}, Lyads/wa;-><init>(Landroid/view/View;Lll3;)V

    return-object p2

    :cond_5
    sget v0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_ad_unit:I

    if-ne p2, v0, :cond_6

    new-instance p2, Lyads/ua;

    new-instance v0, Lv46;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lv46;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0, p1}, Lyads/ua;-><init>(Lnl3;Landroid/view/View;)V

    return-object p2

    :cond_6
    new-instance p0, Lyads/kj2;

    invoke-direct {p0, p1}, Lyads/kj2;-><init>(Landroid/view/View;)V

    return-object p0
.end method
