.class public final Lyads/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lyads/q0;


# direct methods
.method public constructor <init>(Lyads/q0;)V
    .locals 0

    iput-object p1, p0, Lyads/k0;->a:Lyads/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lyads/k0;->a:Lyads/q0;

    iget-object p1, p1, Lyads/q0;->a:Lyads/ln;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lyads/k0;->a:Lyads/q0;

    iget-object p0, p0, Lyads/q0;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lyads/k0;->a:Lyads/q0;

    iget-object p1, p1, Lyads/q0;->a:Lyads/ln;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lyads/k0;->a:Lyads/q0;

    iget-object v0, v0, Lyads/q0;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lyads/k0;->a:Lyads/q0;

    invoke-virtual {p0}, Lyads/q0;->a()V

    return-void
.end method
