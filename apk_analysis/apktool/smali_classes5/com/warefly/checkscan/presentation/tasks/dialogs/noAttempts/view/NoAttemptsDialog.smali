.class public final Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskNoAttemptsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;"
    }
.end annotation


# static fields
.field public static final d:Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$a;

.field public static final synthetic e:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/lang/String;


# instance fields
.field public final c:Lgl4;

.field public presenter:Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskNoAttemptsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->e:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->d:Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$a;

    const-string v0, "DISMISSED_KEY"

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d006d

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskNoAttemptsBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->c:Lgl4;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->f:Ljava/lang/String;

    invoke-static {}, Landroidx/core/os/BundleKt;->bundleOf()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/fragment/app/FragmentKt;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TASK_ID_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DAILY_TASK_NO_ATTEMPTS_KEY"

    const-class v4, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    invoke-static {v2, v3, v4}, Landroidx/core/os/BundleCompat;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    if-eqz v2, :cond_0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v3, Lup8;

    const/4 v4, 0x0

    invoke-static {v3, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lup8;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;-><init>(ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;Lup8;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "noAttempts can not be null"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showContent(Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->e:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->c:Lgl4;

    invoke-virtual {v1, p0, v0}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskNoAttemptsBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskNoAttemptsBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskNoAttemptsBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v2, v0, Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskNoAttemptsBinding;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, v0, Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskNoAttemptsBinding;->btnAction:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;)V

    invoke-direct {p1, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
