.class public final Lrq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrq1$a;
    }
.end annotation


# instance fields
.field public final b:Lqp1;

.field public final c:Lhe7;


# direct methods
.method public constructor <init>(Lqp1;Lhe7;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lrq1;->b:Lqp1;

    iput-object p2, p0, Lrq1;->c:Lhe7;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 2

    new-instance v0, Lrq1$a;

    iget-object v1, p0, Lrq1;->b:Lqp1;

    invoke-direct {v0, p1, v1}, Lrq1$a;-><init>(Lmq1;Lqp1;)V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Lrq1;->c:Lhe7;

    invoke-virtual {p0, v0}, Lhe7;->c(Ljava/lang/Runnable;)Lcp2;

    move-result-object p0

    iget-object p1, v0, Lrq1$a;->c:Lkp7;

    invoke-static {p1, p0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
