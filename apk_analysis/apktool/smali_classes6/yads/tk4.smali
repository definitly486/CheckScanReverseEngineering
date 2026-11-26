.class public final Lyads/tk4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lyads/fb6;
    .locals 6

    instance-of v0, p0, Lyads/zv4;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    instance-of v2, v0, Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_0

    instance-of v3, v0, Ljava/lang/IllegalStateException;

    if-nez v3, :cond_0

    instance-of v3, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_9

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-eqz v4, :cond_9

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.MediaCodec"

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    const-string v3, "native_dequeueOutputBuffer"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lyads/fb6;->b:Lyads/fb6;

    goto :goto_1

    :cond_3
    const-string v3, "native_dequeueInputBuffer"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lyads/fb6;->c:Lyads/fb6;

    goto :goto_1

    :cond_4
    const-string v3, "native_stop"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v0, Lyads/fb6;->d:Lyads/fb6;

    goto :goto_1

    :cond_5
    const-string v3, "native_setSurface"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Lyads/fb6;->e:Lyads/fb6;

    goto :goto_1

    :cond_6
    const-string v3, "releaseOutputBuffer"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Lyads/fb6;->f:Lyads/fb6;

    goto :goto_1

    :cond_7
    const-string v3, "native_queueSecureInputBuffer"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lyads/fb6;->g:Lyads/fb6;

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    sget-object v0, Lyads/fb6;->h:Lyads/fb6;

    goto :goto_1

    :cond_9
    :goto_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p0}, Lyads/tk4;->a(Ljava/lang/Throwable;)Lyads/fb6;

    move-result-object v1

    :cond_a
    if-nez v1, :cond_b

    sget-object p0, Lyads/fb6;->E:Lyads/fb6;

    return-object p0

    :cond_b
    return-object v1

    :cond_c
    return-object v0

    :cond_d
    instance-of v0, p0, Lyads/vb3;

    if-eqz v0, :cond_e

    sget-object p0, Lyads/fb6;->j:Lyads/fb6;

    return-object p0

    :cond_e
    instance-of v0, p0, Lyads/ez3;

    if-eqz v0, :cond_f

    sget-object p0, Lyads/fb6;->k:Lyads/fb6;

    return-object p0

    :cond_f
    instance-of v0, p0, Lyads/yy3;

    if-eqz v0, :cond_10

    sget-object p0, Lyads/fb6;->l:Lyads/fb6;

    return-object p0

    :cond_10
    instance-of v0, p0, Lyads/vs;

    if-eqz v0, :cond_11

    sget-object p0, Lyads/fb6;->n:Lyads/fb6;

    return-object p0

    :cond_11
    instance-of v0, p0, Landroid/media/MediaCodec$CryptoException;

    if-eqz v0, :cond_12

    sget-object p0, Lyads/fb6;->o:Lyads/fb6;

    return-object p0

    :cond_12
    instance-of v0, p0, Lyads/rl2;

    if-eqz v0, :cond_18

    check-cast p0, Lyads/rl2;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_13

    sget-object p0, Lyads/fb6;->q:Lyads/fb6;

    return-object p0

    :cond_13
    instance-of v0, p0, Landroid/media/MediaDrmResetException;

    if-nez v0, :cond_17

    instance-of v0, p0, Landroid/media/ResourceBusyException;

    if-eqz v0, :cond_14

    goto :goto_3

    :cond_14
    instance-of v0, p0, Landroid/media/MediaCodec$CryptoException;

    if-nez v0, :cond_16

    instance-of p0, p0, Lyads/gr3;

    if-eqz p0, :cond_15

    goto :goto_2

    :cond_15
    sget-object p0, Lyads/fb6;->q:Lyads/fb6;

    return-object p0

    :cond_16
    :goto_2
    sget-object p0, Lyads/fb6;->o:Lyads/fb6;

    return-object p0

    :cond_17
    :goto_3
    sget-object p0, Lyads/fb6;->p:Lyads/fb6;

    return-object p0

    :cond_18
    instance-of v0, p0, Lyads/la3;

    if-eqz v0, :cond_1c

    check-cast p0, Lyads/la3;

    iget p0, p0, Lyads/la3;->e:I

    const/16 v0, 0x191

    if-ne p0, v0, :cond_19

    sget-object p0, Lyads/fb6;->s:Lyads/fb6;

    return-object p0

    :cond_19
    const/16 v0, 0x193

    if-ne p0, v0, :cond_1a

    sget-object p0, Lyads/fb6;->t:Lyads/fb6;

    return-object p0

    :cond_1a
    const/16 v0, 0x194

    if-ne p0, v0, :cond_1b

    sget-object p0, Lyads/fb6;->u:Lyads/fb6;

    return-object p0

    :cond_1b
    sget-object p0, Lyads/fb6;->v:Lyads/fb6;

    return-object p0

    :cond_1c
    instance-of v0, p0, Lyads/ja3;

    if-eqz v0, :cond_1e

    check-cast p0, Lyads/ja3;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_1d

    sget-object p0, Lyads/fb6;->w:Lyads/fb6;

    return-object p0

    :cond_1d
    sget-object p0, Lyads/fb6;->x:Lyads/fb6;

    return-object p0

    :cond_1e
    instance-of v0, p0, Lyads/xs4;

    if-eqz v0, :cond_1f

    sget-object p0, Lyads/fb6;->y:Lyads/fb6;

    return-object p0

    :cond_1f
    instance-of v0, p0, Lyads/qu3;

    if-eqz v0, :cond_20

    sget-object p0, Lyads/fb6;->z:Lyads/fb6;

    return-object p0

    :cond_20
    instance-of v0, p0, Lyads/pm;

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    instance-of v0, p0, Lyads/qm;

    :goto_4
    if-eqz v0, :cond_22

    move v0, v1

    goto :goto_5

    :cond_22
    instance-of v0, p0, Lyads/pj0;

    :goto_5
    if-eqz v0, :cond_23

    sget-object p0, Lyads/fb6;->A:Lyads/fb6;

    return-object p0

    :cond_23
    instance-of v0, p0, Lyads/ot5;

    if-eqz v0, :cond_24

    sget-object p0, Lyads/fb6;->B:Lyads/fb6;

    return-object p0

    :cond_24
    instance-of v0, p0, Lyads/vv;

    if-eqz v0, :cond_25

    goto :goto_6

    :cond_25
    instance-of v1, p0, Lyads/zv;

    :goto_6
    if-eqz v1, :cond_26

    sget-object p0, Lyads/fb6;->C:Lyads/fb6;

    return-object p0

    :cond_26
    sget-object p0, Lyads/fb6;->F:Lyads/fb6;

    return-object p0
.end method
