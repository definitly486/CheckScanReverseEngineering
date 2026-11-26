.class public final Lcom/my/target/eg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lcom/my/target/eg;


# direct methods
.method public constructor <init>(Lcom/my/target/eg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/eg$c;->b:Lcom/my/target/eg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/my/target/eg$c;->b:Lcom/my/target/eg;

    iget-boolean v0, p0, Lcom/my/target/eg;->N:Z

    iget-object v1, p0, Lcom/my/target/eg;->k:Landroid/widget/Button;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p1, v1, :cond_1

    const/16 v3, 0x40

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/my/target/eg;->i:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/my/target/eg;->j:Lcom/my/target/common/views/StarsRatingView;

    if-ne p1, v0, :cond_3

    const/16 v3, 0x10

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/my/target/eg;->n:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    const/16 v3, 0x200

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {v0}, Lcom/my/target/zf;->getClickableLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/16 v3, 0x2000

    goto :goto_1

    :cond_5
    const/16 v3, 0x800

    :goto_1
    iget-object p1, p0, Lcom/my/target/eg;->M:Le6a;

    new-instance v0, Lup9;

    invoke-direct {v0, v3, p1}, Lup9;-><init>(ILe6a;)V

    iget-object p0, p0, Lcom/my/target/eg;->B:Lcom/my/target/l$a;

    if-eqz p0, :cond_8

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0, v2, v0}, Lcom/my/target/w2$b;->b(ILpfa;)V

    return-void

    :cond_6
    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/my/target/eg;->B:Lcom/my/target/l$a;

    if-eqz p0, :cond_8

    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0, v2, p1}, Lcom/my/target/w2$b;->b(ILpfa;)V

    :cond_8
    return-void
.end method
