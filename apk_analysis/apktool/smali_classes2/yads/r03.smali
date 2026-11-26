.class public final Lyads/r03;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/n70;


# direct methods
.method public constructor <init>(Lyads/n70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/r03;->a:Lyads/n70;

    return-void
.end method

.method public static final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 45
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    .line 46
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 47
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    .line 48
    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 49
    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    .line 50
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 51
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method public static a(Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 44
    new-instance v0, Lkg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static final b(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 9
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method public static b(Landroid/widget/RelativeLayout;)V
    .locals 1

    new-instance v0, Ljg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static final c(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method public static c(Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 20
    new-instance v0, Lig;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lig;-><init>(I)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Window;Landroid/widget/RelativeLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    const/16 v0, 0x1e

    invoke-static {v0}, Lyads/za;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Llt0;->e(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_0
    iget-object p0, p0, Lyads/r03;->a:Lyads/n70;

    sget-object p1, Lyads/n70;->i:Lyads/n70;

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lyads/r03;->b(Landroid/widget/RelativeLayout;)V

    return-void

    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_2

    invoke-static {p2}, Lyads/r03;->a(Landroid/widget/RelativeLayout;)V

    return-void

    :cond_2
    invoke-static {p2}, Lyads/r03;->c(Landroid/widget/RelativeLayout;)V

    return-void
.end method
