.class public Lcom/my/target/nativeads/views/NativeBannerAdView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/nativeads/views/NativeBannerAdView$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/my/target/q1;

.field public final c:Landroid/widget/TextView;

.field public final d:Lcom/my/target/nativeads/views/IconAdView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Lcom/my/target/common/views/StarsRatingView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/Button;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/LinearLayout;

.field public final l:Landroid/widget/LinearLayout;

.field public final m:Lcom/my/target/nativeads/views/NativeBannerAdView$a;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 600
    invoke-direct {p0, p1, v0}, Lcom/my/target/nativeads/views/NativeBannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 599
    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/nativeads/views/NativeBannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Lcom/my/target/q1;

    invoke-direct {v2, v1}, Lcom/my/target/q1;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->b:Lcom/my/target/q1;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->c:Landroid/widget/TextView;

    new-instance v4, Lcom/my/target/nativeads/views/IconAdView;

    invoke-direct {v4, v1}, Lcom/my/target/nativeads/views/IconAdView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->d:Lcom/my/target/nativeads/views/IconAdView;

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->e:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->f:Landroid/widget/TextView;

    new-instance v7, Lcom/my/target/common/views/StarsRatingView;

    invoke-direct {v7, v1}, Lcom/my/target/common/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->g:Lcom/my/target/common/views/StarsRatingView;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->h:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->j:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->i:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->k:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->l:Landroid/widget/LinearLayout;

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v14, Ll3a;

    invoke-direct {v14, v1}, Ll3a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a04f7

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0a04f9

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0a04f8

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0a04fe

    invoke-virtual {v4, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0a0501

    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0a04fd

    invoke-virtual {v6, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0a0500

    invoke-virtual {v7, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0a0502

    invoke-virtual {v8, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0a04fc

    invoke-virtual {v9, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0a04fa

    invoke-virtual {v10, v1}, Landroid/view/View;->setId(I)V

    const-string v1, "votes_text"

    invoke-static {v8, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v14, v1}, Ll3a;->b(F)I

    move-result v15

    invoke-virtual {v0, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 p2, v4

    invoke-virtual {v14, v15}, Ll3a;->b(F)I

    move-result v4

    iput v4, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->o:I

    invoke-virtual {v14, v1}, Ll3a;->b(F)I

    move-result v4

    iput v4, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->r:I

    const/high16 v15, 0x42580000    # 54.0f

    invoke-virtual {v14, v15}, Ll3a;->b(F)I

    move-result v15

    iput v15, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->q:I

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-virtual {v14, v15}, Ll3a;->b(F)I

    move-result v15

    iput v15, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->s:I

    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual {v14, v15}, Ll3a;->b(F)I

    move-result v1

    const/high16 v15, 0x41200000    # 10.0f

    move-object/from16 v16, v13

    invoke-virtual {v14, v15}, Ll3a;->b(F)I

    move-result v13

    const/high16 v15, 0x42200000    # 40.0f

    invoke-virtual {v14, v15}, Ll3a;->b(F)I

    move-result v15

    iput v15, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->n:I

    move-object/from16 v17, v11

    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual {v14, v15}, Ll3a;->b(F)I

    move-result v11

    iput v11, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->p:I

    const/4 v11, 0x0

    invoke-virtual {v10, v13, v11, v13, v11}, Landroid/view/View;->setPadding(IIII)V

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setMaxEms(I)V

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setLines(I)V

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v15, -0xff912c

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v15, 0x2

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v10, v15, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v11, -0x1

    const v15, -0x3a1508

    invoke-static {v0, v11, v15}, Ll3a;->h(Landroid/view/View;II)V

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move/from16 v19, v1

    move-object/from16 v18, v12

    const/4 v12, 0x0

    filled-new-array {v12, v12}, [I

    move-result-object v1

    invoke-direct {v11, v15, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v14, v1}, Ll3a;->b(F)I

    move-result v12

    const v1, -0xff912c

    invoke-virtual {v11, v12, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v14, v12}, Ll3a;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    const v12, -0x3a1508

    filled-new-array {v12, v12}, [I

    move-result-object v12

    invoke-direct {v1, v15, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-virtual {v14, v12}, Ll3a;->b(F)I

    move-result v12

    const v15, -0xff912c

    invoke-virtual {v1, v12, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v14, v12}, Ll3a;->b(F)I

    move-result v15

    int-to-float v12, v15

    invoke-virtual {v1, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v15, 0x10100a7

    filled-new-array {v15}, [I

    move-result-object v15

    invoke-virtual {v12, v15, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v12, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v11, -0x666667

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v11, -0xcccccd

    invoke-virtual {v12, v1, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v14, v11}, Ll3a;->b(F)I

    move-result v11

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v12, 0x11

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v11, v15, v15, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v15}, Lcom/my/target/q1;->setBackgroundColor(I)V

    const/16 v11, 0xa

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxEms(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLines(I)V

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x2

    invoke-virtual {v2, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const v11, -0x666667

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v3, v4, v15, v15, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v4, -0x1000000

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v5, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v6, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v8, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v14, v1}, Ll3a;->b(F)I

    move-result v1

    invoke-virtual {v8, v1, v15, v15, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    move/from16 v1, v19

    invoke-virtual {v7, v1}, Lcom/my/target/common/views/StarsRatingView;->setStarSize(I)V

    move-object/from16 v1, v18

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v11, v17

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v12, v16

    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/my/target/nativeads/views/NativeBannerAdView$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/my/target/nativeads/views/NativeBannerAdView;->m:Lcom/my/target/nativeads/views/NativeBannerAdView$a;

    sget v0, Lmu9;->a:I

    or-int/lit16 v0, v0, 0x80

    sput v0, Lmu9;->a:I

    return-void
.end method


# virtual methods
.method public getAdvertisingTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public getAgeRestrictionTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->b:Lcom/my/target/q1;

    return-object p0
.end method

.method public getCtaButtonView()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->i:Landroid/widget/Button;

    return-object p0
.end method

.method public getDisclaimerTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDomainTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public getIconImageView()Lcom/my/target/nativeads/views/IconAdView;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->d:Lcom/my/target/nativeads/views/IconAdView;

    return-object p0
.end method

.method public getIconView()Lcom/my/target/nativeads/views/IconAdView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->d:Lcom/my/target/nativeads/views/IconAdView;

    return-object p0
.end method

.method public getNativeBannerAdViewBinder()Lei5;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->m:Lcom/my/target/nativeads/views/NativeBannerAdView$a;

    return-object p0
.end method

.method public getStarsRatingView()Lcom/my/target/common/views/StarsRatingView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->g:Lcom/my/target/common/views/StarsRatingView;

    return-object p0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method public getVotesTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget-object p3, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->l:Landroid/widget/LinearLayout;

    invoke-static {p3, p2, p1}, Ll3a;->r(Landroid/view/View;II)V

    iget-object p4, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->d:Lcom/my/target/nativeads/views/IconAdView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    iget-object v0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->i:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    filled-new-array {p5, v1, v3}, [I

    move-result-object p5

    invoke-static {p5}, Ll3a;->e([I)I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->p:I

    add-int/2addr v1, v3

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-static {v4}, Ll3a;->e([I)I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, v4

    iget v4, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->s:I

    if-ge p3, v4, :cond_0

    add-int v1, p2, v4

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p5, p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v1

    invoke-static {p4, p2, p1}, Ll3a;->r(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p5, p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr p3, p0

    invoke-static {v2, p2, p3}, Ll3a;->m(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p5, p0

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p5, v1

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p0

    add-int/2addr p0, v3

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-static {p0}, Ll3a;->e([I)I

    move-result p0

    invoke-static {v0, p5, p0}, Ll3a;->r(Landroid/view/View;II)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->r:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->l:Landroid/widget/LinearLayout;

    const/high16 v3, -0x80000000

    invoke-static {v2, v1, p2, v3}, Ll3a;->i(Landroid/view/View;III)V

    iget v1, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->q:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v5, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->d:Lcom/my/target/nativeads/views/IconAdView;

    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->n:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v6, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->i:Landroid/widget/Button;

    invoke-virtual {v6, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->p:I

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr p2, v4

    iget v4, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->o:I

    sub-int/2addr p2, v4

    iget-object v4, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->k:Landroid/widget/LinearLayout;

    invoke-static {v4, v0, p2, v3}, Ll3a;->i(Landroid/view/View;III)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Ll3a;->e([I)I

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/my/target/nativeads/views/NativeBannerAdView;->s:I

    if-ge v1, v0, :cond_0

    move p2, v0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Ll3a;->e([I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setupView(Ldi5;)V
    .locals 0

    return-void
.end method
