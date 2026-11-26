.class public final Lyads/sq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lyads/vq0;

.field public final synthetic b:Lyads/vq0;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/vq0;)V
    .locals 0

    iput-object p1, p0, Lyads/sq0;->a:Lyads/vq0;

    iput-object p2, p0, Lyads/sq0;->b:Lyads/vq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lyads/sq0;->a:Lyads/vq0;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lyads/sq0;->b:Lyads/vq0;

    iget-object p0, p0, Lyads/vq0;->n:Lyads/nq0;

    iget-object p0, p0, Lyads/nq0;->o0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w41;

    invoke-virtual {p0}, Lyads/w41;->a()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
