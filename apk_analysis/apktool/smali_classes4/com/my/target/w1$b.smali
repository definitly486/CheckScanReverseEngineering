.class public final Lcom/my/target/w1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/my/target/w1;


# direct methods
.method public constructor <init>(Lcom/my/target/w1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/w1$b;->a:Lcom/my/target/w1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lcom/my/target/w1$b;->a:Lcom/my/target/w1;

    iget-object v0, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    iget-object v0, v0, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    iget-object v0, v0, Lcom/my/target/r;->b:Lcom/my/target/b3$a;

    if-eqz v0, :cond_1

    check-cast v0, Lz94$b;

    iget-object v0, v0, Lz94$b;->b:Lz94;

    iget-object v1, v0, Lz94;->h:Lz94$a;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lz94$a;->b(Lz94;)V

    :cond_1
    iget-object p0, p0, Lcom/my/target/w1;->k:Lv2a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2a;->f:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 6

    iget-object p0, p0, Lcom/my/target/w1$b;->a:Lcom/my/target/w1;

    iget-object v0, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/my/target/w1;->t:I

    if-le v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/my/target/w1;->A()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    invoke-interface {v1}, Lcom/my/target/z0;->b()V

    iget-object v1, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    iget-object v3, p0, Lcom/my/target/w1;->o:Lfp;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/my/target/w1;->q:I

    iget-object v1, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    iget-object v1, v1, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    iput-boolean v2, v1, Lcom/my/target/r;->i:Z

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DoubleInterstitialPromoPresenter.InterstitialMediaPresenterImpl: Failed playing video "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/my/target/w1;->t:I

    const/4 v5, 0x0

    if-le v3, v4, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2a;

    goto :goto_1

    :cond_2
    if-lez v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/my/target/w1;->t:I

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2a;

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<null, nb="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/my/target/w1;->t:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", s="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget-object p0, v2, Lv2a;->a:Lxda;

    iget-object p0, p0, Lao9;->B:Ljava/lang/String;

    :goto_2
    invoke-static {v1, p0, v5}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object p0, p0, Lcom/my/target/w1$b;->a:Lcom/my/target/w1;

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/my/target/n;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/w1;->e:Lkha;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lkha;->e0:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/w1;->t()V

    iget-object v0, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/my/target/k0;->i()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/my/target/w1;->resume()V

    iget-object v0, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/my/target/k0;->l()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/my/target/w1;->e:Lkha;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lkha;->Y:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/w1;->s:Z

    :cond_4
    invoke-virtual {p0}, Lcom/my/target/w1;->u()V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/my/target/w1;->w()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/w1$b;->a:Lcom/my/target/w1;

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/my/target/n;->a()V

    iget-object v0, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->c()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/my/target/k0;->d(Z)V

    :cond_1
    :goto_0
    return-void
.end method
