.class public final synthetic Lp85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    move-result-object p0

    return-object p0
.end method
