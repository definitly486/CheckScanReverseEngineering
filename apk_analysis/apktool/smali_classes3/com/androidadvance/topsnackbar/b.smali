.class public final Lcom/androidadvance/topsnackbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/androidadvance/topsnackbar/TSnackbar;


# direct methods
.method public constructor <init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androidadvance/topsnackbar/b;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/b;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/androidadvance/topsnackbar/TSnackbar;->b(I)V

    return-void
.end method

.method public final onDragStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/b;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/androidadvance/topsnackbar/a;->c()Lcom/androidadvance/topsnackbar/a;

    move-result-object p1

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    invoke-virtual {p1, p0}, Lcom/androidadvance/topsnackbar/a;->b(Lcom/androidadvance/topsnackbar/TSnackbar$b;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/androidadvance/topsnackbar/a;->c()Lcom/androidadvance/topsnackbar/a;

    move-result-object p1

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    iget-object v0, p1, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/androidadvance/topsnackbar/a;->d(Lcom/androidadvance/topsnackbar/a$b;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    invoke-virtual {p1, p0}, Lcom/androidadvance/topsnackbar/a;->e(Lcom/androidadvance/topsnackbar/a$c;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
