.class public Lyads/yt5;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final d:[[I


# instance fields
.field public final a:Landroidx/appcompat/widget/SwitchCompat;

.field public final b:[I

.field public final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [I

    const v1, -0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    const v2, 0x10100a0

    filled-new-array {v2}, [I

    move-result-object v2

    filled-new-array {v1, v2, v0}, [[I

    move-result-object v0

    sput-object v0, Lyads/yt5;->d:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/yt5;->a:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p1, 0x3

    new-array v1, p1, [I

    iput-object v1, p0, Lyads/yt5;->b:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lyads/yt5;->c:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setShowText(Z)V

    sget-object v3, Lyads/eo4;->a:Lyads/eo4;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lku8;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lku8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const v4, 0x1010030

    invoke-virtual {p0, v4, v3, v2}, Lyads/yt5;->a(ILandroid/util/TypedValue;Z)I

    move-result v4

    const v5, 0x101042a

    invoke-virtual {p0, v5, v3, v2}, Lyads/yt5;->a(ILandroid/util/TypedValue;Z)I

    move-result v5

    sget v6, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v3, v7}, Lyads/yt5;->a(ILandroid/util/TypedValue;Z)I

    move-result p0

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v3, v6, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v1, v7

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    const/16 v9, 0x4c

    invoke-static {v9, v3, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v9, 0x19

    invoke-static {v9, v3, v8, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v1, v2

    aput v5, p1, v7

    aput p0, p1, v6

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, -0x1

    invoke-static {p0, v4, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    aput p0, p1, v2

    new-instance p0, Landroid/content/res/ColorStateList;

    sget-object v2, Lyads/yt5;->d:[[I

    invoke-direct {p0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static final a(Lnl3;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lyads/yt5;Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lyads/yt5;->a:Landroidx/appcompat/widget/SwitchCompat;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p0, p0, Lyads/yt5;->a:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILandroid/util/TypedValue;Z)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p3, :cond_1

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_1
    iget p0, p2, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Lyads/yt5;->a:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lyads/yt5;->a:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final setColorOn(Ljava/lang/Integer;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lyads/yt5;->c:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lyads/yt5;->b:[I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v2, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    aput p1, v0, v1

    iget-object p1, p0, Lyads/yt5;->a:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, Lyads/yt5;->d:[[I

    iget-object v2, p0, Lyads/yt5;->b:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lyads/yt5;->a:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lyads/yt5;->c:[I

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lyads/yt5;->a:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setOnCheckedChangeListener(Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lyads/yt5;->a:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcia;

    invoke-direct {v0, p1}, Lcia;-><init>(Lnl3;)V

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
