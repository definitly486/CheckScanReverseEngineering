.class public final Lvo5;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvo5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lcp5;",
        "Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;)V
    .locals 1

    sget-object v0, Luo5;->c:Luo5;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lvo5;->b:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcp5;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;

    check-cast p2, Lcp5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcp5;->g:Ljava/lang/String;

    iget-object v1, p2, Lcp5;->h:Lcp5$a;

    iget-object v2, p2, Lcp5;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p2, Lcp5;->e:Z

    if-nez v3, :cond_0

    new-instance v3, Lkd$v$a$c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Shown"

    invoke-static {v5, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v5}, Lkd$v$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkd;->c()V

    :cond_0
    iget-object v3, p2, Lcp5;->j:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Llb7;

    new-instance v6, Lp30;

    const/4 v7, 0x2

    invoke-direct {v6, p0, p2, v7}, Lp30;-><init>(Lil2;Ljava/lang/Object;I)V

    invoke-direct {v5, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v6

    invoke-virtual {v6, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    new-instance v6, Lur3;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lpl2;->d(F)F

    move-result v8

    invoke-static {v7}, Lpl2;->d(F)F

    move-result v7

    const/4 v9, 0x0

    invoke-direct {v6, v8, v7, v9, v9}, Lur3;-><init>(FFFF)V

    invoke-virtual {v0, v6, v3}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object v0

    check-cast v0, Lh37;

    iget-object v6, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_2
    move-object v0, v4

    :goto_0
    const/16 v6, 0x8

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->btnGo:Landroid/widget/TextView;

    iget-object v7, v1, Lcp5$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcp5$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Llb7;

    new-instance v8, Lqo0;

    invoke-direct {v8, p0, v0, v3}, Lqo0;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v7, v8}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_1

    :cond_4
    move-object v0, v4

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->btnGo:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_e

    instance-of v7, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v7, :cond_6

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_6
    if-eqz v4, :cond_8

    iget-object v7, p2, Lcp5;->k:Ljava/lang/Float;

    if-nez v7, :cond_7

    const-string v7, "343:180"

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p2, Lcp5;->i:Lb06;

    if-eqz v0, :cond_9

    iget-boolean v0, v0, Lb06;->b:Z

    if-ne v0, v3, :cond_9

    move v0, v3

    goto :goto_2

    :cond_9
    move v0, v5

    :goto_2
    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    move v5, v6

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v4, Lt30;

    invoke-direct {v4, p0, p2, v3}, Lt30;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v1, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->tvNotifTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->tvNotifBody:Landroid/widget/TextView;

    iget-object v0, p2, Lcp5;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->tvNotifDate:Landroid/widget/TextView;

    sget-object p1, Lpb2;->a:Lpb2;

    iget-object p2, p2, Lcp5;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object p1, Lh64;->Companion:Lh64$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lh64;

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lh64;-><init>(Ljava/time/Instant;)V

    sget-object v1, Lsv8;->Companion:Lsv8$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lsv8$a;->b(Ljava/time/ZoneId;)Lsv8;

    move-result-object v1

    invoke-static {v0, v1}, Ltv8;->a(Lh64;Lsv8;)Ljt4;

    move-result-object v0

    invoke-static {p1, p2}, Lh64$a;->a(Lh64$a;Ljava/lang/String;)Lh64;

    move-result-object p1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lsv8$a;->b(Ljava/time/ZoneId;)Lsv8;

    move-result-object p2

    invoke-static {p1, p2}, Ltv8;->a(Lh64;Lsv8;)Ljt4;

    move-result-object p1

    invoke-virtual {v0}, Ljt4;->a()Lct4;

    move-result-object p2

    invoke-virtual {p1}, Ljt4;->a()Lct4;

    move-result-object v1

    invoke-virtual {p2, v1}, Lct4;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    const p2, 0x7f140661

    invoke-static {p2}, Lpb2;->c(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Ljt4;->a()Lct4;

    move-result-object p2

    new-instance v0, Llc2$c;

    invoke-direct {v0, v3}, Llc2$c;-><init>(I)V

    const/4 v1, -0x1

    invoke-static {p2, v1, v0}, Lit4;->a(Lct4;ILlc2$b;)Lct4;

    move-result-object p2

    invoke-virtual {p1}, Ljt4;->a()Lct4;

    move-result-object v0

    invoke-virtual {p2, v0}, Lct4;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const p2, 0x7f1406ca

    invoke-static {p2}, Lpb2;->c(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Ljt4;->a()Lct4;

    move-result-object p2

    iget-object p2, p2, Lct4;->b:Ljava/time/LocalDate;

    const v0, 0x7f1406c1

    invoke-static {v0}, Lpb2;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p2

    :goto_4
    sget-object v0, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-static {}, Lcom/warefly/checkscan/CheckScanApplication$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Ljt4;->b:Ljava/time/LocalDateTime;

    const v1, 0x7f14064a

    invoke-static {v1}, Lpb2;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1406c2

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :goto_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_e
    const-string p0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->b(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    invoke-interface {p1}, Lhk0;->a()Lhk0;

    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method
