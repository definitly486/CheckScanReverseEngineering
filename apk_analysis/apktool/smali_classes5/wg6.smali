.class public final Lwg6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwg6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lti6;",
        "Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lwg6$b;


# direct methods
.method public constructor <init>(Lwg6$b;)V
    .locals 1

    sget-object v0, Lwg6$a;->c:Lwg6$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lwg6;->b:Lwg6$b;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lti6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;

    check-cast p2, Lti6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;->tvBadge:Landroid/widget/TextView;

    sget v1, Lsx3;->a:I

    iget-object v1, p2, Lti6;->c:Ljava/lang/String;

    invoke-static {v1}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lti6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lti6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;->ivProduct:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;->mcBadge:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p2, Lti6;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060497

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lxg6;

    invoke-direct {v1, p0, p2}, Lxg6;-><init>(Lwg6;Lti6;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
