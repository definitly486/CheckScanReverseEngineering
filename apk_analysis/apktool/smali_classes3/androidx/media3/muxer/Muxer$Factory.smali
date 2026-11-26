.class public interface abstract Landroidx/media3/muxer/Muxer$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Ljava/lang/String;)Landroidx/media3/muxer/Muxer;
.end method

.method public abstract getSupportedSampleMimeTypes(I)Lcom/google/common/collect/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public supportsWritingNegativeTimestampsInEditList()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
