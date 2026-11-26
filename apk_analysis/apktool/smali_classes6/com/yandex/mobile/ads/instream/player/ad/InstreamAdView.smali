.class public final Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdView;
.super Lyads/t05;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/t05;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lyads/t05;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lyads/t05;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public privateSetViewBinderProvider(Lyads/dj3;)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lyads/po6;

    invoke-direct {p1}, Lyads/po6;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lyads/ps2;->setAdUiElementsProvider(Lyads/z80;)V

    return-void
.end method
