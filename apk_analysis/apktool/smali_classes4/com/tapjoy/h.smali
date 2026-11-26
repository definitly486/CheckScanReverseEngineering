.class public final Lcom/tapjoy/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tapjoy/TJTaskHandler;

.field public final synthetic c:Lcom/tapjoy/k;


# direct methods
.method public constructor <init>(Lcom/tapjoy/k;Ljava/lang/String;Lcom/tapjoy/TJTaskHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/h;->c:Lcom/tapjoy/k;

    iput-object p2, p0, Lcom/tapjoy/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/h;->b:Lcom/tapjoy/TJTaskHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "setBackgroundColor: "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/h;->c:Lcom/tapjoy/k;

    iget-object v0, v0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/tapjoy/h;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tapjoy/h;->b:Lcom/tapjoy/TJTaskHandler;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error setting background color. backgroundView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/h;->c:Lcom/tapjoy/k;

    iget-object v1, v1, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hexColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/h;->b:Lcom/tapjoy/TJTaskHandler;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V

    return-void
.end method
