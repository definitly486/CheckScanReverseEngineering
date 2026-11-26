.class public final Lyads/yy3;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lyads/vy3;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLyads/vy3;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    iput-object p3, p0, Lyads/yy3;->b:Ljava/lang/String;

    .line 63
    iput-boolean p4, p0, Lyads/yy3;->c:Z

    .line 64
    iput-object p5, p0, Lyads/yy3;->d:Lyads/vy3;

    .line 65
    iput-object p6, p0, Lyads/yy3;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lyads/vz2;Ljava/lang/Exception;ZLyads/vy3;)V
    .locals 9

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decoder init failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p4, Lyads/vy3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lyads/vz2;->m:Ljava/lang/String;

    .line 57
    sget p1, Lyads/u56;->a:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 58
    instance-of p1, p2, Landroid/media/MediaCodec$CodecException;

    if-eqz p1, :cond_0

    .line 59
    move-object p1, p2

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p0

    move-object v8, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 60
    :goto_1
    invoke-direct/range {v2 .. v8}, Lyads/yy3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLyads/vy3;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lyads/vz2;Lyads/ez3;ZI)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decoder init failed: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lyads/vz2;->m:Ljava/lang/String;

    if-gez p4, :cond_0

    const-string p1, "neg_"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "com.monetization.ads.exoplayer2.mediacodec.MediaCodecRenderer_"

    invoke-static {v0, p1}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lyads/yy3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLyads/vy3;Ljava/lang/String;)V

    return-void
.end method
