.class public final Lcom/my/target/common/MyTargetActivity$b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/common/MyTargetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final synthetic f:Lcom/my/target/common/MyTargetActivity;


# direct methods
.method public constructor <init>(Lcom/my/target/common/MyTargetActivity;Lcom/my/target/common/MyTargetActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/my/target/common/MyTargetActivity$b;->f:Lcom/my/target/common/MyTargetActivity;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/common/MyTargetActivity$b;->b:Landroid/view/View;

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/common/MyTargetActivity$b;->c:Landroid/view/View;

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/common/MyTargetActivity$b;->d:Landroid/view/View;

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/common/MyTargetActivity$b;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lw7;->b(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {v0}, Lrs2;->b(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {v0}, Lmj;->b(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v0}, Lh8;->b(Landroid/graphics/Insets;)I

    move-result v0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    sget-object v0, Lo1a;->e:Lo1a;

    goto :goto_0

    :cond_0
    new-instance v4, Lo1a;

    invoke-direct {v4, v1, v2, v3, v0}, Lo1a;-><init>(IIII)V

    move-object v0, v4

    :goto_0
    iget v1, v0, Lo1a;->b:I

    iget v2, v0, Lo1a;->d:I

    iget v3, v0, Lo1a;->a:I

    iget v0, v0, Lo1a;->c:I

    iget-object v4, p0, Lcom/my/target/common/MyTargetActivity$b;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/my/target/common/MyTargetActivity$b;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/my/target/common/MyTargetActivity$b;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/my/target/common/MyTargetActivity$b;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/my/target/common/MyTargetActivity$b;->f:Lcom/my/target/common/MyTargetActivity;

    iget-object p0, p0, Lcom/my/target/common/MyTargetActivity;->c:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    invoke-static {}, Lpg;->d()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
