.class public final Lcom/tapjoy/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJTaskHandler;


# instance fields
.field public final synthetic a:Lcom/tapjoy/o;


# direct methods
.method public constructor <init>(Lcom/tapjoy/o;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/n;->a:Lcom/tapjoy/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Float;

    iget-object p0, p0, Lcom/tapjoy/n;->a:Lcom/tapjoy/o;

    iget-object v0, p0, Lcom/tapjoy/o;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object p0, p0, Lcom/tapjoy/o;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
