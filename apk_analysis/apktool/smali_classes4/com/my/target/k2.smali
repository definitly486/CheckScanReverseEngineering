.class public final Lcom/my/target/k2;
.super Lcom/my/target/x0$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/my/target/m2;


# direct methods
.method public constructor <init>(Lcom/my/target/m2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/k2;->b:Lcom/my/target/m2;

    iput-object p2, p0, Lcom/my/target/k2;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/k2;->b:Lcom/my/target/m2;

    iget-object v1, v0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/my/target/e3;->a:Lcom/iab/omid/library/corpmailru/adsession/CreativeType;

    sget-object v3, Lcom/iab/omid/library/corpmailru/adsession/CreativeType;->HTML_DISPLAY:Lcom/iab/omid/library/corpmailru/adsession/CreativeType;

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/k2;->a:Landroid/view/View;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/my/target/e3$b;

    invoke-virtual {v1, p0, v2}, Lcom/my/target/e3;->c(Landroid/view/View;[Lcom/my/target/e3$b;)V

    invoke-virtual {v0}, Lcom/my/target/m2;->w()Lcom/my/target/t1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/my/target/t1;->getCloseButton()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v1, v0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    new-instance v2, Lcom/my/target/e3$b;

    invoke-direct {v2, p0}, Lcom/my/target/e3$b;-><init>(Landroid/view/View;)V

    filled-new-array {v2}, [Lcom/my/target/e3$b;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/my/target/e3;->e([Lcom/my/target/e3$b;)V

    :cond_1
    iget-object p0, v0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    invoke-virtual {p0}, Lcom/my/target/e3;->g()V

    :cond_2
    return-void
.end method
