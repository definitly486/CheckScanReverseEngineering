.class public final Lcom/my/target/z1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/my/target/z1;


# direct methods
.method public constructor <init>(Lcom/my/target/z1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/z1$a;->a:Lcom/my/target/z1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/z1$a;->a:Lcom/my/target/z1;

    iget-object v0, p0, Lcom/my/target/z1;->m:Lcom/my/target/f0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/z1;->j:Lcom/my/target/m2$b;

    invoke-virtual {p0}, Lcom/my/target/m2$b;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/z1$a;->a:Lcom/my/target/z1;

    invoke-virtual {p0}, Lcom/my/target/z1;->t()V

    const-string p0, "InterstitialPresenterS4.InterstitialMediaPresenterS4Impl: Error video playing"

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object p0, p0, Lcom/my/target/z1$a;->a:Lcom/my/target/z1;

    iget-object v0, p0, Lcom/my/target/z1;->k:Lcom/my/target/k0;

    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/my/target/n;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/my/target/z1;->b:Lxda;

    iget-object v1, v1, Lxda;->Z:Lkha;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lkha;->e0:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/z1;->u()V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/my/target/k0;->i()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/my/target/z1;->resume()V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/my/target/k0;->l()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/my/target/z1;->v()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/my/target/z1;->x()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/z1$a;->a:Lcom/my/target/z1;

    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/my/target/n;->a()V

    iget-object v0, p0, Lcom/my/target/z1;->k:Lcom/my/target/k0;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->c()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/my/target/k0;->d(Z)V

    :cond_0
    return-void
.end method
