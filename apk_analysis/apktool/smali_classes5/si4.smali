.class public final Lsi4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lti4;",
        "Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V
    .locals 1

    sget-object v0, Lri4;->c:Lri4;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lsi4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lti4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;

    check-cast p2, Lti4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->image:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lti4;->a:Lwi4;

    iget-object v2, v1, Lwi4;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->image:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->cbImage:Lcom/warefly/checkscan/core/ui/CheckBox;

    iget-boolean v2, v1, Lwi4;->d:Z

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->placeholderFirst:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lgh1;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0, p2}, Lgh1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->placeholderFirst:Landroid/widget/FrameLayout;

    iget-boolean v1, v1, Lwi4;->e:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->placeholderFirst:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p2, Lti4;->b:Lwi4;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lwi4;->e:Z

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->imageSecond:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v2

    iget-object v3, v0, Lwi4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v2

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->imageSecond:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->cbImageSecond:Lcom/warefly/checkscan/core/ui/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->cbImageSecond:Lcom/warefly/checkscan/core/ui/CheckBox;

    iget-boolean v0, v0, Lwi4;->d:Z

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->placeholderSecond:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lqd1;

    invoke-direct {v3, p0, p2, v4}, Lqd1;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->placeholderSecond:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->placeholderSecond:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void

    :cond_0
    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->image:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->imageSecond:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingDoubleImageBinding;->cbImageSecond:Lcom/warefly/checkscan/core/ui/CheckBox;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
