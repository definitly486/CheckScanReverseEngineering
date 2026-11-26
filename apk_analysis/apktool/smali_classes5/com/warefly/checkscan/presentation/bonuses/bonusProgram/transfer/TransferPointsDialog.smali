.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew<",
        "Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;"
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
.field public final c:J

.field public final d:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$a;

.field public final e:Lbn2;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;-><init>(Landroid/content/Context;)V

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->c:J

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->d:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$a;

    new-instance p1, Lbn2;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;

    invoke-direct {p1, p2, p0}, Lbn2;-><init>(Ljava/lang/Class;Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->e:Lbn2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->f:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->e:Lbn2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lbn2;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lzz8;

    invoke-direct {p1, p0}, Lzz8;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->a()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->presenter:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->onOpened(J)V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;

    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    const-class v1, Lio0;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio0;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;-><init>(Lio0;)V

    return-object v0
.end method

.method public final setLoadCodeEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->a()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->btnLoadCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->btnLoadCode:Landroid/widget/TextView;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0604a3

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object p1, v0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->btnLoadCode:Landroid/widget/TextView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f06001d

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->btnLoadCode:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showCode(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->a()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvCode:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showCodeExpired()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->a()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvCode:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvTimeExpire:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1400c4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showCodeExpiringTime(JJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->a()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvTimeExpire:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1400c7

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showCouldntLoadCode()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->a()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvCode:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvTimeExpire:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1400c6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showLoading(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->a()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;

    move-result-object p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->pbLoadingCode:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvCode:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvTimeExpire:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->pbLoadingCode:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvCode:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;->tvTimeExpire:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-void
.end method
