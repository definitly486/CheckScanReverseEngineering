.class public final synthetic Landroidx/media3/muxer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/media3/muxer/Track;

    check-cast p2, Landroidx/media3/muxer/Track;

    invoke-static {p1, p2}, Landroidx/media3/muxer/Mp4Writer;->a(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I

    move-result p0

    return p0
.end method
