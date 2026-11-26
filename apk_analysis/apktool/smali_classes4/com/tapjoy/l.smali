.class public final Lcom/tapjoy/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnitActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/l;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/l;->a:Lcom/tapjoy/TJAdUnitActivity;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getCloseRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Did not receive callback from content. Closing ad."

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/l;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
