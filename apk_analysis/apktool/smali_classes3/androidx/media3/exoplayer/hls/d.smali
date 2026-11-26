.class public final synthetic Landroidx/media3/exoplayer/hls/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$LoaderCallback;

.field public final synthetic c:Ljava/io/IOException;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$LoaderCallback;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/d;->b:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$LoaderCallback;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/d;->c:Ljava/io/IOException;

    iput-boolean p3, p0, Landroidx/media3/exoplayer/hls/d;->d:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/d;->d:Z

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/d;->b:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$LoaderCallback;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/d;->c:Ljava/io/IOException;

    invoke-static {v1, p0, v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$LoaderCallback;->c(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$LoaderCallback;Ljava/io/IOException;ZLandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void
.end method
