.class public final Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Lze4;
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
.field public final d:Lhn8;

.field public final e:Lud9;

.field public presenter:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/presenter/TaskErrorPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhn8;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;->d:Lhn8;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;->e:Lud9;

    return-void
.end method


# virtual methods
.method public final providePresenter()Lcom/warefly/checkscan/presentation/tasks/dialogs/error/presenter/TaskErrorPresenter;
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/presenter/TaskErrorPresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;->d:Lhn8;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/presenter/TaskErrorPresenter;-><init>(Lhn8;)V

    return-object v0
.end method

.method public final showError(Lhn8;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;->f:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;->e:Lud9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    const v2, 0x7f0801f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v1

    iget-object v2, v0, Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, v0, Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lhn8;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v2, p1, Lhn8;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;->btnOk:Landroid/widget/TextView;

    iget-object p1, p1, Lhn8;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;->btnOk:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
