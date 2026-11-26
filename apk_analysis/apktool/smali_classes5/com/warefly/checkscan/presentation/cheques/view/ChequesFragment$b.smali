.class public final Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;",
        "Lu48;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;

    check-cast p2, Lu48;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->ivBySort:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_2

    const/4 v3, 0x2

    if-eq p3, v3, :cond_0

    const/16 p3, 0x8

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lu48;->d()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p3

    const v0, 0x7f0802b1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p3

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->ivBySort:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p3

    const v0, 0x7f0802ae

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p3

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->ivBySort:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    :goto_0
    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->ivBySort:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lu48;->d()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p3

    const v0, 0x7f0802bb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p3

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->ivBySort:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p3

    const v0, 0x7f0802ba

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p3

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->ivBySort:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    :goto_1
    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->ivBySort:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->tvBySort:Landroid/widget/TextView;

    invoke-virtual {p2}, Lu48;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lu48;->d()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p3

    const v0, 0x7f080444

    invoke-static {p1, v0}, Loz1;->b(Landroidx/viewbinding/ViewBinding;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->tvBySort:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0604fc

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->btnBySort:Landroid/widget/ImageView;

    invoke-static {p3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p3

    const v0, 0x7f080201

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p3

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->btnBySort:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->btnBySort:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Llb7;

    new-instance v0, Lm90;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-direct {v0, v2, p0, p2}, Lm90;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p3, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const p2, 0x7f080453

    invoke-static {p1, p2}, Loz1;->b(Landroidx/viewbinding/ViewBinding;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->tvBySort:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p3, 0x7f060029

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->btnBySort:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    const p2, 0x7f080219

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->btnBySort:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;->btnBySort:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Llb7;

    new-instance p2, Lvh1;

    invoke-direct {p2, v2}, Lgh4;-><init>(I)V

    invoke-direct {p1, p2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
