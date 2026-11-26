.class public final synthetic Ljw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/common/MediaItem;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/media3/common/AdViewProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljw3;->b:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Ljw3;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljw3;->d:Landroidx/media3/common/AdViewProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljw3;->d:Landroidx/media3/common/AdViewProvider;

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    iget-object v1, p0, Ljw3;->b:Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Ljw3;->c:Ljava/lang/Object;

    invoke-static {v1, p0, v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->a(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void
.end method
