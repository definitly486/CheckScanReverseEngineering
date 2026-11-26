.class public final Lcom/my/target/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/t1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/my/target/m0;


# direct methods
.method public constructor <init>(Lcom/my/target/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/m0$a;->a:Lcom/my/target/m0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/m0$a;->a:Lcom/my/target/m0;

    iput-boolean p1, p0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public final b(Lao9;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/m0$a;->a:Lcom/my/target/m0;

    invoke-virtual {p0, p1}, Lcom/my/target/r;->b(Lao9;)V

    return-void
.end method

.method public final e(Lao9;)V
    .locals 3

    iget-object v0, p1, Lao9;->Q:Lpp9;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Lpp9;->c(I)V

    iget-object p1, p1, Lao9;->a:Ln4a;

    new-instance v0, Lfh;

    iget-object p0, p0, Lcom/my/target/m0$a;->a:Lcom/my/target/m0;

    invoke-direct {v0, p0}, Lfh;-><init>(Lcom/my/target/m0;)V

    const-string v1, "closedByUser"

    const/16 v2, 0x3e7

    invoke-static {p1, v1, v2, v0}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    return-void
.end method

.method public final g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/m0$a;->a:Lcom/my/target/m0;

    iget-object p1, p0, Lcom/my/target/r;->c:Lz94;

    iget-object p1, p1, Lzc0;->a:Lz2a;

    iget-object p1, p1, Lz2a;->a:Lf72;

    new-instance p2, Lcom/my/target/e2;

    invoke-direct {p2, p1}, Lcom/my/target/e2;-><init>(Lf72;)V

    iget-object p1, p0, Lcom/my/target/m0;->j:Lvy9;

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/my/target/e2;->a(Lao9;ILcha;Landroid/content/Context;)V

    iget-object p2, p0, Lcom/my/target/r;->a:Lz94$b;

    iget-object p2, p2, Lz94$b;->b:Lz94;

    iget-object p3, p2, Lz94;->h:Lz94$a;

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Lz94$a;->f(Lz94;)V

    :cond_0
    iget-object p1, p1, Lao9;->Q:Lpp9;

    const/16 p2, 0x138c

    invoke-virtual {p1, p2}, Lpp9;->c(I)V

    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    return-void
.end method

.method public final n(D)V
    .locals 0

    return-void
.end method

.method public final o(Lao9;Landroid/view/View;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialAdImagineEngine$InterstitialImageListener: Ad shown, banner Id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lao9;->B:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/m0$a;->a:Lcom/my/target/m0;

    iget-object v0, p0, Lcom/my/target/m0;->l:Lcom/my/target/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/m0;->j:Lvy9;

    iget-object v1, v0, Lao9;->b:La0a;

    iget-object v0, v0, Lao9;->a:Ln4a;

    new-instance v3, Lfh;

    invoke-direct {v3, p0}, Lfh;-><init>(Lcom/my/target/m0;)V

    new-instance v4, Lcom/my/target/x0;

    invoke-direct {v4, v1, v0, v3}, Lcom/my/target/x0;-><init>(La0a;Ln4a;Lcom/my/target/m1$b;)V

    iput-object v4, p0, Lcom/my/target/m0;->l:Lcom/my/target/x0;

    new-instance v0, Lcom/my/target/l0;

    invoke-direct {v0, p0, p2}, Lcom/my/target/l0;-><init>(Lcom/my/target/m0;Landroid/view/View;)V

    iput-object v0, v4, Lcom/my/target/x0;->l:Lcom/my/target/x0$a;

    iget-boolean p0, p0, Lcom/my/target/r;->d:Z

    if-eqz p0, :cond_1

    invoke-virtual {v4, p2}, Lcom/my/target/x0;->c(Landroid/view/View;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "InterstitialAdImagineEngine: Ad shown, banner Id = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lao9;->B:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
