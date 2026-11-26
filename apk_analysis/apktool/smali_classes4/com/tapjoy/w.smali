.class public final Lcom/tapjoy/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/x;


# direct methods
.method public constructor <init>(Lcom/tapjoy/x;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/w;->a:Lcom/tapjoy/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tapjoy/w;->a:Lcom/tapjoy/x;

    iget-object p1, p1, Lcom/tapjoy/x;->a:Lcom/tapjoy/TJCloseButton;

    iget-boolean v0, p1, Lcom/tapjoy/TJCloseButton;->a:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/tapjoy/w;->a:Lcom/tapjoy/x;

    iget-object p0, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/TJCloseButton;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/TJCloseButton;->b:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tapjoy/w;->a:Lcom/tapjoy/x;

    iget-object p1, p1, Lcom/tapjoy/x;->a:Lcom/tapjoy/TJCloseButton;

    iget-boolean v0, p1, Lcom/tapjoy/TJCloseButton;->a:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/tapjoy/w;->a:Lcom/tapjoy/x;

    iget-object p0, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/TJCloseButton;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/TJCloseButton;->b:Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
