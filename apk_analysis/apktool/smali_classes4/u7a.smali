.class public final synthetic Lu7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/k1;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu7a;->b:Lcom/my/target/k1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    sget p1, Lcom/my/target/ra;->j:I

    iget-object p0, p0, Lu7a;->b:Lcom/my/target/k1;

    iget p1, p0, Lcom/my/target/k1;->i:I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    iget-object v2, p0, Lcom/my/target/k1;->d:Lj1a;

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/my/target/k1;->i:I

    iget-object p1, p0, Lcom/my/target/k1;->h:Lcom/my/target/n0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/my/target/n0;->d()V

    :cond_2
    iget-object p1, v2, Lj1a;->Y:Lk6a;

    invoke-virtual {v1}, Lcom/my/target/ra;->getPostView()Lcom/my/target/pa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/pa;->getIconView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/my/target/pa;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/my/target/pa;->getCtaButton()Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p1, Lk6a;->d:Lh14;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lxha;->d:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v3, v2, Lj1a;->Z:Lev9;

    iget-object v6, p1, Lk6a;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    iget v6, v3, Lev9;->f:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget v4, v3, Lev9;->a:I

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget v3, v3, Lev9;->c:I

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p1, Lk6a;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lao9;->g()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lt7a;

    invoke-direct {v2, p0}, Lt7a;-><init>(Lcom/my/target/k1;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/my/target/ra;->d:Lcom/my/target/pa;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/my/target/ra;->i:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_1
    iget v2, p1, Lk6a;->c:I

    invoke-virtual {p0, v2}, Lcom/my/target/k1;->b(I)V

    iget-object v2, v1, Lcom/my/target/ra;->e:Lcom/my/target/fk;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v1, Lcom/my/target/ra;->g:Lcom/my/target/e6;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lu1;->b:Ljava/lang/Object;

    check-cast p1, Ln4a;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/my/target/n0;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/k1;->h:Lcom/my/target/n0;

    invoke-virtual {p1, v0}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    iget-object p0, p0, Lcom/my/target/k1;->h:Lcom/my/target/n0;

    invoke-virtual {p0}, Lcom/my/target/n0;->c()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/my/target/k1;->d()V

    return-void
.end method
