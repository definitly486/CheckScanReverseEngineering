.class public final Lcom/tapjoy/internal/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/b2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    iget-object p0, p0, Lcom/tapjoy/internal/b2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/internal/c;->a()V

    iget-object v1, v0, Lcom/tapjoy/internal/f2;->c:Lcom/tapjoy/TJSession;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJSession;->setSemiAutoSessionTrackingStarted(Z)V

    iget-object v0, v0, Lcom/tapjoy/internal/f2;->c:Lcom/tapjoy/TJSession;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJSession;->onActivityStart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
