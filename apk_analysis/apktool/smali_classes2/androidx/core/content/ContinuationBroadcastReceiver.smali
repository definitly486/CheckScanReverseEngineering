.class final Landroidx/core/content/ContinuationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private continuation:Le02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le02<",
            "*>;"
        }
    .end annotation
.end field

.field private final onReceiveChecked:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/content/Intent;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le02;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;",
            "Lbm3<",
            "-",
            "Landroid/content/BroadcastReceiver;",
            "-",
            "Landroid/content/Intent;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Landroidx/core/content/ContinuationBroadcastReceiver;->onReceiveChecked:Lbm3;

    iput-object p1, p0, Landroidx/core/content/ContinuationBroadcastReceiver;->continuation:Le02;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Landroidx/core/content/ContinuationBroadcastReceiver;->onReceiveChecked:Lbm3;

    invoke-interface {p1, p0, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroidx/core/content/ContinuationBroadcastReceiver;->continuation:Le02;

    if-eqz p2, :cond_0

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v0}, Le02;->resumeWith(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/content/ContinuationBroadcastReceiver;->continuation:Le02;

    return-void

    :cond_0
    throw p1
.end method
