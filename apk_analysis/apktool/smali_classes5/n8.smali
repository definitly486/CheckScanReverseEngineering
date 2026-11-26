.class public final synthetic Ln8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln8;->b:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->h:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$a;

    iget-object p0, p0, Ln8;->b:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->o()Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->deleteCheque()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->o()Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->onBackPressed()V

    return-void
.end method
