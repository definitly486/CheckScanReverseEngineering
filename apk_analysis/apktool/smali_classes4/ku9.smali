.class public final synthetic Lku9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/ef;

.field public final synthetic c:Lcom/my/target/wf$a;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/ef;Lcom/my/target/wf$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lku9;->b:Lcom/my/target/ef;

    iput-object p2, p0, Lku9;->c:Lcom/my/target/wf$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/my/target/ef;->r:I

    iget-object v0, p0, Lku9;->b:Lcom/my/target/ef;

    iget-object v0, v0, Lcom/my/target/ef;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lgia;

    invoke-direct {v1}, Lgia;-><init>()V

    iget-object p0, p0, Lku9;->c:Lcom/my/target/wf$a;

    check-cast p0, Lml0;

    iget-object p0, p0, Lml0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/wf;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/my/target/wf;->t:Lcom/my/target/l$a;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0, v0, v1}, Lcom/my/target/w2$b;->b(ILpfa;)V

    :cond_1
    return-void
.end method
