.class public final Lyads/ft1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lyads/gt1;


# direct methods
.method public constructor <init>(Lyads/gt1;)V
    .locals 0

    iput-object p1, p0, Lyads/ft1;->a:Lyads/gt1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lyads/ft1;->a:Lyads/gt1;

    iget-object v1, v0, Lyads/u71;->e:Lyads/br0;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lyads/gt1;->f:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->a:Lyads/vq0;

    iget-object v0, v0, Lyads/vq0;->n:Lyads/nq0;

    iget-object v0, v0, Lyads/nq0;->I:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/bj2;

    iget-object p0, p0, Lyads/ft1;->a:Lyads/gt1;

    iget-object p0, p0, Lyads/gt1;->f:Lyads/tt;

    invoke-virtual {v0, p0, p1, v1}, Lyads/bj2;->b(Lyads/tt;Landroid/view/View;Lyads/br0;)V

    return-void
.end method
