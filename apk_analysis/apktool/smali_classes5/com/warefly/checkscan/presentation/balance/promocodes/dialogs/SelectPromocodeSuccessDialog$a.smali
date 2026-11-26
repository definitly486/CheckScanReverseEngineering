.class public final Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog$a;->f:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog$a;->f:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;->e:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;->d:Ljm7$b;

    iget-object p0, p0, Ljm7$b;->d:Ljava/lang/String;

    invoke-interface {p1, p0}, Llm7;->onPromocodeCopyClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
