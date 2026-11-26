.class public final synthetic Lgd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw08;
.implements Lxl3;
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lli0;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lgd0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgd0;->b:Ljava/lang/Object;

    check-cast p0, Lnf1;

    invoke-virtual {p0, p1}, Lnf1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    iget-object p0, p0, Lgd0;->b:Ljava/lang/Object;

    check-cast p0, Lbm3;

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->f(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method public c(Loz7$a;)V
    .locals 0

    iget-object p0, p0, Lgd0;->b:Ljava/lang/Object;

    check-cast p0, Lu1;

    invoke-virtual {p0}, Lu1;->f()Lnl3;

    move-result-object p0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get()J
    .locals 2

    iget-object p0, p0, Lgd0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lgd0;->b:Ljava/lang/Object;

    check-cast p0, Lug6;

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "No qrs"

    invoke-static {v0, p1}, Lpib;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-static {p0, p1}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
