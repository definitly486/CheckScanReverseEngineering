.class public final Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->showBankCardOptionsInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lt90;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$c;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lt90;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lt90;->f()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt90$a;

    invoke-virtual {p1}, Lt90$a;->a()J

    move-result-wide v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$c;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->access$getBankId$p(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
