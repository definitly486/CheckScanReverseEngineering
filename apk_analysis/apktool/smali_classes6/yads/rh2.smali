.class public final Lyads/rh2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lyads/c81;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lyads/vq0;
    .locals 2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/yandex/mobile/ads/R$style;->monetization_ads_divkit_Div:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p0, Lyads/pq0;

    invoke-direct {p0, v0, p1, p2}, Lyads/pq0;-><init>(Landroid/view/ContextThemeWrapper;Lyads/c81;Landroidx/lifecycle/LifecycleOwner;)V

    new-instance p1, Lyads/vq0;

    const/4 p2, 0x0

    const/4 v0, 0x6

    invoke-direct {p1, p0, p2, v0}, Lyads/vq0;-><init>(Lyads/pq0;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method
