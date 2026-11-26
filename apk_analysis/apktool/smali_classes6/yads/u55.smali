.class public final Lyads/u55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lyads/vq0;

.field public final synthetic b:Lyads/vq0;

.field public final synthetic c:Lyads/v55;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/vq0;Lyads/v55;)V
    .locals 0

    iput-object p1, p0, Lyads/u55;->a:Lyads/vq0;

    iput-object p2, p0, Lyads/u55;->b:Lyads/vq0;

    iput-object p3, p0, Lyads/u55;->c:Lyads/v55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lyads/u55;->a:Lyads/vq0;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lyads/u55;->b:Lyads/vq0;

    invoke-static {p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lyads/u55;->c:Lyads/v55;

    iget-object p0, p0, Lyads/u55;->b:Lyads/vq0;

    invoke-virtual {v0, p1, p0}, Lyads/v55;->a(Landroidx/lifecycle/LifecycleOwner;Lyads/vq0;)Ljava/lang/Object;

    return-void

    :cond_0
    sget p0, Lyads/rv3;->a:I

    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
