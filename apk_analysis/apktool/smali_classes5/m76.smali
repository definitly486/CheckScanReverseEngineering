.class public final synthetic Lm76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;I)V
    .locals 0

    iput p2, p0, Lm76;->a:I

    iput-object p1, p0, Lm76;->b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lm76;->a:I

    iget-object p0, p0, Lm76;->b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->j(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->e(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
