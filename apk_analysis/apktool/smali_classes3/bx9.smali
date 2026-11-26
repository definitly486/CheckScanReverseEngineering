.class public abstract Lbx9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroidx/media3/exoplayer/source/BaseMediaSource;
    .locals 3

    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    new-instance v1, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    const-string v2, "myTarget"

    invoke-static {p0, v2}, Landroidx/media3/common/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-static {p1}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    new-instance p0, Landroidx/media3/exoplayer/hls/DefaultHlsDataSourceFactory;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/DefaultHlsDataSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    new-instance v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;)V

    invoke-static {p1}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/hls/HlsMediaSource;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-static {p1}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0
.end method
