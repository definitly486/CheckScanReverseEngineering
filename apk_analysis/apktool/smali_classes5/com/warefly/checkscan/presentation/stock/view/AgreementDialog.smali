.class public final Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/stock/view/AgreementView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/stock/view/AgreementView;"
    }
.end annotation


# static fields
.field public static final synthetic g:[Lze4;
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
.field public final d:Ljava/lang/String;

.field public final e:Lcl4;

.field public final f:Lud9;

.field public presenter:Lcom/warefly/checkscan/presentation/stock/presenter/AgreementPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->d:Ljava/lang/String;

    sget-object p1, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance p2, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog$a;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog$a;-><init>(Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->e:Lcl4;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->presenter:Lcom/warefly/checkscan/presentation/stock/presenter/AgreementPresenter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/stock/presenter/AgreementPresenter;->onShown()V

    sget-object p1, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->f:Lud9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;->btnBackAgreement:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lrb;

    invoke-direct {v3, p0, v0}, Lrb;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;->cbAgreement:Landroid/widget/CheckBox;

    new-instance v2, Lqb;

    invoke-direct {v2, p1}, Lqb;-><init>(Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;->btnAgreementContinue:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lsb;

    invoke-direct {v2, p0, v0}, Lsb;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/stock/presenter/AgreementPresenter;
    .locals 0

    new-instance p0, Lcom/warefly/checkscan/presentation/stock/presenter/AgreementPresenter;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/stock/presenter/AgreementPresenter;-><init>()V

    return-object p0
.end method

.method public final showAgreement()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->e:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv05;

    sget-object v1, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->g:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->f:Lud9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;->cbAgreement:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f140077

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
