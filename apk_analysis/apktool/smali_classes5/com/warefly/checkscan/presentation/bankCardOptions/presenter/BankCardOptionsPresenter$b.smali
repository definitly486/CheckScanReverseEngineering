.class public final Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$b;
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
        "Lwb0;",
        "Lwr5<",
        "+",
        "Lt90;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$b;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lwb0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lwb0;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    const-string p1, "source is null"

    invoke-static {p0, p1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljr5;

    invoke-direct {p1, p0}, Ljr5;-><init>(Ljava/lang/Iterable;)V

    return-object p1
.end method
