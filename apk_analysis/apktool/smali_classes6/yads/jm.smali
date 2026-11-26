.class public final Lyads/jm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Lyads/hm;

.field public c:Lyads/im;

.field public d:I

.field public e:I

.field public f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lyads/im;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lyads/jm;->f:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lyads/jm;->a:Landroid/media/AudioManager;

    iput-object p3, p0, Lyads/jm;->c:Lyads/im;

    new-instance p1, Lyads/hm;

    invoke-direct {p1, p0, p2}, Lyads/hm;-><init>(Lyads/jm;Landroid/os/Handler;)V

    iput-object p1, p0, Lyads/jm;->b:Lyads/hm;

    const/4 p1, 0x0

    iput p1, p0, Lyads/jm;->d:I

    return-void
.end method


# virtual methods
.method public final a(IZ)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    iget p1, p0, Lyads/jm;->e:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    iget p1, p0, Lyads/jm;->d:I

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    sget p1, Lyads/u56;->a:I

    const/16 p2, 0x1a

    const/4 v0, 0x0

    if-lt p1, p2, :cond_2

    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    iget p0, p0, Lyads/jm;->e:I

    invoke-direct {p1, p0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    throw v0

    :cond_2
    throw v0

    :cond_3
    return v0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lyads/jm;->a()V

    if-eqz p2, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final a()V
    .locals 2

    .line 40
    iget v0, p0, Lyads/jm;->d:I

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lyads/jm;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lyads/jm;->b:Lyads/hm;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lyads/jm;->b(I)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 44
    iget-object p0, p0, Lyads/jm;->c:Lyads/im;

    if-eqz p0, :cond_1

    .line 45
    check-cast p0, Lyads/bq2;

    .line 46
    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    .line 47
    invoke-virtual {v0}, Lyads/eq2;->q()V

    .line 48
    iget-object v0, v0, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean v0, v0, Lyads/bw4;->l:Z

    .line 49
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lyads/eq2;->a(IIZ)V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 2

    iget v0, p0, Lyads/jm;->d:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lyads/jm;->d:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lyads/jm;->f:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, Lyads/jm;->f:F

    iget-object p0, p0, Lyads/jm;->c:Lyads/im;

    if-eqz p0, :cond_3

    check-cast p0, Lyads/bq2;

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget p1, p0, Lyads/eq2;->V:F

    iget-object v0, p0, Lyads/eq2;->w:Lyads/jm;

    iget v0, v0, Lyads/jm;->f:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lyads/eq2;->a(IILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
