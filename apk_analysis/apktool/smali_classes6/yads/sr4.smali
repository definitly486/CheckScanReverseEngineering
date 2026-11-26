.class public final Lyads/sr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public final b:Lyads/ml2;


# direct methods
.method public constructor <init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;Lyads/ml2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sr4;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object p2, p0, Lyads/sr4;->b:Lyads/ml2;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    iget-object v0, p0, Lyads/sr4;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z

    move-result v0

    iget-object v1, p0, Lyads/sr4;->b:Lyads/ml2;

    iget-object p0, p0, Lyads/sr4;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    check-cast v1, Lyads/cc5;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iput v2, v1, Lyads/cc5;->a:I

    return v3

    :cond_0
    iget v0, v1, Lyads/cc5;->a:I

    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    add-int/2addr v0, v3

    iput v0, v1, Lyads/cc5;->a:I

    invoke-virtual {v1, p0}, Lyads/cc5;->b(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v2

    :cond_1
    if-ne v0, v4, :cond_2

    add-int/2addr v0, v3

    iput v0, v1, Lyads/cc5;->a:I

    invoke-virtual {v1, p0}, Lyads/cc5;->a(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return v3
.end method
