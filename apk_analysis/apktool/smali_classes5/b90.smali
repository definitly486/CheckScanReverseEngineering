.class public final synthetic Lb90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;

.field public final synthetic c:Lt90$a;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;Lt90$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb90;->b:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;

    iput-object p2, p0, Lb90;->c:Lt90$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lb90;->b:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->presenter:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lb90;->c:Lt90$a;

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->onOrderCardOptionPressed(Lt90$a;)V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
