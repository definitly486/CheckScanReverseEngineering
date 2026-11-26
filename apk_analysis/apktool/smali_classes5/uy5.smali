.class public final Luy5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;",
        "Lez5;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Luy5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Luy5;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Luy5;->f:Luy5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;

    check-cast p2, Lez5;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvTitle:Landroid/widget/TextView;

    iget-object p3, p2, Lez5;->c:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object p3, p2, Lez5;->d:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->cvItemPlainOperation:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvSticker:Landroid/widget/TextView;

    iget-object v0, p2, Lez5;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 p3, 0x8

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvSticker:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-static {p3, v2, v3, v0}, Lvp3;->d(IIILjava/lang/String;)Landroid/text/SpannableString;

    new-instance v2, Ly88;

    iget-object v4, p2, Lez5;->j:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "#ffbc00"

    :cond_1
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Ly88;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, p3, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvValue:Landroid/widget/TextView;

    iget-object p3, p2, Lez5;->e:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {p2}, Lez5;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Lez5;->h:Ljava/lang/String;

    invoke-static {p3}, Lzn1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, "#000000"

    :cond_2
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

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

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
