.class public final Lyads/fh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field public static final synthetic d:[Lze4;


# instance fields
.field public final a:Lyads/hj4;

.field public final b:Lyads/e55;

.field public c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/fh4;

    const-string v1, "viewReference"

    const-string v2, "getViewReference()Landroid/view/View;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/fh4;->d:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lyads/hj4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/fh4;->a:Lyads/hj4;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/fh4;->b:Lyads/e55;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/fh4;->b:Lyads/e55;

    sget-object v1, Lyads/fh4;->d:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lyads/fh4;->b:Lyads/e55;

    sget-object v1, Lyads/fh4;->d:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lyads/fh4;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lyads/fh4;->c:Ljava/lang/Integer;

    iget-object p0, p0, Lyads/fh4;->a:Lyads/hj4;

    if-nez v0, :cond_1

    iget-object p0, p0, Lyads/hj4;->a:Lyads/ij4;

    invoke-virtual {p0}, Lyads/ij4;->i()V

    return-void

    :cond_1
    iget-object p0, p0, Lyads/hj4;->a:Lyads/ij4;

    invoke-virtual {p0}, Lyads/ij4;->j()V

    :cond_2
    return-void
.end method
