.class public final Lyads/nj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vz2;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:[Lyads/mm;


# direct methods
.method public constructor <init>(Lyads/vz2;IIIIIII[Lyads/mm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nj0;->a:Lyads/vz2;

    iput p2, p0, Lyads/nj0;->b:I

    iput p3, p0, Lyads/nj0;->c:I

    iput p4, p0, Lyads/nj0;->d:I

    iput p5, p0, Lyads/nj0;->e:I

    iput p6, p0, Lyads/nj0;->f:I

    iput p7, p0, Lyads/nj0;->g:I

    iput p8, p0, Lyads/nj0;->h:I

    iput-object p9, p0, Lyads/nj0;->i:[Lyads/mm;

    return-void
.end method


# virtual methods
.method public final a(ZLyads/am;I)Landroid/media/AudioTrack;
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lyads/nj0;->b(ZLyads/am;I)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v2, :cond_0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v3, Lyads/qm;

    iget v5, p0, Lyads/nj0;->e:I

    iget v6, p0, Lyads/nj0;->f:I

    iget v7, p0, Lyads/nj0;->h:I

    iget-object v8, p0, Lyads/nj0;->a:Lyads/vz2;

    iget p0, p0, Lyads/nj0;->c:I

    if-ne p0, v2, :cond_1

    move v9, v2

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lyads/qm;-><init>(IIIILyads/vz2;ZLjava/lang/RuntimeException;)V

    throw v3

    :catch_1
    move-exception v0

    :goto_1
    move-object p1, v0

    move-object v10, p1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_2
    new-instance v3, Lyads/qm;

    iget v5, p0, Lyads/nj0;->e:I

    iget v6, p0, Lyads/nj0;->f:I

    iget v7, p0, Lyads/nj0;->h:I

    iget-object v8, p0, Lyads/nj0;->a:Lyads/vz2;

    iget p0, p0, Lyads/nj0;->c:I

    if-ne p0, v2, :cond_2

    move v9, v2

    goto :goto_3

    :cond_2
    move v9, v1

    :goto_3
    const/4 v4, 0x0

    invoke-direct/range {v3 .. v10}, Lyads/qm;-><init>(IIIILyads/vz2;ZLjava/lang/RuntimeException;)V

    throw v3
.end method

.method public final b(ZLyads/am;I)Landroid/media/AudioTrack;
    .locals 12

    sget v2, Lyads/u56;->a:I

    const/16 v3, 0x1d

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-lt v2, v3, :cond_3

    iget v2, p0, Lyads/nj0;->e:I

    iget v3, p0, Lyads/nj0;->f:I

    iget v9, p0, Lyads/nj0;->g:I

    new-instance v10, Landroid/media/AudioFormat$Builder;

    invoke-direct {v10}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v10, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    if-eqz p1, :cond_0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v3, p2, Lyads/am;->g:Lyads/zl;

    if-nez v3, :cond_1

    new-instance v3, Lyads/zl;

    invoke-direct {v3, p2}, Lyads/zl;-><init>(Lyads/am;)V

    iput-object v3, p2, Lyads/am;->g:Lyads/zl;

    :cond_1
    iget-object v1, v3, Lyads/zl;->a:Landroid/media/AudioAttributes;

    :goto_0
    new-instance v3, Landroid/media/AudioTrack$Builder;

    invoke-direct {v3}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v2, p0, Lyads/nj0;->h:I

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v0, p0, Lyads/nj0;->c:I

    if-ne v0, v8, :cond_2

    move v4, v8

    :cond_2
    invoke-virtual {v1, v4}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v3, 0x15

    if-lt v2, v3, :cond_6

    new-instance v2, Landroid/media/AudioTrack;

    if-eqz p1, :cond_4

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v3, p2, Lyads/am;->g:Lyads/zl;

    if-nez v3, :cond_5

    new-instance v3, Lyads/zl;

    invoke-direct {v3, p2}, Lyads/zl;-><init>(Lyads/am;)V

    iput-object v3, p2, Lyads/am;->g:Lyads/zl;

    :cond_5
    iget-object v1, v3, Lyads/zl;->a:Landroid/media/AudioAttributes;

    :goto_1
    iget v3, p0, Lyads/nj0;->e:I

    iget v4, p0, Lyads/nj0;->f:I

    iget v6, p0, Lyads/nj0;->g:I

    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v7, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    move-object v4, v2

    move-object v2, v3

    iget v3, p0, Lyads/nj0;->h:I

    move-object v0, v4

    const/4 v4, 0x1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0

    :cond_6
    iget v1, p2, Lyads/am;->d:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_7

    packed-switch v1, :pswitch_data_0

    move v1, v7

    goto :goto_3

    :pswitch_0
    const/4 v4, 0x2

    :goto_2
    :pswitch_1
    move v1, v4

    goto :goto_3

    :pswitch_2
    const/4 v4, 0x5

    goto :goto_2

    :pswitch_3
    const/4 v4, 0x4

    goto :goto_2

    :pswitch_4
    const/16 v4, 0x8

    goto :goto_2

    :cond_7
    move v1, v8

    :goto_3
    if-nez p3, :cond_8

    new-instance v5, Landroid/media/AudioTrack;

    iget v7, p0, Lyads/nj0;->e:I

    iget v8, p0, Lyads/nj0;->f:I

    iget v9, p0, Lyads/nj0;->g:I

    iget v10, p0, Lyads/nj0;->h:I

    const/4 v11, 0x1

    move v6, v1

    invoke-direct/range {v5 .. v11}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v5

    :cond_8
    new-instance v2, Landroid/media/AudioTrack;

    move-object v3, v2

    iget v2, p0, Lyads/nj0;->e:I

    move-object v4, v3

    iget v3, p0, Lyads/nj0;->f:I

    move-object v5, v4

    iget v4, p0, Lyads/nj0;->g:I

    iget v0, p0, Lyads/nj0;->h:I

    const/4 v6, 0x1

    move-object v7, v5

    move v5, v0

    move-object v0, v7

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
