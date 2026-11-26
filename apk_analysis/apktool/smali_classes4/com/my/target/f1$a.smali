.class public final Lcom/my/target/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lf5a;


# direct methods
.method public constructor <init>(Lcom/my/target/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/f1$a;->a:Lf5a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    const-string p0, "DoubleInterstitialCardPresenter.InterstitialMediaListenerImpl: Error video playing"

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object p0, p0, Lcom/my/target/f1$a;->a:Lf5a;

    check-cast p0, Lcom/my/target/f1;

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/my/target/n;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/f1;->g:Lkha;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lkha;->e0:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/f1;->i()V

    iget-object p0, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/my/target/k0;->i()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/my/target/f1;->p()V

    iget-object p0, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/my/target/k0;->l()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/my/target/f1;->g:Lkha;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lkha;->h0:Lxha;

    check-cast v0, Lrn9;

    invoke-virtual {v1}, Lcom/my/target/k0;->f()V

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->c()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_5
    iget-object v1, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {v1, p0}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    iget-object v1, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    iget-object v2, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    invoke-interface {v1, v2}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    invoke-virtual {p0, v0}, Lcom/my/target/f1;->f(Lrn9;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/f1$a;->a:Lf5a;

    check-cast p0, Lcom/my/target/f1;

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/my/target/n;->a()V

    iget-object v0, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->c()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/my/target/k0;->d(Z)V

    :cond_1
    :goto_0
    return-void
.end method
