.class public final Lyads/mh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static final synthetic d:[Lze4;


# instance fields
.field public final a:Lyads/hj4;

.field public b:Lyads/fh4;

.field public final c:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/mh4;

    const-string v1, "viewReference"

    const-string v2, "getViewReference()Landroid/view/View;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/mh4;->d:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lyads/hj4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/mh4;->a:Lyads/hj4;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/mh4;->c:Lyads/e55;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lyads/mh4;->c:Lyads/e55;

    sget-object v1, Lyads/mh4;->d:[Lze4;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget-object v0, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v0, p0, Lyads/mh4;->c:Lyads/e55;

    aget-object v1, v1, v2

    iget-object v0, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lyads/mh4;->a:Lyads/hj4;

    new-instance v3, Lyads/fh4;

    invoke-direct {v3, v0, v1}, Lyads/fh4;-><init>(Landroid/view/View;Lyads/hj4;)V

    iput-object v3, p0, Lyads/mh4;->b:Lyads/fh4;

    iget-object p0, v3, Lyads/fh4;->b:Lyads/e55;

    sget-object v0, Lyads/fh4;->d:[Lze4;

    aget-object v0, v0, v2

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lyads/mh4;->b:Lyads/fh4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/fh4;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lyads/mh4;->b:Lyads/fh4;

    iget-object v0, p0, Lyads/mh4;->c:Lyads/e55;

    sget-object v1, Lyads/mh4;->d:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lyads/mh4;->a:Lyads/hj4;

    iget-object p1, p1, Lyads/hj4;->a:Lyads/ij4;

    invoke-virtual {p1}, Lyads/ij4;->i()V

    iget-object p1, p0, Lyads/mh4;->c:Lyads/e55;

    sget-object v0, Lyads/mh4;->d:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p1, p1, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lyads/mh4;->a:Lyads/hj4;

    new-instance v2, Lyads/fh4;

    invoke-direct {v2, p1, v0}, Lyads/fh4;-><init>(Landroid/view/View;Lyads/hj4;)V

    iput-object v2, p0, Lyads/mh4;->b:Lyads/fh4;

    iget-object p0, v2, Lyads/fh4;->b:Lyads/e55;

    sget-object p1, Lyads/fh4;->d:[Lze4;

    aget-object p1, p1, v1

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lyads/mh4;->b:Lyads/fh4;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lyads/fh4;->a()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lyads/mh4;->b:Lyads/fh4;

    iget-object p0, p0, Lyads/mh4;->a:Lyads/hj4;

    iget-object p0, p0, Lyads/hj4;->a:Lyads/ij4;

    invoke-virtual {p0}, Lyads/ij4;->j()V

    return-void
.end method
