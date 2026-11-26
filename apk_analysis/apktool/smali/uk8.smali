.class public final Luk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# instance fields
.field public final synthetic a:Lou5;

.field public final synthetic b:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Lnu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lou5;Lr07;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lou5;",
            "Lr07<",
            "Lnu5;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk8;->a:Lou5;

    iput-object p2, p0, Luk8;->b:Lr07;

    return-void
.end method


# virtual methods
.method public final onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Luk8;->b:Lr07;

    iget-object p1, p1, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lnu5;

    iget-object p0, p0, Luk8;->a:Lou5;

    invoke-interface {p0, p1}, Lou5;->c(Lnu5;)V

    return-void

    :cond_0
    const-string p0, "placement"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Luk8;->b:Lr07;

    iget-object p1, p1, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lnu5;

    iget-object p0, p0, Luk8;->a:Lou5;

    invoke-interface {p0, p1}, Lou5;->b(Lnu5;)V

    return-void

    :cond_0
    const-string p0, "placement"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Luk8;->b:Lr07;

    iget-object p1, p1, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lnu5;

    iget-object p0, p0, Luk8;->a:Lou5;

    invoke-interface {p0, p1}, Lou5;->a(Lnu5;)V

    return-void

    :cond_0
    const-string p0, "placement"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Luk8;->b:Lr07;

    iget-object p1, p1, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lnu5;

    iget-object p0, p0, Luk8;->a:Lou5;

    invoke-interface {p0, p1}, Lou5;->e(Lnu5;)V

    return-void

    :cond_0
    const-string p0, "placement"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Luk8;->b:Lr07;

    iget-object p1, p1, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lnu5;

    iget-object p0, p0, Luk8;->a:Lou5;

    invoke-interface {p0, p1}, Lou5;->d(Lnu5;)V

    return-void

    :cond_0
    const-string p0, "placement"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
