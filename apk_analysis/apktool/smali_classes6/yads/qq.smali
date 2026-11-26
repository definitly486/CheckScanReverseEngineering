.class public final Lyads/qq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Lyads/fu;

.field public final synthetic g:Lnl3;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/util/List;Lyads/fs2;Lyads/fu;Lnl3;)V
    .locals 0

    iput-object p1, p0, Lyads/qq;->b:Landroid/view/View;

    iput-object p2, p0, Lyads/qq;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lyads/qq;->d:Ljava/util/List;

    iput-object p4, p0, Lyads/qq;->e:Lyads/fs2;

    iput-object p5, p0, Lyads/qq;->f:Lyads/fu;

    iput-object p6, p0, Lyads/qq;->g:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/qq;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lyads/qq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lyads/qq;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lyads/qq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lyads/qq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p3, p3

    iget-object p4, p0, Lyads/qq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p1, p4

    float-to-int p1, p1

    const/4 p4, 0x0

    invoke-static {p2, p3, p1, p4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lyads/qq;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/wd1;

    instance-of p4, p3, Lyads/ud1;

    if-eqz p4, :cond_4

    check-cast p3, Lyads/ud1;

    invoke-virtual {p3}, Lyads/ud1;->a()Lyads/z41;

    move-result-object p3

    iget-object p3, p3, Lyads/z41;->a:Lyads/as2;

    iget-object p4, p0, Lyads/qq;->e:Lyads/fs2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    const/16 p5, 0x1f

    shr-long p5, p3, p5

    const-wide/16 p7, 0x0

    cmp-long p9, p5, p7

    if-eqz p9, :cond_3

    const-wide/16 v0, -0x1

    cmp-long p5, p5, v0

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    cmp-long p3, p3, p7

    if-lez p3, :cond_2

    const p3, 0x7fffffff

    goto :goto_2

    :cond_2
    const/high16 p3, -0x80000000

    goto :goto_2

    :cond_3
    :goto_1
    long-to-int p3, p3

    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p4, p0, Lyads/qq;->b:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    invoke-static {p3, p4}, Lyads/pq;->a(Ljava/lang/Integer;Landroid/util/DisplayMetrics;)I

    move-result p3

    iget-object p4, p0, Lyads/qq;->f:Lyads/fu;

    int-to-float p3, p3

    check-cast p4, Lyads/yv3;

    invoke-virtual {p4, p1, p3}, Lyads/yv3;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_4
    instance-of p3, p3, Lyads/vd1;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lyads/qq;->b:Landroid/view/View;

    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lyads/qq;->f:Lyads/fu;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/fu;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lyads/qq;->g:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
