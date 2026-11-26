.class public final Lyads/mx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Lyads/gc5;

.field public final b:Landroid/view/View;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/util/List;

.field public final f:Lyads/tt;

.field public final g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lyads/gc5;Landroid/view/View;ZZLjava/util/List;Lyads/tt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/mx4;->a:Lyads/gc5;

    iput-object p2, p0, Lyads/mx4;->b:Landroid/view/View;

    iput-boolean p3, p0, Lyads/mx4;->c:Z

    iput-boolean p4, p0, Lyads/mx4;->d:Z

    iput-object p5, p0, Lyads/mx4;->e:Ljava/util/List;

    iput-object p6, p0, Lyads/mx4;->f:Lyads/tt;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lyads/mx4;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p1, p0, Lyads/mx4;->b:Landroid/view/View;

    iget-object v0, p0, Lyads/mx4;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lyads/mx4;->g:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lyads/mx4;->e:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lyads/mx4;->f:Lyads/tt;

    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    iget-object p2, p2, Lyads/tt;->a:Lyads/vq0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/xr0;

    iget-object v3, v3, Lyads/xr0;->b:Lyads/as2;

    invoke-virtual {v3, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/xr0;

    iget-object v2, p2, Lyads/vq0;->n:Lyads/nq0;

    iget-object v2, v2, Lyads/nq0;->c:Lyads/c81;

    iget-object v2, v2, Lyads/c81;->b:Lyads/lu0;

    invoke-virtual {v2, v1, p2, v0}, Lyads/lu0;->a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lyads/mx4;->d:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lyads/mx4;->a:Lyads/gc5;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    iget-boolean p0, p0, Lyads/mx4;->c:Z

    return p0
.end method
