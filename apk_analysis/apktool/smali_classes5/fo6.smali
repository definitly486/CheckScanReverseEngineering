.class public final Lfo6;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;)V
    .locals 4

    iput-object p1, p0, Lfo6;->a:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    const-wide/16 v0, 0x7d0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Lfo6;->a:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
