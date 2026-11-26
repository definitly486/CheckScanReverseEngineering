.class public final Lcom/tapjoy/internal/k2;
.super Lcom/tapjoy/TJConnectListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/p2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/k2;->a:Lcom/tapjoy/internal/p2;

    invoke-direct {p0}, Lcom/tapjoy/TJConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/k2;->a:Lcom/tapjoy/internal/p2;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/p2;->c(ILjava/lang/String;)V

    return-void
.end method

.method public final onConnectSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/k2;->a:Lcom/tapjoy/internal/p2;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/p2;->a(I)V

    iget-object p0, p0, Lcom/tapjoy/internal/k2;->a:Lcom/tapjoy/internal/p2;

    invoke-virtual {p0}, Lcom/tapjoy/internal/p2;->c()V

    return-void
.end method

.method public final onConnectWarning(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/k2;->a:Lcom/tapjoy/internal/p2;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/p2;->a(I)V

    iget-object p0, p0, Lcom/tapjoy/internal/k2;->a:Lcom/tapjoy/internal/p2;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/p2;->b(ILjava/lang/String;)V

    return-void
.end method
