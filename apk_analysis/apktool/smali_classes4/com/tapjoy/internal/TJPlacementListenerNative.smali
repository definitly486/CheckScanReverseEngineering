.class public Lcom/tapjoy/internal/TJPlacementListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    return-void

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static create(J)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/TJPlacementListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJPlacementListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onClickNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native onContentDismissNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onContentReadyNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onContentShowNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onPurchaseRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native onRequestFailureNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native onRequestSuccessNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onRewardRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method


# virtual methods
.method public final onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 2

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onContentDismissNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    return-void
.end method

.method public final onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 2

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onContentReadyNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    return-void
.end method

.method public final onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 2

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onContentShowNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    return-void
.end method

.method public final onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 6

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p2, Lcom/tapjoy/TJError;->code:I

    iget-object v5, p2, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onRequestFailureNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 2

    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onRequestSuccessNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    return-void
.end method
