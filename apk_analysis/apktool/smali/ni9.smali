.class public final synthetic Lni9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(IIIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lni9;->b:I

    iput p2, p0, Lni9;->c:I

    iput p3, p0, Lni9;->d:I

    iput p4, p0, Lni9;->e:I

    iput-boolean p5, p0, Lni9;->f:Z

    iput-boolean p6, p0, Lni9;->g:Z

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, p0, Lni9;->b:I

    add-int/2addr v2, v1

    iget v1, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, p0, Lni9;->c:I

    add-int/2addr v3, v1

    iget v1, v0, Landroidx/core/graphics/Insets;->right:I

    iget v4, p0, Lni9;->d:I

    add-int/2addr v4, v1

    iget-boolean v1, p0, Lni9;->f:Z

    if-eqz v1, :cond_0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lni9;->e:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p0, p0, Lni9;->g:Z

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0

    :cond_1
    return-object p2
.end method
