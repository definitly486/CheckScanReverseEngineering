.class public final Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment<",
        "Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog$a;

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


# instance fields
.field public final c:Lol4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;->e:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;->d:Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d006c

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;-><init>(I)V

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;->c:Lol4;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x7f1501cb

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const-string v1, "DAILY_BONUS_KEY"

    if-lt p2, v0, :cond_0

    const-class p2, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of p2, p1, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;

    :goto_0
    check-cast p1, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;->e:[Lze4;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;->c:Lol4;

    invoke-virtual {v0, p0, p2}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;

    iget-object v0, p2, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;->ivPrize:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p2, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;->btnPositive:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;->btnPositive:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;->incldConfetti:Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;->lottieConfetti:Lcom/airbnb/lottie/LottieAnimationView;

    const p1, 0x7f13000f

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;->incldConfetti:Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkv1;->a(Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;)V

    :cond_2
    return-void
.end method
