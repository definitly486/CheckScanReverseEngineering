.class public final synthetic Ljga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/wj;

.field public final synthetic c:Lcom/my/target/wf$a;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/wj;Lcom/my/target/wf$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljga;->b:Lcom/my/target/wj;

    iput-object p2, p0, Ljga;->c:Lcom/my/target/wf$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/my/target/wj;->k:I

    iget-object v0, p0, Ljga;->b:Lcom/my/target/wj;

    iget-object v1, v0, Lcom/my/target/wj;->c:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ne p1, v1, :cond_1

    const/16 v1, 0x40

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/my/target/wj;->d:Lcom/my/target/q1;

    if-ne p1, v1, :cond_2

    const/16 v1, 0x80

    goto :goto_1

    :cond_2
    const/16 v1, 0x800

    :goto_1
    iget-object v0, v0, Lcom/my/target/wj;->i:Le6a;

    new-instance v3, Lup9;

    invoke-direct {v3, v1, v0}, Lup9;-><init>(ILe6a;)V

    iget-object p0, p0, Ljga;->c:Lcom/my/target/wf$a;

    check-cast p0, Lml0;

    iget-object p0, p0, Lml0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/wf;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/my/target/wf;->t:Lcom/my/target/l$a;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0, v2, v3}, Lcom/my/target/w2$b;->b(ILpfa;)V

    :cond_3
    return-void
.end method
