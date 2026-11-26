.class public final Lyads/kb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lyads/lb;


# direct methods
.method public constructor <init>(Lyads/lb;)V
    .locals 0

    iput-object p1, p0, Lyads/kb;->a:Lyads/lb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/kb;->a:Lyads/lb;

    invoke-virtual {p0}, Lyads/lb;->a()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lyads/kb;->a:Lyads/lb;

    iget-object p1, p0, Lyads/lb;->d:Lyads/sr4;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lyads/lb;->a:Lyads/zo1;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lyads/lb;->d:Lyads/sr4;

    return-void
.end method
