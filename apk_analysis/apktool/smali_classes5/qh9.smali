.class public final Lqh9;
.super Lf32;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqh9$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf32<",
        "Lrh9;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

.field public final d:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$d;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$d;Landroidx/lifecycle/LifecycleCoroutineScope;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lph9;->c:Lph9;

    invoke-direct {p0, p3, v0}, Lf32;-><init>(Ly22;Ldm3;)V

    iput-object p1, p0, Lqh9;->c:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    iput-object p2, p0, Lqh9;->d:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$d;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ly68;
    .locals 0

    check-cast p1, Lrh9;

    iget p1, p1, Lrh9;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lqh9;->d:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$d;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly68;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lrh9;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;

    check-cast p2, Lrh9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lrh9;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p2, Lrh9;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v2, p2, Lrh9;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p2, Lrh9;->d:Lrh9$a;

    const-string v2, " "

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    iget-object v7, v1, Lrh9$a;->a:Ljava/lang/String;

    iget-object v8, v1, Lrh9$a;->b:Ljava/lang/String;

    invoke-static {v7, v2, v8}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->tvButton:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->btnAction:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Llb7;

    new-instance v9, La70;

    invoke-direct {v9, p0, p2, v5}, La70;-><init>(Lil2;Lpz3;I)V

    invoke-direct {v8, v9}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->btnSecondary:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->btnSecondary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->btnAction:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->btnSecondary:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object p0, p2, Lrh9;->g:Lfo0$c;

    sget-object v0, Lqh9$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v5, :cond_3

    if-eq p0, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->mcCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f060494

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    goto :goto_2

    :cond_3
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->mcCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0604f6

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    :goto_2
    iget-object p0, p2, Lrh9;->f:Lrh9$b;

    sget-object p2, Lqh9$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eq p0, v5, :cond_a

    if-eq p0, v0, :cond_4

    return-void

    :cond_4
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->btnAction:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->mcCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f06034a

    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    if-eqz v1, :cond_5

    iget-object p0, v1, Lrh9$a;->a:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object p0, v3

    :goto_3
    if-eqz v1, :cond_6

    iget-object v0, v1, Lrh9$a;->b:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v0, v3

    :goto_4
    invoke-static {p0, v2, v0}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->tvTimerAdCount:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->timerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_7

    iget-object v3, v1, Lrh9$a;->d:Ljava/lang/Long;

    :cond_7
    if-eqz v3, :cond_8

    move v4, v6

    :cond_8
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 p2, 0x20

    invoke-static {p2}, Lpl2;->e(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6}, Lpl2;->e(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v6}, Lpl2;->e(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604fc

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_9
    invoke-static {p2}, Lo2;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Lpl2;->e(I)I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p2, 0x3

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lpm;->c(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->timerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->btnAction:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060036

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_b
    invoke-static {p2}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;J)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->tvTimer:Landroid/widget/TextView;

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

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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
