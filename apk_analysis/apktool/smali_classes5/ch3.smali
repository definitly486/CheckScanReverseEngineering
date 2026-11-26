.class public final Lch3;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgg3<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lhe7;

.field public final d:J

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLhe7;)V
    .locals 0

    invoke-direct {p0}, Lgg3;-><init>()V

    iput-wide p1, p0, Lch3;->d:J

    iput-wide p3, p0, Lch3;->e:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lch3;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lch3;->c:Lhe7;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lch3$a;

    invoke-direct {v1, p1}, Lch3$a;-><init>(Lwb8;)V

    invoke-interface {p1, v1}, Lwb8;->a(Lbc8;)V

    iget-object v0, p0, Lch3;->c:Lhe7;

    instance-of p1, v0, Lvy8;

    iget-object v7, v1, Lch3$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_0

    new-instance v0, Lvy8$c;

    invoke-direct {v0}, Lvy8$c;-><init>()V

    invoke-static {v7, v0}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    iget-wide v4, p0, Lch3;->e:J

    iget-object v6, p0, Lch3;->f:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lch3;->d:J

    invoke-virtual/range {v0 .. v6}, Lhe7$c;->c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcp2;

    return-void

    :cond_0
    iget-wide v4, p0, Lch3;->e:J

    iget-object v6, p0, Lch3;->f:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lch3;->d:J

    invoke-virtual/range {v0 .. v6}, Lhe7;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    invoke-static {v7, p0}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method
