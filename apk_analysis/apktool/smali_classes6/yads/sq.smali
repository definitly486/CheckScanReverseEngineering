.class public final Lyads/sq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lyads/bj2;

.field public final synthetic e:Lyads/vq0;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/util/List;Lyads/bj2;Lyads/vq0;)V
    .locals 0

    iput-object p1, p0, Lyads/sq;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lyads/sq;->c:Ljava/util/List;

    iput-object p3, p0, Lyads/sq;->d:Lyads/bj2;

    iput-object p4, p0, Lyads/sq;->e:Lyads/vq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/sq;->b:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object p1

    iget-object p2, p0, Lyads/sq;->c:Ljava/util/List;

    invoke-static {p2}, Lqn1;->K(Ljava/lang/Iterable;)Lpn1;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object p2, p2, Lpn1;->a:Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p3, Landroid/view/View;

    check-cast p4, Lyads/cn1;

    iget-object p5, p0, Lyads/sq;->d:Lyads/bj2;

    iget-object p6, p0, Lyads/sq;->e:Lyads/vq0;

    iget-object p7, p4, Lyads/cn1;->b:Lyads/fs2;

    iget-object p4, p4, Lyads/cn1;->a:Lyads/br0;

    invoke-static {p5, p6, p7, p3, p4}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    goto :goto_0

    :cond_0
    return-void
.end method
