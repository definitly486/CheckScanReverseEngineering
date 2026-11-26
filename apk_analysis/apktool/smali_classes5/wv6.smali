.class public final Lwv6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lrv6;",
        "Lcom/warefly/checkscan/databinding/ItemQuestionBinding;",
        ">;"
    }
.end annotation


# direct methods
.method public static m(Lrv6;Lcom/warefly/checkscan/databinding/ItemQuestionBinding;)V
    .locals 2

    iget-boolean v0, p0, Lrv6;->b:Z

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->btnExpand:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    const v1, 0x7f0801b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->btnExpand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    const v1, 0x7f0801a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->btnExpand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-boolean p1, p0, Lrv6;->b:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lrv6;->b:Z

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lrv6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;

    check-cast p2, Lrv6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lrv6;->a:Lpv6;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, p2, Lrv6;->b:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->tvDescription:Landroid/widget/TextView;

    sget v2, Lsx3;->a:I

    iget-object v2, v0, Lpv6;->b:Ljava/lang/String;

    invoke-static {v2}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->tvDescription:Landroid/widget/TextView;

    sget-object v2, Lx61;->a:Lx61;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, v0, Lpv6;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->btnExpand:Landroid/widget/ImageView;

    new-instance v1, Ltv6;

    invoke-direct {v1, p0, p2, p1}, Ltv6;-><init>(Lwv6;Lrv6;Lcom/warefly/checkscan/databinding/ItemQuestionBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    new-instance v1, Luv6;

    invoke-direct {v1, p0, p2, p1}, Luv6;-><init>(Lwv6;Lrv6;Lcom/warefly/checkscan/databinding/ItemQuestionBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
