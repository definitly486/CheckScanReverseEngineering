.class public final Lbc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzb0;


# instance fields
.field public a:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
            "*>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Lhc0$a;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lbc0;->a:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p4

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p4, v0, :cond_3

    iget-boolean p4, p1, Lhc0$a;->s:Z

    if-eqz p4, :cond_2

    new-instance p4, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;

    invoke-direct {p4, p5, p1, p2, p3}, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;-><init>(Landroid/content/Context;Lhc0$a;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;)V

    invoke-virtual {p4}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    new-instance p4, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;

    invoke-direct {p4, p5, p1, p2, p3}, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;-><init>(Landroid/content/Context;Lhc0$a;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;)V

    invoke-virtual {p4}, Landroid/app/Dialog;->show()V

    :goto_0
    iput-object p4, p0, Lbc0;->a:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;

    new-instance p1, Lac0;

    invoke-direct {p1, p0}, Lac0;-><init>(Lbc0;)V

    invoke-virtual {p4, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_3
    :goto_1
    return-void
.end method
