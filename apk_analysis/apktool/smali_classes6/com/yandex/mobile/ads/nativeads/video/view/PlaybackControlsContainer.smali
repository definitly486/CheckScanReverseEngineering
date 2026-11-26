.class public final Lcom/yandex/mobile/ads/nativeads/video/view/PlaybackControlsContainer;
.super Lcom/monetization/ads/nativeads/video/view/CorePlaybackControlsContainer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/monetization/ads/nativeads/video/view/CorePlaybackControlsContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/monetization/ads/nativeads/video/view/CorePlaybackControlsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/monetization/ads/nativeads/video/view/CorePlaybackControlsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCountDownProgress()Landroid/widget/TextView;
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->video_count_down_control:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMuteControl()Landroid/widget/CheckBox;
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->video_mute_control:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/CheckBox;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoProgress()Landroid/widget/ProgressBar;
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->video_progress_control:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
