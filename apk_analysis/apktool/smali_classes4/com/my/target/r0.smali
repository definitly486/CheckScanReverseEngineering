.class public final Lcom/my/target/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/r0$a;
    }
.end annotation


# instance fields
.field public final a:Lkha;

.field public final b:Lcom/my/target/r0$a;

.field public final c:Lcom/my/target/m2$b;

.field public final d:Lcom/my/target/c;

.field public final e:Lcom/my/target/o1;

.field public final f:Lcom/my/target/k0;

.field public final g:Lcom/my/target/m2$a;

.field public final h:Lv51;

.field public i:F

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Lcom/my/target/x2;Lkha;Lcom/my/target/c;Lcom/my/target/m2$a;Lcom/my/target/m2$b;Lv51;Ln5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r0;->n:Z

    iput-object p2, p0, Lcom/my/target/r0;->a:Lkha;

    iput-object p4, p0, Lcom/my/target/r0;->g:Lcom/my/target/m2$a;

    iput-object p5, p0, Lcom/my/target/r0;->c:Lcom/my/target/m2$b;

    iput-object p6, p0, Lcom/my/target/r0;->h:Lv51;

    new-instance p4, Lcom/my/target/r0$a;

    invoke-direct {p4, p0}, Lcom/my/target/r0$a;-><init>(Lcom/my/target/r0;)V

    iput-object p4, p0, Lcom/my/target/r0;->b:Lcom/my/target/r0$a;

    iput-object p3, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {p3, p4}, Lcom/my/target/c;->setMediaListener(Lcom/my/target/r0$a;)V

    iget-object p4, p2, Lao9;->a:Ln4a;

    invoke-static {p4, p7}, Lcom/my/target/o1;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/o1;

    move-result-object p4

    iput-object p4, p0, Lcom/my/target/r0;->e:Lcom/my/target/o1;

    invoke-interface {p3}, Lcom/my/target/c;->getPromoMediaView()Lcom/my/target/zf;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/my/target/o1;->d(Landroid/view/View;)V

    iget-object p3, p1, Lcom/my/target/x2;->a:Lcom/my/target/e3;

    iget-object p1, p1, Lcom/my/target/x2;->b:Landroid/content/Context;

    invoke-static {p2, p3, p7, p1}, Lcom/my/target/k0;->a(Lkha;Lcom/my/target/e3;Lcom/my/target/m1$b;Landroid/content/Context;)Lcom/my/target/k0;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v0, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "InterstitialMediaPresenter: Audiofocus gain, unmuting"

    invoke-static {v2, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/my/target/r0;->j:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/my/target/r0;->g()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/r0;->f()V

    const-string p0, "InterstitialMediaPresenter: Audiofocus loss, pausing"

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "InterstitialMediaPresenter: Audiofocus loss can duck, set volume to 0.3"

    invoke-static {v2, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/my/target/r0;->j:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {p0, v1}, Lcom/my/target/c;->a(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/my/target/r0;->b:Lcom/my/target/r0$a;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v0}, Lcom/my/target/l;->c()V

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/my/target/r0;->g:Lcom/my/target/m2$a;

    iget-object p0, p0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean v0, p0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/r0;->b(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/my/target/c;->destroy()V

    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/my/target/r0;->b:Lcom/my/target/r0$a;

    invoke-virtual {p1, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v0}, Lcom/my/target/c;->pause()V

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/r0;->b(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/my/target/c;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/my/target/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    invoke-virtual {p0}, Lcom/my/target/k0;->i()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v0}, Lcom/my/target/c;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/r0;->e(Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x2

    invoke-interface {v0, p0}, Lcom/my/target/c;->a(I)V

    return-void
.end method
