.class public final Lpm8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpm8$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lrm8;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lpm8$b;

.field public final c:Lfe;


# direct methods
.method public constructor <init>(Lpm8$b;Lfe;)V
    .locals 1

    sget-object v0, Lpm8$a;->c:Lpm8$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lpm8;->b:Lpm8$b;

    iput-object p2, p0, Lpm8;->c:Lfe;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lrm8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;

    check-cast p2, Lrm8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p2, Lrm8;->f:Z

    iget-object v1, p2, Lrm8;->d:Ljava/lang/String;

    iget-object v2, p0, Lpm8;->c:Lfe;

    iget v3, p2, Lrm8;->a:I

    invoke-interface {v2, v3}, Lfe;->sendTaskShownEvent(I)V

    iget-object v2, p0, Lpm8;->b:Lpm8$b;

    invoke-interface {v2}, Lpm8$b;->sendDailyTaskShownEvent()V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lqm8;

    invoke-direct {v4, p0, p2}, Lqm8;-><init>(Lpm8;Lrm8;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object v2, p2, Lrm8;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p2, Lrm8;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lrm8;->e:Ljava/lang/String;

    const/4 p2, 0x4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->ivBadgeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->ivBadgeAnimatedIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->ivBadgeAnimatedIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->ivBadgeAnimatedIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lom8;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Ltx4;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->ivBadgeAnimatedIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->ivBadgeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    invoke-virtual {p0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->ivBadgeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->fadeBackground:Landroid/view/View;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    if-eqz v0, :cond_3

    const p2, 0x7f0801f7

    goto :goto_2

    :cond_3
    const p2, 0x7f08029e

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;->btnArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method
