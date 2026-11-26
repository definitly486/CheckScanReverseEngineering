.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog$a;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog$a;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog;->e:Ljava/lang/String;

    :cond_0
    invoke-static {p1, v0}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
