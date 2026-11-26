.class public final synthetic Lsc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lsc6;->b:I

    iput-object p2, p0, Lsc6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lsc6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lsc6;->b:I

    iget-object v1, p0, Lsc6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lsc6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lio/appmetrica/analytics/billing/impl/j;

    check-cast v1, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

    invoke-static {p0, v1}, Lio/appmetrica/analytics/billing/impl/j;->a(Lio/appmetrica/analytics/billing/impl/j;Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;)V

    return-void

    :pswitch_0
    check-cast p0, Lwt8;

    check-cast v1, Led0;

    iget-object v0, p0, Lwt8;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    invoke-virtual {p0, v1}, Lwt8;->a(Led0;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lwt8;->b(Led0;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Lwc6;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lwc6;->h(Ljava/lang/Object;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
