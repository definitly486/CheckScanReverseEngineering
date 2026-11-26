.class public final Lyads/pm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/Spatializer;

.field public final b:Z

.field public c:Landroid/os/Handler;

.field public d:Lyads/om0;


# direct methods
.method public constructor <init>(Landroid/media/Spatializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pm0;->a:Landroid/media/Spatializer;

    invoke-virtual {p1}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyads/pm0;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lyads/pm0;
    .locals 1

    .line 76
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    new-instance v0, Lyads/pm0;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/pm0;-><init>(Landroid/media/Spatializer;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lyads/um0;Landroid/os/Looper;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lyads/pm0;->d:Lyads/om0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/pm0;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lyads/om0;

    invoke-direct {v0, p1}, Lyads/om0;-><init>(Lyads/um0;)V

    iput-object v0, p0, Lyads/pm0;->d:Lyads/om0;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lyads/pm0;->c:Landroid/os/Handler;

    .line 74
    iget-object p2, p0, Lyads/pm0;->a:Landroid/media/Spatializer;

    new-instance v0, Lh72;

    invoke-direct {v0, p1}, Lh72;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lyads/pm0;->d:Lyads/om0;

    invoke-virtual {p2, v0, p0}, Landroid/media/Spatializer;->addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 0

    .line 75
    iget-object p0, p0, Lyads/pm0;->a:Landroid/media/Spatializer;

    invoke-virtual {p0}, Landroid/media/Spatializer;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public final a(Lyads/am;Lyads/vz2;)Z
    .locals 3

    iget-object v0, p2, Lyads/vz2;->m:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lyads/vz2;->z:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    iget v0, p2, Lyads/vz2;->z:I

    :goto_0
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-static {v0}, Lyads/u56;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget p2, p2, Lyads/vz2;->A:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    :cond_1
    iget-object p0, p0, Lyads/pm0;->a:Landroid/media/Spatializer;

    iget-object p2, p1, Lyads/am;->g:Lyads/zl;

    if-nez p2, :cond_2

    new-instance p2, Lyads/zl;

    invoke-direct {p2, p1}, Lyads/zl;-><init>(Lyads/am;)V

    iput-object p2, p1, Lyads/am;->g:Lyads/zl;

    :cond_2
    iget-object p1, p2, Lyads/zl;->a:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/Spatializer;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lyads/pm0;->a:Landroid/media/Spatializer;

    invoke-virtual {p0}, Landroid/media/Spatializer;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lyads/pm0;->d:Lyads/om0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lyads/pm0;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lyads/pm0;->a:Landroid/media/Spatializer;

    invoke-virtual {v1, v0}, Landroid/media/Spatializer;->removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    iget-object v0, p0, Lyads/pm0;->c:Landroid/os/Handler;

    sget v1, Lyads/u56;->a:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lyads/pm0;->c:Landroid/os/Handler;

    iput-object v1, p0, Lyads/pm0;->d:Lyads/om0;

    :cond_1
    :goto_0
    return-void
.end method
