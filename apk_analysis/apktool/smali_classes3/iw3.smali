.class public final synthetic Liw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/media3/common/Timeline;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;Landroidx/media3/common/Timeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liw3;->b:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iput-object p2, p0, Liw3;->c:Ljava/lang/Object;

    iput-object p3, p0, Liw3;->d:Landroidx/media3/common/Timeline;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Liw3;->d:Landroidx/media3/common/Timeline;

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    iget-object v1, p0, Liw3;->b:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iget-object p0, p0, Liw3;->c:Ljava/lang/Object;

    invoke-static {v1, p0, v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->h(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void
.end method
