.class public final synthetic Lz89;
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

    iput p2, p0, Lz89;->b:I

    iput-object p1, p0, Lz89;->c:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lz89;->b:I

    iget-object p0, p0, Lz89;->c:Lnl3;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->e(Lnl3;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->f(Lnl3;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
