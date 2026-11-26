.class public final Lyads/nn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ln;

.field public b:Lyads/mn;


# direct methods
.method public constructor <init>(Lyads/ln;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nn;->a:Lyads/ln;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 85
    iget-object v0, p0, Lyads/nn;->b:Lyads/mn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyads/nn;->a:Lyads/ln;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lyads/nn;->a:Lyads/ln;

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 89
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 92
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lyads/nn;->b:Lyads/mn;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lyads/nn;->a:Lyads/ln;

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lyads/nn;->a:Lyads/ln;

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lyads/nn;->b:Lyads/mn;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lyads/l0;

    iget-object p0, p0, Lyads/l0;->a:Lyads/q0;

    iget-boolean p1, p0, Lyads/q0;->e:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyads/q0;->a:Lyads/ln;

    invoke-static {p1}, Lyads/tq;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lyads/q0;->a()V

    return v0

    :cond_3
    return v1
.end method
