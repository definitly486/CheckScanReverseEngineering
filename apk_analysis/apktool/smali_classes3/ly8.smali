.class public final synthetic Lly8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/media3/common/TrackGroup;

    invoke-static {p1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(Landroidx/media3/common/TrackGroup;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
