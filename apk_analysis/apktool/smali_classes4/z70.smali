.class public final synthetic Lz70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li80;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Li80;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz70;->b:Li80;

    iput-object p2, p0, Lz70;->c:Landroid/view/View;

    iput-object p3, p0, Lz70;->d:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lz70;->b:Li80;

    iget-object v1, v0, Li80;->c:Li80$a;

    iget-object v2, v1, Li80$a;->j:Las;

    sget-object v3, Las;->ALIGN_FIXED:Las;

    iget-object v4, p0, Lz70;->c:Landroid/view/View;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    filled-new-array {v6, v6}, [I

    move-result-object v3

    iget-object v7, v0, Li80;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v7, v1, Li80$a;->k:Lzr;

    sget-object v8, Lzr;->TOP:Lzr;

    if-ne v7, v8, :cond_1

    aget v9, v3, v5

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_1

    sget-object v7, Lzr;->BOTTOM:Lzr;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v1, Li80$a;->k:Lzr;

    goto :goto_0

    :cond_1
    sget-object v9, Lzr;->BOTTOM:Lzr;

    if-ne v7, v9, :cond_2

    aget v9, v3, v5

    iget v10, v2, Landroid/graphics/Rect;->top:I

    if-le v9, v10, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v1, Li80$a;->k:Lzr;

    move-object v7, v8

    :cond_2
    :goto_0
    sget-object v8, Lzr;->START:Lzr;

    if-ne v7, v8, :cond_3

    aget v9, v3, v6

    iget v10, v2, Landroid/graphics/Rect;->right:I

    if-ge v9, v10, :cond_3

    sget-object v2, Lzr;->END:Lzr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Li80$a;->k:Lzr;

    goto :goto_1

    :cond_3
    sget-object v9, Lzr;->END:Lzr;

    if-ne v7, v9, :cond_4

    aget v3, v3, v6

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v3, v2, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v1, Li80$a;->k:Lzr;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Li80;->h()V

    :goto_2
    iget-object v2, v0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    iget-object v3, v2, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonArrow:Landroid/widget/ImageView;

    sget-object v7, Lzr;->Companion:Lzr$a;

    iget-object v8, v1, Li80$a;->k:Lzr;

    iget-boolean v9, v1, Li80$a;->w:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x2

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    sget-object v9, Lzr$a$a;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v5, :cond_7

    if-eq v9, v7, :cond_6

    goto :goto_3

    :cond_6
    sget-object v8, Lzr;->START:Lzr;

    goto :goto_3

    :cond_7
    sget-object v8, Lzr;->END:Lzr;

    :goto_3
    sget-object v9, Li80$b;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v8, v5, :cond_b

    if-eq v8, v7, :cond_a

    const/4 v5, 0x3

    if-eq v8, v5, :cond_9

    const/4 v1, 0x4

    if-ne v8, v1, :cond_8

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v3, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v1, v2, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v5, v2, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    sub-float/2addr v1, v11

    invoke-virtual {v3, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0, v4}, Li80;->e(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setY(F)V

    iget-object v0, v2, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    invoke-virtual {v3, v10}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_8
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_9
    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v5}, Landroid/view/View;->setRotation(F)V

    iget-object v2, v2, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget v1, v1, Li80$a;->h:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    add-float/2addr v2, v11

    invoke-virtual {v3, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0, v4}, Li80;->e(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    invoke-virtual {v3, v10}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v3, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v0, v4}, Li80;->d(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setX(F)V

    iget-object v0, v2, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, v1, Li80$a;->h:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v11

    invoke-virtual {v3, v0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    invoke-virtual {v3, v10}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_b
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v3, v1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v0, v4}, Li80;->d(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setX(F)V

    iget-object v0, v2, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, v2, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-float/2addr v0, v11

    invoke-virtual {v3, v0}, Landroid/view/View;->setY(F)V

    invoke-static {v3, v9}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    iget-object v0, v2, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    invoke-virtual {v3, v10}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object p0, p0, Lz70;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
