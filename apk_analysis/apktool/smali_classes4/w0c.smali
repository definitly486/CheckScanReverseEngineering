.class public final synthetic Lw0c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnr7;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lu0c;


# direct methods
.method public synthetic constructor <init>(Lnr7;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Lu0c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0c;->b:Lnr7;

    iput-object p2, p0, Lw0c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lw0c;->d:Landroid/content/Context;

    iput-object p4, p0, Lw0c;->e:Lu0c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lw0c;->b:Lnr7;

    iget-object v1, p0, Lw0c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lw0c;->d:Landroid/content/Context;

    iget-object p0, p0, Lw0c;->e:Lu0c;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzky;->a:Landroid/os/UserManager;

    iget-object v0, v0, Lm0;->b:Ljava/lang/Object;

    instance-of v0, v0, Ll0$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "DirectBootUtils"

    const-string v1, "Failed to unregister receiver"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
