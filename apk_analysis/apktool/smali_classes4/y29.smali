.class public final synthetic Ly29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ly29;->b:I

    iput-object p1, p0, Ly29;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Ly29;->b:I

    iget-object p0, p0, Ly29;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/monetization/ads/exo/source/dash/i;

    invoke-virtual {p0}, Lcom/monetization/ads/exo/source/dash/i;->h()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/perf/transport/TransportManager;

    invoke-static {p0}, Lcom/google/firebase/perf/transport/TransportManager;->a(Lcom/google/firebase/perf/transport/TransportManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
