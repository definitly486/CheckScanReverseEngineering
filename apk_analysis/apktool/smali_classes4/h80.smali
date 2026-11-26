.class public final synthetic Lh80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Li80;


# direct methods
.method public synthetic constructor <init>(Li80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh80;->b:Li80;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object p0, p0, Lh80;->b:Li80;

    iget-object v0, p0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloon:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Li80;->c()V

    return-void
.end method
