.class public final synthetic Lbe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqx1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;I)V
    .locals 0

    iput p2, p0, Lbe0;->b:I

    iput-object p1, p0, Lbe0;->c:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lbe0;->b:I

    iget-object p0, p0, Lbe0;->c:Lnl3;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lbw;

    invoke-virtual {p0, p1}, Lbw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    sget-object v0, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->a(Lnl3;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
