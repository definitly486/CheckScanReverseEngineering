.class public final Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew<",
        "Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;",
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
.field public final c:Lbn2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;->d:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;-><init>(Landroid/content/Context;)V

    new-instance p1, Lbn2;

    const-class v0, Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;

    invoke-direct {p1, v0, p0}, Lbn2;-><init>(Ljava/lang/Class;Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;->c:Lbn2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;->d:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;->c:Lbn2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lbn2;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;->a()Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog$a;-><init>(Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01001f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;->a()Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;->viewSelection:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;->a()Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;->viewSelection:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;->onDetachedFromWindow()V

    return-void
.end method
