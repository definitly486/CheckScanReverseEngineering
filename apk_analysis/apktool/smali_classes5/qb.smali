.class public final synthetic Lqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqb;->a:Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;->g:[Lze4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lqb;->a:Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;->btnAgreementContinue:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
