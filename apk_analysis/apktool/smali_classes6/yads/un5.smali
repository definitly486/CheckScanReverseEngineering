.class public final Lyads/un5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/xn5;

.field public final b:Lyads/kn;

.field public final c:Lyads/ys;

.field public d:Lyads/wn5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/xn5;

    invoke-direct {v0}, Lyads/xn5;-><init>()V

    iput-object v0, p0, Lyads/un5;->a:Lyads/xn5;

    new-instance v0, Lyads/kn;

    invoke-direct {v0}, Lyads/kn;-><init>()V

    iput-object v0, p0, Lyads/un5;->b:Lyads/kn;

    new-instance v0, Lyads/ys;

    invoke-direct {v0}, Lyads/ys;-><init>()V

    iput-object v0, p0, Lyads/un5;->c:Lyads/ys;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lyads/un5;->d:Lyads/wn5;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final a(Landroid/widget/ImageView;Lyads/rd3;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lyads/un5;->d:Lyads/wn5;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    new-instance v2, Lyads/wn5;

    iget-object v3, p0, Lyads/un5;->b:Lyads/kn;

    iget-object v4, p0, Lyads/un5;->c:Lyads/ys;

    iget-object v5, p0, Lyads/un5;->a:Lyads/xn5;

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lyads/wn5;-><init>(Lyads/kn;Lyads/ys;Lyads/xn5;Lyads/rd3;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lyads/un5;->d:Lyads/wn5;

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, -0x1

    if-eq p0, p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p0, p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, -0x2

    if-eq p0, p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p0, p2, :cond_3

    :cond_2
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v2, p1}, Lyads/wn5;->a(Landroid/widget/ImageView;)V

    :cond_4
    return-void
.end method
