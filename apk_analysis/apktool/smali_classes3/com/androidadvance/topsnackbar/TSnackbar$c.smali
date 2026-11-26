.class public final Lcom/androidadvance/topsnackbar/TSnackbar$c;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidadvance/topsnackbar/TSnackbar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/androidadvance/topsnackbar/TSnackbar;


# direct methods
.method public constructor <init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V
    .locals 0

    iput-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$c;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/androidadvance/topsnackbar/a;->c()Lcom/androidadvance/topsnackbar/a;

    move-result-object p1

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$c;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    iget-object v0, p1, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/androidadvance/topsnackbar/a;->d(Lcom/androidadvance/topsnackbar/a$b;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    invoke-virtual {p1, p0}, Lcom/androidadvance/topsnackbar/a;->e(Lcom/androidadvance/topsnackbar/a$c;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 6

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$c;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    iget-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->b:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v2, 0xb4

    invoke-virtual {p1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v4, 0x46

    invoke-virtual {p1, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    iget-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->c:Landroid/widget/Button;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_0
    return-void
.end method
