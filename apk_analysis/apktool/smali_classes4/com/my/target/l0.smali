.class public final Lcom/my/target/l0;
.super Lcom/my/target/x0$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/my/target/m0;


# direct methods
.method public constructor <init>(Lcom/my/target/m0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/l0;->b:Lcom/my/target/m0;

    iput-object p2, p0, Lcom/my/target/l0;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/l0;->b:Lcom/my/target/m0;

    iget-object v1, v0, Lcom/my/target/m0;->n:Lcom/my/target/e3;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/my/target/l0;->a:Landroid/view/View;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/my/target/e3$b;

    invoke-virtual {v1, p0, v2}, Lcom/my/target/e3;->c(Landroid/view/View;[Lcom/my/target/e3$b;)V

    iget-object p0, v0, Lcom/my/target/m0;->m:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/my/target/a0;

    iget-object p0, p0, Lcom/my/target/a0;->c:Lwy9;

    invoke-interface {p0}, Lwy9;->getCloseButton()Lcom/my/target/f6;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/my/target/m0;->n:Lcom/my/target/e3;

    new-instance v2, Lcom/my/target/e3$b;

    invoke-direct {v2, p0}, Lcom/my/target/e3$b;-><init>(Landroid/view/View;)V

    filled-new-array {v2}, [Lcom/my/target/e3$b;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/my/target/e3;->e([Lcom/my/target/e3$b;)V

    :cond_0
    iget-object p0, v0, Lcom/my/target/m0;->n:Lcom/my/target/e3;

    invoke-virtual {p0}, Lcom/my/target/e3;->g()V

    :cond_1
    return-void
.end method
