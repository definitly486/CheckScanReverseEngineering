.class public final Lcom/tapjoy/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/tapjoy/k;


# direct methods
.method public constructor <init>(Lcom/tapjoy/k;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/j;->b:Lcom/tapjoy/k;

    iput-boolean p2, p0, Lcom/tapjoy/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/j;->b:Lcom/tapjoy/k;

    iget-object v0, v0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/tapjoy/j;->a:Z

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJActivity;->setCloseButtonClickable(Z)V

    return-void

    :cond_0
    const-string p0, "Cannot setCloseButtonClickable -- TJAdUnitActivity is null"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void
.end method
