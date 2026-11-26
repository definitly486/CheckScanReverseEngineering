.class public final Lmk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public b:I

.field public final synthetic c:Landroid/view/Window;

.field public final synthetic d:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

.field public final synthetic e:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Ljava/lang/Boolean;",
            "Landroidx/core/graphics/Insets;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Window;Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmk3;->c:Landroid/view/Window;

    iput-object p2, p0, Lmk3;->d:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    iput-object p3, p0, Lmk3;->e:Lbm3;

    return-void
.end method


# virtual methods
.method public final onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    iget-object v1, p0, Lmk3;->c:Landroid/view/Window;

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-static {v1, p1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    iget-object p1, p0, Lmk3;->d:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lo16;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo16;-><init>(IIII)V

    new-instance v1, Lcf2;

    iget-object p0, p0, Lmk3;->e:Lbm3;

    invoke-direct {v1, v0, p0}, Lcf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput p1, p0, Lmk3;->b:I

    const/16 p0, 0x10

    invoke-virtual {v1, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    iget-object v1, p0, Lmk3;->c:Landroid/view/Window;

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    invoke-static {v1, p1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    iget-object p0, p0, Lmk3;->d:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_0
    return-void

    :cond_1
    iget p0, p0, Lmk3;->b:I

    invoke-virtual {v1, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
