.class public final Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;,
        Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;
    }
.end annotation


# instance fields
.field public b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

.field public c:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

.field public final d:Landroid/graphics/drawable/ShapeDrawable;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/text/TextPaint;

.field public final g:Landroid/graphics/RectF;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Rect;

.field public j:I

.field public final k:Landroid/graphics/Rect;

.field public final l:Landroid/graphics/Rect;

.field public m:Landroid/graphics/drawable/Drawable;

.field public final n:Landroid/graphics/drawable/Drawable;

.field public final o:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0404f3

    .line 192
    invoke-direct {p0, p1, p2, v0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f15015b

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f06001d

    invoke-static {p3, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p3

    iput-object p3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->d:Landroid/graphics/drawable/ShapeDrawable;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->e:Landroid/graphics/Paint;

    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lpl2;->d(F)F

    move-result v3

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09000d

    invoke-static {v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object p3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->f:Landroid/text/TextPaint;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->g:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->h:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->i:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->k:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802ce

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->n:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->o:Landroid/graphics/Rect;

    sget-object v3, Lqw6;->a:[I

    const v4, 0x7f0404f3

    invoke-virtual {p1, p2, v3, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p1, v2}, Lzd3;->e(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    :cond_0
    iput-object v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->c:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->a()Landroid/graphics/LinearGradient;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final getOnlyProfilePicCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;
    .locals 3

    const/16 p0, 0x28

    invoke-static {p0}, Lpl2;->e(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    int-to-float p0, p0

    new-instance v1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2, p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;-><init>(FFFF)V

    return-object v1
.end method

.method private final getProfilePicCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;

    if-eqz v1, :cond_0

    new-instance p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;-><init>(FFFF)V

    return-object p0

    :cond_0
    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->getProfilePicSubscriptionCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->getOnlyProfilePicCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$c;->a:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$c;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->getOnlyProfilePicCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$b;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->getProfilePicImageSubscriptionCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final getProfilePicImageSubscriptionCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;
    .locals 4

    const/16 p0, 0x28

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/16 v1, 0x20

    invoke-static {v1}, Lpl2;->e(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    sub-float/2addr p0, v2

    invoke-static {v1}, Lpl2;->e(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p0

    const/16 v2, 0xc

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    const/16 v3, 0x18

    invoke-static {v3}, Lpl2;->e(I)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x8

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1}, Lpl2;->e(I)I

    move-result v1

    add-int/2addr v1, v2

    new-instance v3, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;-><init>(FFFF)V

    return-object v3
.end method

.method private final getProfilePicSubscriptionCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;
    .locals 4

    const/16 v0, 0x28

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/16 v2, 0x20

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->j:I

    int-to-float p0, p0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lpl2;->d(F)F

    move-result v3

    add-float/2addr v3, p0

    const/16 p0, 0x8

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v3, p0

    invoke-static {v2}, Lpl2;->e(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v3

    new-instance v2, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    invoke-direct {v2, v0, v1, v3, p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;-><init>(FFFF)V

    return-object v2
.end method


# virtual methods
.method public final a()Landroid/graphics/LinearGradient;
    .locals 9

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->e()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v0, v2

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    invoke-virtual {v0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;->d()I

    move-result v6

    iget-object p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    invoke-virtual {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;->c()I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->g:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->e()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    const/16 v1, 0x28

    invoke-static {v1}, Lpl2;->e(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lpl2;->d(F)F

    move-result v2

    invoke-static {v1}, Lpl2;->d(F)F

    move-result v1

    iget-object p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->getProfilePicCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    move-result-object v0

    iget v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->c:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->k:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->d:F

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->a:F

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->b:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->c:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->c:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Ljava/lang/String;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->f:Landroid/text/TextPaint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p2, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lpl2;->d(F)F

    move-result v0

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    sget-object p3, Lj59;->a:Lj59;

    invoke-virtual {p1, p2, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final e()I
    .locals 10

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;

    const/16 v2, 0xc

    const/high16 v3, 0x41400000    # 12.0f

    iget-object v4, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->i:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->f:Landroid/text/TextPaint;

    if-eqz v1, :cond_0

    const-string p0, "\u0412\u043e\u0439\u0442\u0438"

    invoke-static {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v6, v0, v5, p0, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-static {v3}, Lpl2;->d(F)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v1

    :goto_0
    add-int/2addr p0, v0

    add-int/2addr p0, v1

    return p0

    :cond_0
    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-eqz v1, :cond_2

    check-cast v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;

    iget-object v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v2, v5, v1, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->j:I

    invoke-static {v3}, Lpl2;->d(F)F

    move-result v1

    float-to-int v1, v1

    iget p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->j:I

    iget-object v0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->f:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v9}, Lpl2;->e(I)I

    move-result v0

    :goto_1
    invoke-static {v8}, Lpl2;->e(I)I

    move-result v2

    invoke-static {v7}, Lpl2;->e(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, p0

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    return v1

    :cond_2
    instance-of p0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;

    const/16 v1, 0x28

    if-eqz p0, :cond_3

    invoke-static {v1}, Lpl2;->e(I)I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$c;->a:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$c;

    invoke-static {v0, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1}, Lpl2;->e(I)I

    move-result p0

    return p0

    :cond_4
    instance-of p0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$b;

    if-eqz p0, :cond_5

    invoke-static {v2}, Lpl2;->e(I)I

    move-result p0

    const/16 v0, 0x18

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    invoke-static {v8}, Lpl2;->e(I)I

    move-result v1

    invoke-static {v7}, Lpl2;->e(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v9}, Lpl2;->e(I)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_5
    invoke-static {}, Lme0;->e()V

    return v5
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b(Landroid/graphics/Canvas;)V

    const-string v0, "\u0412\u043e\u0439\u0442\u0438"

    invoke-static {v0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->d(Landroid/graphics/Canvas;Ljava/lang/String;IZ)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;

    const/16 v2, 0x28

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b(Landroid/graphics/Canvas;)V

    check-cast v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;

    iget-object v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->c:I

    iget-boolean v5, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->g:Z

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->d(Landroid/graphics/Canvas;Ljava/lang/String;IZ)V

    iget-object v0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->getProfilePicCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    move-result-object v1

    iget-object v4, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->c:F

    iget v1, v1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->d:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/16 v2, 0x20

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    const/4 v5, 0x2

    invoke-static {v5}, Lpl2;->e(I)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v2, v5

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->c(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->c(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    instance-of v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$b;

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->n:Landroid/graphics/drawable/Drawable;

    :cond_4
    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lpl2;->e(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/16 v2, 0x18

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->l:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0xc

    invoke-static {v1}, Lpl2;->e(I)I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->c(Landroid/graphics/Canvas;)V

    return-void

    :cond_6
    sget-object v1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$c;->a:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$c;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->getProfilePicCoordinates()Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;

    move-result-object v0

    iget v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->c:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->o:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->d:F

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget v1, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->a:F

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$a;->b:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->d:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->e()I

    move-result p1

    const/16 p2, 0x28

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setBadgeType(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->c:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    iput-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->m:Landroid/graphics/drawable/Drawable;

    instance-of v1, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$b;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const p1, 0x7f08020f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->setProfilePic(Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    instance-of v1, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$b;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$b;

    :cond_4
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p1

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object p1

    iget-object v0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p1

    const v0, 0x7f0802ce

    invoke-virtual {p1, v0}, Lee0;->h(I)Lee0;

    move-result-object p1

    check-cast p1, Lh37;

    new-instance v0, Lvk6;

    invoke-direct {v0, p0}, Lvk6;-><init>(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;)V

    invoke-virtual {p1, v0, p1}, Lh37;->K(Lwk8;Lee0;)V

    :goto_2
    iget-object p1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->a()Landroid/graphics/LinearGradient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setProfilePic(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;

    instance-of v0, v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p1

    const v0, 0x7f08020f

    invoke-virtual {p1, v0}, Lee0;->h(I)Lee0;

    move-result-object p1

    check-cast p1, Lh37;

    new-instance v0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$c;-><init>(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;)V

    invoke-virtual {p1, v0, p1}, Lh37;->K(Lwk8;Lee0;)V

    :cond_0
    return-void
.end method
