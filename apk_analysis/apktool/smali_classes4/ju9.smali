.class public final synthetic Lju9;
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

    iput-object p1, p0, Lju9;->b:Lcom/my/target/ef;

    iput-object p2, p0, Lju9;->c:Lcom/my/target/wf$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    sget v0, Lcom/my/target/ef;->r:I

    iget-object v0, p0, Lju9;->b:Lcom/my/target/ef;

    iget-object v1, v0, Lcom/my/target/ef;->i:Landroid/widget/Button;

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, v0, Lcom/my/target/ef;->c:Lcom/my/target/fj;

    if-ne p1, v1, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/my/target/fj;->getLeftText()Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/my/target/fj;->getRightBorderedView()Lcom/my/target/q1;

    move-result-object v1

    if-ne p1, v1, :cond_3

    const/16 v2, 0x80

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/my/target/ef;->j:Lcom/my/target/zh;

    if-ne p1, v1, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/my/target/ef;->b:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/my/target/ef;->f:Lcom/my/target/common/views/StarsRatingView;

    if-ne p1, v1, :cond_6

    const/16 v2, 0x10

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/my/target/ef;->g:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    const/16 v2, 0x20

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lcom/my/target/ef;->h:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    const/16 v2, 0x200

    goto :goto_1

    :cond_8
    iget-object v1, v0, Lcom/my/target/ef;->d:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    const v2, 0x8000

    goto :goto_1

    :cond_9
    const/16 v2, 0x800

    :goto_1
    iget-object v0, v0, Lcom/my/target/ef;->p:Le6a;

    new-instance v1, Lup9;

    invoke-direct {v1, v2, v0}, Lup9;-><init>(ILe6a;)V

    iget-object p0, p0, Lju9;->c:Lcom/my/target/wf$a;

    check-cast p0, Lml0;

    iget-object p0, p0, Lml0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/wf;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/my/target/wf;->t:Lcom/my/target/l$a;

    if-eqz p0, :cond_a

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0, v4, v1}, Lcom/my/target/w2$b;->b(ILpfa;)V

    :cond_a
    return-void
.end method
