.class public final Lcom/androidadvance/topsnackbar/TSnackbar$d;
.super Lcom/google/android/material/behavior/SwipeDismissBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidadvance/topsnackbar/TSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
        "Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/androidadvance/topsnackbar/TSnackbar;


# direct methods
.method public constructor <init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V
    .locals 0

    iput-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$d;->b:Lcom/androidadvance/topsnackbar/TSnackbar;

    invoke-direct {p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final canSwipeDismissView(Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    return p0
.end method

.method public final onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    check-cast p2, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$d;->b:Lcom/androidadvance/topsnackbar/TSnackbar;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/androidadvance/topsnackbar/a;->c()Lcom/androidadvance/topsnackbar/a;

    move-result-object v1

    iget-object v0, v0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    iget-object v2, v1, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/androidadvance/topsnackbar/a;->d(Lcom/androidadvance/topsnackbar/a$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    invoke-virtual {v1, v0}, Lcom/androidadvance/topsnackbar/a;->e(Lcom/androidadvance/topsnackbar/a$c;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    invoke-static {}, Lcom/androidadvance/topsnackbar/a;->c()Lcom/androidadvance/topsnackbar/a;

    move-result-object v1

    iget-object v0, v0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    invoke-virtual {v1, v0}, Lcom/androidadvance/topsnackbar/a;->b(Lcom/androidadvance/topsnackbar/TSnackbar$b;)V

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
