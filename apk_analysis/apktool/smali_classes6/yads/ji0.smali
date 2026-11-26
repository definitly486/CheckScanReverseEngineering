.class public final Lyads/ji0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 15

    iget v0, p0, Lyads/ji0;->a:I

    iget v1, p0, Lyads/ji0;->b:I

    iget v2, p0, Lyads/ji0;->c:I

    iget v3, p0, Lyads/ji0;->d:I

    iget v4, p0, Lyads/ji0;->e:I

    iget v5, p0, Lyads/ji0;->f:I

    iget v6, p0, Lyads/ji0;->g:I

    iget v7, p0, Lyads/ji0;->h:I

    iget v8, p0, Lyads/ji0;->i:I

    iget v9, p0, Lyads/ji0;->j:I

    iget-wide v10, p0, Lyads/ji0;->k:J

    iget p0, p0, Lyads/ji0;->l:I

    sget v12, Lyads/u56;->a:I

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, ",\n decoderReleases="

    const-string v13, "\n queuedInputBuffers="

    const-string v14, "DecoderCounters {\n decoderInits="

    invoke-static {v0, v1, v14, v12, v13}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n skippedInputBuffers="

    const-string v12, "\n renderedOutputBuffers="

    invoke-static {v0, v2, v1, v3, v12}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n skippedOutputBuffers="

    const-string v2, "\n droppedBuffers="

    invoke-static {v0, v4, v1, v5, v2}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n droppedInputBuffers="

    const-string v2, "\n maxConsecutiveDroppedBuffers="

    invoke-static {v0, v6, v1, v7, v2}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n droppedToKeyframeEvents="

    const-string v2, "\n totalVideoFrameProcessingOffsetUs="

    invoke-static {v0, v8, v1, v9, v2}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n videoFrameProcessingOffsetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
