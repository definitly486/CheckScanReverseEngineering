.class public final Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/databinding/LayoutSplashLoadingBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lgl4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/LayoutSplashLoadingBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;->d:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d029c

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/databinding/LayoutSplashLoadingBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;->c:Lgl4;

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f1501f5

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const v0, 0x7f1501f5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;->d:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;->c:Lgl4;

    invoke-virtual {v0, p0, p1}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/databinding/LayoutSplashLoadingBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutSplashLoadingBinding;->lottieSplashAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog$a;-><init>(Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;)V

    iget-object p1, p1, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p1, p1, Lox4;->c:Lay4;

    invoke-virtual {p1, v0}, Lod0;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method
