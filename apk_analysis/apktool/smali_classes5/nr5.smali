.class public final Lnr5;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnr5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltq5<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lhe7;

.field public final c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLhe7;)V
    .locals 0

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-wide p1, p0, Lnr5;->c:J

    iput-wide p3, p0, Lnr5;->d:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lnr5;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lnr5;->b:Lhe7;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lnr5$a;

    invoke-direct {v1, p1}, Lnr5$a;-><init>(Lls5;)V

    invoke-interface {p1, v1}, Lls5;->onSubscribe(Lcp2;)V

    iget-object v0, p0, Lnr5;->b:Lhe7;

    instance-of p1, v0, Lvy8;

    if-eqz p1, :cond_0

    new-instance v0, Lvy8$c;

    invoke-direct {v0}, Lvy8$c;-><init>()V

    invoke-static {v1, v0}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    iget-wide v4, p0, Lnr5;->d:J

    iget-object v6, p0, Lnr5;->e:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lnr5;->c:J

    invoke-virtual/range {v0 .. v6}, Lhe7$c;->c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcp2;

    return-void

    :cond_0
    iget-wide v4, p0, Lnr5;->d:J

    iget-object v6, p0, Lnr5;->e:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lnr5;->c:J

    invoke-virtual/range {v0 .. v6}, Lhe7;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    invoke-static {v1, p0}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method
