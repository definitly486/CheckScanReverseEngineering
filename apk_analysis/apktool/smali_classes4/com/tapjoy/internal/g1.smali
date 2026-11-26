.class public final Lcom/tapjoy/internal/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJSetUserIDListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJConnectListener;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJConnectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/g1;->a:Lcom/tapjoy/TJConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSetUserIDFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/g1;->a:Lcom/tapjoy/TJConnectListener;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJConnectListener;->onConnectWarning(ILjava/lang/String;)V

    return-void
.end method

.method public final onSetUserIDSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/g1;->a:Lcom/tapjoy/TJConnectListener;

    invoke-virtual {p0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    return-void
.end method
