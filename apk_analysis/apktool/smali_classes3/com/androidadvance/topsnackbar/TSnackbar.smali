.class public final Lcom/androidadvance/topsnackbar/TSnackbar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidadvance/topsnackbar/TSnackbar$d;,
        Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;
    }
.end annotation


# static fields
.field public static final e:Landroid/os/Handler;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

.field public c:I

.field public final d:Lcom/androidadvance/topsnackbar/TSnackbar$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/androidadvance/topsnackbar/TSnackbar$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/androidadvance/topsnackbar/TSnackbar;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/androidadvance/topsnackbar/TSnackbar$b;

    invoke-direct {v0, p0}, Lcom/androidadvance/topsnackbar/TSnackbar$b;-><init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V

    iput-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    iput-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d034a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    iput-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    return-void
.end method

.method public static c(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/androidadvance/topsnackbar/TSnackbar;
    .locals 8

    new-instance v0, Lcom/androidadvance/topsnackbar/TSnackbar;

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    instance-of v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    goto/16 :goto_3

    :cond_1
    instance-of v3, p0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_2
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    instance-of v3, p0, Landroidx/appcompat/widget/Toolbar;

    if-nez v3, :cond_4

    instance-of v3, p0, Landroid/widget/Toolbar;

    if-eqz v3, :cond_7

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v6, p0, :cond_6

    add-int/lit8 v6, v4, -0x1

    if-ge v5, v6, :cond_7

    :cond_5
    if-ge v5, v4, :cond_7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    move-object p0, v6

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v3, p0, Landroid/view/View;

    if-eqz v3, :cond_8

    check-cast p0, Landroid/view/View;

    goto :goto_2

    :cond_8
    move-object p0, v1

    :goto_2
    if-nez p0, :cond_0

    move-object p0, v2

    :goto_3
    invoke-direct {v0, p0}, Lcom/androidadvance/topsnackbar/TSnackbar;-><init>(Landroid/view/ViewGroup;)V

    iget-object p0, v0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    invoke-virtual {p0}, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p2, v0, Lcom/androidadvance/topsnackbar/TSnackbar;->c:I

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Lsm;->a:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/androidadvance/topsnackbar/TSnackbar$c;

    invoke-direct {v1, p0}, Lcom/androidadvance/topsnackbar/TSnackbar$c;-><init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public final b(I)V
    .locals 3

    invoke-static {}, Lcom/androidadvance/topsnackbar/a;->c()Lcom/androidadvance/topsnackbar/a;

    move-result-object v0

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    iget-object v1, v0, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/androidadvance/topsnackbar/a;->d(Lcom/androidadvance/topsnackbar/a$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    invoke-static {p0, p1}, Lcom/androidadvance/topsnackbar/a;->a(Lcom/androidadvance/topsnackbar/a$c;I)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/androidadvance/topsnackbar/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    invoke-static {p0, p1}, Lcom/androidadvance/topsnackbar/a;->a(Lcom/androidadvance/topsnackbar/a$c;I)Z

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/androidadvance/topsnackbar/a;->c()Lcom/androidadvance/topsnackbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    iget-object v2, v0, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/androidadvance/topsnackbar/a;->d(Lcom/androidadvance/topsnackbar/a$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    iget-object v3, v0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    if-eqz v3, :cond_1

    if-eqz v3, :cond_1

    iput-object v3, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    iput-object v1, v0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    iget-object v3, v3, Lcom/androidadvance/topsnackbar/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidadvance/topsnackbar/a$b;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/androidadvance/topsnackbar/a$b;->show()V

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lii8;

    invoke-direct {p1, p0, p2}, Lii8;-><init>(Lcom/androidadvance/topsnackbar/TSnackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/androidadvance/topsnackbar/a;->c()Lcom/androidadvance/topsnackbar/a;

    move-result-object v0

    iget v1, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->c:I

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    iget-object v2, v0, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/androidadvance/topsnackbar/a;->d(Lcom/androidadvance/topsnackbar/a$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    iput v1, p0, Lcom/androidadvance/topsnackbar/a$c;->b:I

    iget-object v1, v0, Lcom/androidadvance/topsnackbar/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    invoke-virtual {v0, p0}, Lcom/androidadvance/topsnackbar/a;->e(Lcom/androidadvance/topsnackbar/a$c;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-object v3, v0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/androidadvance/topsnackbar/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget-object p0, v0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    iput v1, p0, Lcom/androidadvance/topsnackbar/a$c;->b:I

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/androidadvance/topsnackbar/a$c;

    invoke-direct {v3, v1, p0}, Lcom/androidadvance/topsnackbar/a$c;-><init>(ILcom/androidadvance/topsnackbar/TSnackbar$b;)V

    iput-object v3, v0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    :goto_1
    iget-object p0, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/androidadvance/topsnackbar/a;->a(Lcom/androidadvance/topsnackbar/a$c;I)Z

    move-result p0

    if-eqz p0, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    iget-object v1, v0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    if-eqz v1, :cond_5

    iput-object v1, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    iput-object p0, v0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    iget-object v1, v1, Lcom/androidadvance/topsnackbar/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidadvance/topsnackbar/a$b;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/androidadvance/topsnackbar/a$b;->show()V

    goto :goto_2

    :cond_4
    iput-object p0, v0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    :cond_5
    :goto_2
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
