.class public final Lt11;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lt11;->f:I

    iput-object p1, p0, Lt11;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lt11;->f:I

    iget-object p0, p0, Lt11;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->mailChangePresenter:Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->onMailChange(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "mailChangePresenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Loi1;

    iget-object p0, p0, Loi1;->b:Ltr0;

    invoke-virtual {p0}, Ltr0;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    check-cast p0, Lu11;

    iget-object p0, p0, Lu11;->e:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
