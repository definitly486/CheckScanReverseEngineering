.class public final Landroidx/media3/muxer/BufferInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final flags:I

.field public final presentationTimeUs:J

.field public final size:I


# direct methods
.method public constructor <init>(JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    iput p3, p0, Landroidx/media3/muxer/BufferInfo;->size:I

    iput p4, p0, Landroidx/media3/muxer/BufferInfo;->flags:I

    return-void
.end method
