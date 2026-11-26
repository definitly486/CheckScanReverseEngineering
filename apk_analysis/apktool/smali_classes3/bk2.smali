.class public final synthetic Lbk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
