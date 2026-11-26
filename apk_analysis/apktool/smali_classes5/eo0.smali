.class public final Leo0;
.super Lf32;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leo0$a;,
        Leo0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf32<",
        "Lfo0;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

.field public final d:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$c;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$c;Ly22;)V
    .locals 1

    sget-object v0, Ldo0;->c:Ldo0;

    invoke-direct {p0, p3, v0}, Lf32;-><init>(Ly22;Ldm3;)V

    iput-object p1, p0, Leo0;->c:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    iput-object p2, p0, Leo0;->d:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$c;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ly68;
    .locals 0

    check-cast p1, Lfo0;

    iget p1, p1, Lfo0;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Leo0;->d:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$c;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly68;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lfo0;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;

    check-cast p2, Lfo0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lfo0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lfo0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p2, Lfo0;->d:Lfo0$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v5, v0, Lfo0$a;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->tvButtonLeft:Landroid/widget/TextView;

    iget-object v7, v0, Lfo0$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v6

    invoke-virtual {v6, v5}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v5

    iget-object v6, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->ivButtonCoin:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v5, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->ivButtonCoin:Landroid/widget/ImageView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v5, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->ivButtonCoin:Landroid/widget/ImageView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v5, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->tvButtonRight:Landroid/widget/TextView;

    iget-object v6, v0, Lfo0$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->btnAction:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Llb7;

    new-instance v7, Lp30;

    invoke-direct {v7, p0, p2, v2}, Lp30;-><init>(Lil2;Ljava/lang/Object;I)V

    invoke-direct {v6, v7}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->btnAction:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->btnAction:Landroid/widget/LinearLayout;

    const v5, 0x7f0800e6

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p2, Lfo0;->f:Lfo0$c;

    sget-object v5, Leo0$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v5, p0

    const/4 v5, 0x2

    if-eq p0, v2, :cond_3

    if-eq p0, v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->mcCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060494

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    goto :goto_2

    :cond_3
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->mcCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0604f6

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    :goto_2
    iget-object p0, p2, Lfo0;->e:Lfo0$b;

    sget-object p2, Leo0$b;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eq p0, v2, :cond_8

    if-eq p0, v5, :cond_4

    return-void

    :cond_4
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->btnAction:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->mcCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f06034a

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->tvTimer:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lfo0$a;->d:Ljava/lang/Long;

    :cond_5
    if-eqz v1, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 p2, 0x20

    invoke-static {p2}, Lpl2;->e(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v4}, Lpl2;->e(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v4}, Lpl2;->e(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    const p2, 0x7f0801f8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604fc

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_7
    invoke-static {p2}, Lo2;->d(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v5}, Lpl2;->e(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p2, 0x3

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lpm;->c(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->tvTimer:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->btnAction:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060036

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_9
    invoke-static {p2}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;J)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->tvTimer:Landroid/widget/TextView;

    const-wide/32 v0, 0x36ee80

    div-long v0, p2, v0

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long v2, p2, v2

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr p2, v6

    rem-long/2addr p2, v4

    new-instance v4, Ljava/util/Locale;

    const-string v5, "ru"

    const-string v6, "RU"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v5, 0x7f140642

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x3

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v4, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
