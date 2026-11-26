.class public final Lcom/tapjoy/internal/e2;
.super Lcom/tapjoy/TJConnectListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJConnectListener;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJConnectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/e2;->a:Lcom/tapjoy/TJConnectListener;

    invoke-direct {p0}, Lcom/tapjoy/TJConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/e2;->a:Lcom/tapjoy/TJConnectListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJConnectListener;->onConnectFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onConnectSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/e2;->a:Lcom/tapjoy/TJConnectListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    :cond_0
    return-void
.end method

.method public final onConnectWarning(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/e2;->a:Lcom/tapjoy/TJConnectListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJConnectListener;->onConnectWarning(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
