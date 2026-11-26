.class public final Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;",
        ">;"
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
.field public final c:Lbh6;

.field public final d:Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$f;

.field public final e:Lgl4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Lbh6;Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$f;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0d0060

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;->c:Lbh6;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;->d:Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$f;

    new-instance p1, Lgl4;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;

    invoke-direct {p1, p2}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;->e:Lgl4;

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;->f:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;->e:Lgl4;

    invoke-virtual {v0, p0, p1}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;->c:Lbh6;

    instance-of v1, v0, Lbh6$a;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    check-cast v0, Lbh6$a;

    iget-object v3, v0, Lbh6$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v1

    invoke-virtual {v1}, Lee0;->i()Lee0;

    move-result-object v1

    check-cast v1, Lh37;

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->tvResultNoCashback:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->groupCashback:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->tvResult:Landroid/widget/TextView;

    iget-object v0, v0, Lbh6$a;->a:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f14004b

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lbh6$c;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    check-cast v0, Lbh6$c;

    iget-object v0, v0, Lbh6$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v0

    invoke-virtual {v0}, Lee0;->i()Lee0;

    move-result-object v0

    check-cast v0, Lh37;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->tvResultNoCashback:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->groupCashback:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->tvResultNoCashback:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->groupCashback:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_0
    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog$a;-><init>(Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->btnMore:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog$b;-><init>(Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;->btnBack:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog$c;-><init>(Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
