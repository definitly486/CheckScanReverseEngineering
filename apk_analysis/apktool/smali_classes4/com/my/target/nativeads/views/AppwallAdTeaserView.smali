.class public Lcom/my/target/nativeads/views/AppwallAdTeaserView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final b:Ll3a;

.field public final c:Lcom/my/target/zh;

.field public final d:Lcom/my/target/zh;

.field public final e:Lcom/my/target/zh;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroid/widget/TextView;

.field public final i:Lcom/my/target/common/views/StarsRatingView;

.field public final j:Landroid/widget/TextView;

.field public final k:Lcom/my/target/zh;

.field public final l:Landroid/widget/TextView;

.field public final m:Lcom/my/target/zh;

.field public n:Lci5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x24

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    new-instance v3, Lcom/my/target/zh;

    invoke-direct {v3, v1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->e:Lcom/my/target/zh;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->g:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->f:Landroid/widget/TextView;

    new-instance v6, Lcom/my/target/zh;

    invoke-direct {v6, v1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->m:Lcom/my/target/zh;

    new-instance v7, Lcom/my/target/zh;

    invoke-direct {v7, v1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->d:Lcom/my/target/zh;

    new-instance v8, Lcom/my/target/zh;

    invoke-direct {v8, v1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->k:Lcom/my/target/zh;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->l:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->h:Landroid/widget/TextView;

    new-instance v11, Lcom/my/target/common/views/StarsRatingView;

    invoke-direct {v11, v1}, Lcom/my/target/common/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->i:Lcom/my/target/common/views/StarsRatingView;

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->j:Landroid/widget/TextView;

    new-instance v13, Lcom/my/target/zh;

    invoke-direct {v13, v1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->c:Lcom/my/target/zh;

    new-instance v14, Ll3a;

    invoke-direct {v14, v1}, Ll3a;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->b:Ll3a;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v14, v1}, Ll3a;->b(F)I

    move-result v1

    new-instance v15, Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v16, v12

    new-instance v12, Landroid/graphics/drawable/shapes/RoundRectShape;

    int-to-float v1, v1

    move/from16 p1, v1

    const/16 v1, 0x8

    new-array v1, v1, [F

    move-object/from16 v17, v11

    const/4 v11, 0x0

    aput p1, v1, v11

    const/4 v11, 0x1

    aput p1, v1, v11

    const/4 v11, 0x2

    aput p1, v1, v11

    const/4 v11, 0x3

    aput p1, v1, v11

    const/16 v18, 0x4

    aput p1, v1, v18

    const/16 v18, 0x5

    aput p1, v1, v18

    const/16 v18, 0x6

    aput p1, v1, v18

    const/16 v18, 0x7

    aput p1, v1, v18

    const/4 v11, 0x0

    invoke-direct {v12, v1, v11, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v15, v12}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v14, v1}, Ll3a;->b(F)I

    move-result v11

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v14, v12}, Ll3a;->b(F)I

    move-result v12

    const/high16 v1, 0x42540000    # 53.0f

    invoke-virtual {v14, v1}, Ll3a;->b(F)I

    move-result v1

    move-object/from16 v19, v10

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v10

    move/from16 v20, v10

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v10

    move/from16 v21, v10

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v10

    move/from16 v22, v10

    const/4 v10, -0x1

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v23, v1, v12

    move/from16 v24, v2

    add-int v2, v23, v12

    add-int v23, v1, v11

    move-object/from16 v25, v9

    add-int v9, v23, v11

    invoke-direct {v10, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12, v11, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v14, v2}, Ll3a;->b(F)I

    move-result v3

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x42640000    # 57.0f

    invoke-virtual {v14, v3}, Ll3a;->b(F)I

    move-result v3

    iput v3, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v14, v3}, Ll3a;->b(F)I

    move-result v10

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v13, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v12, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v9, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget-object v12, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v14, v3}, Ll3a;->b(F)I

    move-result v3

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v14, v13}, Ll3a;->b(F)I

    move-result v15

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v3, v13, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v3, 0x41500000    # 13.0f

    const/4 v13, 0x2

    invoke-virtual {v5, v13, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v13, 0x31

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v14, v2}, Ll3a;->b(F)I

    move-result v9

    invoke-virtual {v14, v2}, Ll3a;->b(F)I

    move-result v13

    invoke-direct {v5, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x1

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x41980000    # 19.0f

    invoke-virtual {v14, v5}, Ll3a;->b(F)I

    move-result v5

    invoke-direct {v4, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v14, v5}, Ll3a;->b(F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v1, v25

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v4, v24

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x42860000    # 67.0f

    invoke-virtual {v14, v5}, Ll3a;->b(F)I

    move-result v5

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v13, v5, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    move/from16 v5, v22

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x42b60000    # 91.0f

    invoke-virtual {v14, v7}, Ll3a;->b(F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v14, v8}, Ll3a;->b(F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v14, v3}, Ll3a;->b(F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v6, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v7}, Ll3a;->b(F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v5, v20

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v14, v7}, Ll3a;->b(F)I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v14, v6}, Ll3a;->b(F)I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v14, v2}, Ll3a;->b(F)I

    move-result v2

    move-object/from16 v6, v17

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v13, v13, v2}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v14, v2}, Ll3a;->b(F)I

    move-result v7

    int-to-float v2, v7

    invoke-virtual {v6, v2}, Lcom/my/target/common/views/StarsRatingView;->setStarsPadding(F)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v14, v2}, Ll3a;->b(F)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/my/target/common/views/StarsRatingView;->setStarSize(I)V

    move/from16 v2, v21

    invoke-virtual {v6, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x3

    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v14, v2}, Ll3a;->b(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object/from16 v2, v16

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v14, v5}, Ll3a;->b(F)I

    move-result v5

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v5, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v13, 0x2

    invoke-virtual {v2, v13, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBanner()Lci5;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->n:Lci5;

    return-object p0
.end method

.method public getBannerIconImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->e:Lcom/my/target/zh;

    return-object p0
.end method

.method public getCoinsCountTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public getCoinsIconImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->m:Lcom/my/target/zh;

    return-object p0
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method public getNotificationImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->c:Lcom/my/target/zh;

    return-object p0
.end method

.method public getOpenImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->d:Lcom/my/target/zh;

    return-object p0
.end method

.method public getStarsRatingView()Lcom/my/target/common/views/StarsRatingView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->i:Lcom/my/target/common/views/StarsRatingView;

    return-object p0
.end method

.method public getStatusIconImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->k:Lcom/my/target/zh;

    return-object p0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method public getVotesCountTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method public setNativeAppwallBanner(Lci5;)V
    .locals 4

    iput-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->n:Lci5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->e:Lcom/my/target/zh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/my/target/zh;->setImageData(Lh14;)V

    iget-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->c:Lcom/my/target/zh;

    invoke-virtual {p1, v0}, Lcom/my/target/zh;->setImageData(Lh14;)V

    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->d:Lcom/my/target/zh;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->k:Lcom/my/target/zh;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->i:Lcom/my/target/common/views/StarsRatingView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object p0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->b:Ll3a;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p0, v3}, Ll3a;->b(F)I

    move-result p0

    invoke-virtual {v1, p1, v0, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setViewed(Z)V
    .locals 0

    return-void
.end method
