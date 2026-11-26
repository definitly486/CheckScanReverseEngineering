.class public final Lyads/vb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lyads/vq0;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lyads/qb2;

.field public final synthetic f:Lyads/fs2;

.field public final synthetic g:Lyads/xb2;

.field public final synthetic h:Lyads/gc5;

.field public final synthetic i:Lyads/tt;

.field public final synthetic j:Lyads/br0;

.field public final synthetic k:Lyads/sb2;


# direct methods
.method public constructor <init>(Lyads/vq0;Landroid/view/View;Landroid/view/View;Lyads/qb2;Lyads/fs2;Lyads/xb2;Lyads/gc5;Lyads/tt;Lyads/br0;Lyads/sb2;)V
    .locals 0

    iput-object p1, p0, Lyads/vb2;->b:Lyads/vq0;

    iput-object p2, p0, Lyads/vb2;->c:Landroid/view/View;

    iput-object p3, p0, Lyads/vb2;->d:Landroid/view/View;

    iput-object p4, p0, Lyads/vb2;->e:Lyads/qb2;

    iput-object p5, p0, Lyads/vb2;->f:Lyads/fs2;

    iput-object p6, p0, Lyads/vb2;->g:Lyads/xb2;

    iput-object p7, p0, Lyads/vb2;->h:Lyads/gc5;

    iput-object p8, p0, Lyads/vb2;->i:Lyads/tt;

    iput-object p9, p0, Lyads/vb2;->j:Lyads/br0;

    iput-object p10, p0, Lyads/vb2;->k:Lyads/sb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/vb2;->b:Lyads/vq0;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lyads/vb2;->c:Landroid/view/View;

    iget-object p3, p0, Lyads/vb2;->d:Landroid/view/View;

    iget-object p4, p0, Lyads/vb2;->e:Lyads/qb2;

    iget-object p5, p0, Lyads/vb2;->f:Lyads/fs2;

    invoke-static {p1, p3, p4, p5}, Lyads/yb2;->a(Landroid/view/View;Landroid/view/View;Lyads/qb2;Lyads/fs2;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p3, p0, Lyads/vb2;->c:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object p4, p0, Lyads/vb2;->c:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p4, p0, Lyads/vb2;->c:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    if-ge p3, p4, :cond_0

    iget-object p4, p0, Lyads/vb2;->g:Lyads/xb2;

    iget-object p4, p4, Lyads/xb2;->d:Lyads/bo2;

    iget-object p5, p0, Lyads/vb2;->b:Lyads/vq0;

    iget-object p6, p5, Lyads/vq0;->O:Lyads/qb1;

    iget-object p5, p5, Lyads/vq0;->Q:Lyads/db1;

    invoke-virtual {p4, p5, p6}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object p4

    new-instance p5, Ljava/lang/Throwable;

    const-string p6, "Tooltip width > screen size, width was changed"

    invoke-direct {p5, p6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object p6, p4, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Lyads/ao2;->a()V

    :cond_0
    iget-object p4, p0, Lyads/vb2;->c:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    if-ge p2, p4, :cond_1

    iget-object p4, p0, Lyads/vb2;->g:Lyads/xb2;

    iget-object p4, p4, Lyads/xb2;->d:Lyads/bo2;

    iget-object p5, p0, Lyads/vb2;->b:Lyads/vq0;

    iget-object p6, p5, Lyads/vq0;->O:Lyads/qb1;

    iget-object p5, p5, Lyads/vq0;->Q:Lyads/db1;

    invoke-virtual {p4, p5, p6}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object p4

    new-instance p5, Ljava/lang/Throwable;

    const-string p6, "Tooltip height > screen size, height was changed"

    invoke-direct {p5, p6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object p6, p4, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Lyads/ao2;->a()V

    :cond_1
    iget-object p4, p0, Lyads/vb2;->h:Lyads/gc5;

    iget p5, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, p5, p1, p3, p2}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object p1, p0, Lyads/vb2;->g:Lyads/xb2;

    iget-object p2, p0, Lyads/vb2;->i:Lyads/tt;

    iget-object p3, p0, Lyads/vb2;->j:Lyads/br0;

    iget-object p4, p0, Lyads/vb2;->k:Lyads/sb2;

    iget-object p5, p1, Lyads/xb2;->b:Lyads/bj2;

    iget-object p6, p2, Lyads/tt;->a:Lyads/vq0;

    iget-object p7, p2, Lyads/tt;->b:Lyads/fs2;

    const/4 p8, 0x0

    invoke-static {p5, p6, p7, p8, p3}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    iget-object p1, p1, Lyads/xb2;->b:Lyads/bj2;

    iget-object p5, p2, Lyads/tt;->a:Lyads/vq0;

    iget-object p2, p2, Lyads/tt;->b:Lyads/fs2;

    invoke-static {p1, p5, p2, p4, p3}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    iget-object p0, p0, Lyads/vb2;->g:Lyads/xb2;

    iget-object p0, p0, Lyads/xb2;->a:Lyads/xc2;

    invoke-interface {p0}, Lyads/xc2;->a()Lyads/wc2;

    return-void
.end method
