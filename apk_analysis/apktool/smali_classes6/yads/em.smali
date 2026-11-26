.class public abstract Lyads/em;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/media/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lyads/em;->a:Landroid/media/AudioAttributes;

    return-void
.end method

.method public static a(II)I
    .locals 3

    const/16 v0, 0x8

    :goto_0
    if-lez v0, :cond_1

    .line 106
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 107
    invoke-virtual {v1, p0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 109
    invoke-static {v0}, Lyads/u56;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 111
    sget-object v2, Lyads/em;->a:Landroid/media/AudioAttributes;

    invoke-static {v1, v2}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a()[I
    .locals 6

    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    new-instance v0, Lyads/ke3;

    invoke-direct {v0}, Lyads/ke3;-><init>()V

    sget-object v1, Lyads/fm;->e:Lyads/p55;

    iget-object v2, v1, Lyads/re3;->c:Lyads/n55;

    if-nez v2, :cond_0

    new-instance v2, Lyads/o55;

    iget-object v3, v1, Lyads/p55;->f:[Ljava/lang/Object;

    iget v4, v1, Lyads/p55;->g:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4, v3}, Lyads/o55;-><init>(II[Ljava/lang/Object;)V

    new-instance v3, Lyads/n55;

    invoke-direct {v3, v1, v2}, Lyads/n55;-><init>(Lyads/re3;Lyads/o55;)V

    iput-object v3, v1, Lyads/re3;->c:Lyads/n55;

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lyads/n55;->iterator()Lyads/i46;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Landroid/media/AudioFormat$Builder;

    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    const v4, 0xbb80

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    sget-object v4, Lyads/em;->a:Landroid/media/AudioAttributes;

    invoke-static {v3, v4}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    invoke-virtual {v0}, Lyads/ke3;->a()Lyads/k55;

    move-result-object v0

    invoke-static {v0}, Lyads/bq3;->a(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method
