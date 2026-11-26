.class public final Lcom/yandex/mobile/ads/retailmedia/CustomMediaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/nativeads/MediaView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getNativeMediaView$mobileads_externalRelease()Lcom/monetization/ads/nativeads/CustomizableMediaView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/retailmedia/CustomMediaView;->a:Lcom/yandex/mobile/ads/nativeads/MediaView;

    return-object p0
.end method
