.class public final Lcom/my/target/ja;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lwy9;


# static fields
.field public static final j:I


# instance fields
.field public final b:Lcom/my/target/zh;

.field public final c:Landroid/widget/RelativeLayout$LayoutParams;

.field public final d:Lcom/my/target/f6;

.field public final e:Lcom/my/target/q1;

.field public final f:Ll3a;

.field public final g:Lcom/my/target/m;

.field public h:Lh14;

.field public i:Lh14;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/my/target/ja;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/my/target/zh;

    invoke-direct {v0, p1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/my/target/ja;->j:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const-string v2, "image_view"

    invoke-static {v0, v2}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/my/target/ja;->b:Lcom/my/target/zh;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x7

    invoke-virtual {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput-object v2, p0, Lcom/my/target/ja;->c:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v5, Lcom/my/target/f6;

    invoke-direct {v5, p1}, Lcom/my/target/f6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {p1, v2, v6}, Lrk3;->b(Landroid/content/Context;IF)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lkv9;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/my/target/f6;->a(Landroid/graphics/Bitmap;Z)V

    const-string v2, "close_button"

    invoke-static {v5, v2}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/my/target/ja;->d:Lcom/my/target/f6;

    new-instance v2, Lcom/my/target/q1;

    invoke-direct {v2, p1}, Lcom/my/target/q1;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/ja;->e:Lcom/my/target/q1;

    new-instance v7, Ll3a;

    invoke-direct {v7, p1}, Ll3a;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/my/target/ja;->f:Ll3a;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v7, v8}, Ll3a;->b(F)I

    move-result v7

    new-instance v8, Lcom/my/target/m;

    invoke-direct {v8, p1}, Lcom/my/target/m;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v10, 0x10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v8, p0, Lcom/my/target/ja;->g:Lcom/my/target/m;

    const-string v9, "InterstitialImageViewV2: Kotlin is here!"

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string p1, "age_bordering"

    invoke-static {v2, p1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    .line 22
    return-object p0
.end method

.method public final a(Lcom/my/target/q;Lyv9;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/my/target/ja;->g:Lcom/my/target/m;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/my/target/q;->a:Lh14;

    iget-object p1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/my/target/m;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b(Lh14;Lh14;Lh14;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/ja;->i:Lh14;

    iput-object p2, p0, Lcom/my/target/ja;->h:Lh14;

    if-eqz p3, :cond_0

    iget-object p1, p3, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iget-object p3, p0, Lcom/my/target/ja;->d:Lcom/my/target/f6;

    invoke-virtual {p3, p1, p2}, Lcom/my/target/f6;->a(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    iget-object p2, p0, Lcom/my/target/ja;->c:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/ja;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ll3a;->q(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_4

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    int-to-float v1, v1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/ja;->i:Lh14;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ja;->h:Lh14;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/my/target/ja;->h:Lh14;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ja;->i:Lh14;

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/my/target/ja;->b:Lcom/my/target/zh;

    invoke-virtual {p0, v0}, Lcom/my/target/zh;->setImageData(Lh14;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getCloseButton()Lcom/my/target/f6;
    .locals 0

    iget-object p0, p0, Lcom/my/target/ja;->d:Lcom/my/target/f6;

    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/ja;->b:Lcom/my/target/zh;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/my/target/ja;->c()V

    return-void
.end method

.method public setAgeRestrictions(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/my/target/ja;->e:Lcom/my/target/q1;

    if-nez v0, :cond_0

    const v0, -0x777778

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/my/target/q1;->a(II)V

    const/high16 v0, 0x40000000    # 2.0f

    iget-object p0, p0, Lcom/my/target/ja;->f:Ll3a;

    invoke-virtual {p0, v0}, Ll3a;->b(F)I

    move-result v0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const v0, -0x111112

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p0, v3}, Ll3a;->b(F)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/my/target/q1;->a(II)V

    const/high16 p0, 0x66000000

    invoke-virtual {v1, p0}, Lcom/my/target/q1;->setBackgroundColor(I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
