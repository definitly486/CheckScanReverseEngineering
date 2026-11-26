.class public final synthetic Lrh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbf6;


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    invoke-static {p1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->a(Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;)Z

    move-result p0

    return p0
.end method
