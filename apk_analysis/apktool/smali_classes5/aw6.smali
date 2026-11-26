.class public final Law6;
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

    iput p2, p0, Law6;->f:I

    iput-object p1, p0, Law6;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Law6;->f:I

    iget-object p0, p0, Law6;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

    new-instance p1, Lcom/warefly/checkscan/presentation/queue/view/DisclaimerDialog;

    invoke-direct {p1}, Lcom/warefly/checkscan/presentation/queue/view/DisclaimerDialog;-><init>()V

    sget-object v0, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;->k:[Lze4;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    new-instance p0, Lkd$g$d$b;

    const-string p1, "CQ_QUEST_MARK_CLICK"

    invoke-direct {p0, p1}, Lkd$g$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkd;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
