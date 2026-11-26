.class public final Lyads/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lyads/uc;

.field public final c:Lyads/yb;

.field public final d:Lyads/tc;

.field public final e:Lyads/ic;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lyads/uc;Lyads/yb;)V
    .locals 3

    new-instance v0, Lyads/tc;

    invoke-direct {v0}, Lyads/tc;-><init>()V

    new-instance v1, Lyads/ic;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, Lyads/ic;-><init>(Landroid/app/Activity;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bc;->a:Landroid/app/Activity;

    iput-object p2, p0, Lyads/bc;->b:Lyads/uc;

    iput-object p3, p0, Lyads/bc;->c:Lyads/yb;

    iput-object v0, p0, Lyads/bc;->d:Lyads/tc;

    iput-object v1, p0, Lyads/bc;->e:Lyads/ic;

    return-void
.end method

.method public static final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 33
    new-instance v0, Lf2;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lf2;-><init>(I)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method
