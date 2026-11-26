.class public final Ltq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltq1$a;
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:Lhe7;


# direct methods
.method public constructor <init>(Lhe7;)V
    .locals 2

    invoke-direct {p0}, Lqp1;-><init>()V

    const-wide/16 v0, 0x2

    iput-wide v0, p0, Ltq1;->b:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Ltq1;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Ltq1;->d:Lhe7;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 3

    new-instance v0, Ltq1$a;

    invoke-direct {v0, p1}, Ltq1$a;-><init>(Lmq1;)V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    iget-wide v1, p0, Ltq1;->b:J

    iget-object p1, p0, Ltq1;->c:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Ltq1;->d:Lhe7;

    invoke-virtual {p0, v0, v1, v2, p1}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    invoke-static {v0, p0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
