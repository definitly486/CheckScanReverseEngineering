.class public final Lcom/my/target/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/my/target/p0;


# direct methods
.method public constructor <init>(Lcom/my/target/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    return-void
.end method


# virtual methods
.method public final a(Lao9;ILcha;Landroid/content/Context;)V
    .locals 7

    iget-object p0, p0, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    iget-object v0, p0, Lcom/my/target/r;->c:Lz94;

    invoke-virtual {p0}, Lcom/my/target/p0;->v()Lcom/my/target/t1;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lzc0;->a:Lz2a;

    iget-object v0, v0, Lz2a;->a:Lf72;

    new-instance v1, Lcom/my/target/e2;

    invoke-direct {v1, v0}, Lcom/my/target/e2;-><init>(Lf72;)V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/my/target/e2;->a(Lao9;ILcha;Landroid/content/Context;)V

    move-object v2, p1

    goto :goto_0

    :cond_1
    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/my/target/e2;->b(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    :goto_0
    iget-object p1, p0, Lcom/my/target/r;->a:Lz94$b;

    iget-object p2, v2, Lao9;->B:Ljava/lang/String;

    iget-object p1, p1, Lz94$b;->b:Lz94;

    iget-object p2, p1, Lz94;->h:Lz94$a;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lz94$a;->f(Lz94;)V

    :cond_2
    instance-of p1, v2, Lxda;

    if-eqz p1, :cond_3

    move-object p1, v2

    check-cast p1, Lxda;

    invoke-virtual {p1}, Lxda;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v2, Lao9;->Q:Lpp9;

    const/16 p2, 0x138c

    invoke-virtual {p1, p2}, Lpp9;->c(I)V

    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Lv2a;Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p1, Lv2a;->d:Lcom/my/target/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    :cond_0
    iget-object v0, p1, Lv2a;->a:Lxda;

    iget-object v1, v0, Lao9;->b:La0a;

    iget-object v2, v0, Lao9;->a:Ln4a;

    new-instance v3, Lzc5;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/my/target/x0;

    invoke-direct {v4, v1, v2, v3}, Lcom/my/target/x0;-><init>(La0a;Ln4a;Lcom/my/target/m1$b;)V

    new-instance v1, Lcom/my/target/o0;

    iget-object p0, p0, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    invoke-direct {v1, p0, p1}, Lcom/my/target/o0;-><init>(Lcom/my/target/p0;Lv2a;)V

    iput-object v1, v4, Lcom/my/target/x0;->l:Lcom/my/target/x0$a;

    iget-boolean p0, p0, Lcom/my/target/r;->d:Z

    if-eqz p0, :cond_1

    invoke-virtual {v4, p2}, Lcom/my/target/x0;->c(Landroid/view/View;)V

    :cond_1
    iput-object v4, p1, Lv2a;->d:Lcom/my/target/x0;

    const/4 p0, 0x1

    iput-boolean p0, p1, Lv2a;->g:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "InterstitialAdDoublePromoEngine: Ad shown, banner Id = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lao9;->B:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
