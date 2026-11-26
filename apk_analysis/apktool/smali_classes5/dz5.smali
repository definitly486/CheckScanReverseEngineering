.class public final Ldz5;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lez5;",
        "Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ldz5$a;->c:Ldz5$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lez5;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;

    check-cast p2, Lez5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lez5;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v0, p2, Lez5;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lez5;->i:Ljava/lang/String;

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvSticker:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvSticker:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-static {v2, v3, v4, p0}, Lvp3;->d(IIILjava/lang/String;)Landroid/text/SpannableString;

    new-instance v3, Ly88;

    iget-object v5, p2, Lez5;->j:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, "#ffbc00"

    :cond_1
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Ly88;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v3, v2, p0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvValue:Landroid/widget/TextView;

    iget-object v0, p2, Lez5;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {p2}, Lez5;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lez5;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lzn1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "#000000"

    :cond_3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Lez5;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lh37;->P(Lqs2;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method
