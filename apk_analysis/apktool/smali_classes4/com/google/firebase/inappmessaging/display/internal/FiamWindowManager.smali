.class public Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_TYPE:I = 0x3eb


# instance fields
.field private bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private getInsetDimensions(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getVisibleFrame(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p0

    iget p1, v1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v1, Landroid/graphics/Rect;->left:I

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget p1, p0, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private getLayoutParams(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Landroid/app/Activity;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->windowWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->windowHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->windowFlag()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x3

    const/16 v3, 0x3eb

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getInsetDimensions(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->viewWindowGravity()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0x30

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    const p0, 0x3e99999a    # 0.3f

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->viewWindowGravity()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method private getSwipeListener(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;
    .locals 8

    new-instance v4, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$1;

    invoke-direct {v4, p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$1;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;)V

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->windowWidth()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getDialogView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getDialogView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v7, p2

    move-object v6, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager$2;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$DismissCallbacks;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;)V

    return-object v0
.end method

.method private getVisibleFrame(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method private getWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;
    .locals 0

    const-string p0, "window"

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method


# virtual methods
.method public destroy(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->isFiamDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    :cond_0
    return-void
.end method

.method public isFiamDisplayed()Z
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getRootView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    return p0
.end method

.method public show(Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Landroid/app/Activity;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->isFiamDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Fiam already active. Cannot show new Fiam."

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getConfig()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getLayoutParams(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Landroid/app/Activity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getInsetDimensions(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const-string v5, "Inset (top, bottom)"

    invoke-static {v5, v3, v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    const-string v4, "Inset (left, right)"

    invoke-static {v4, v3, p2}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->canSwipeToDismiss()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->getSwipeListener(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getDialogView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->bindingWrapper:Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    return-void

    :cond_3
    :goto_0
    const-string p0, "Activity is finishing or does not have valid window token. Cannot show FIAM."

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    return-void
.end method
