.class public final Lg18;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg18$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lyz7;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lhe7;


# direct methods
.method public constructor <init>(Lyz7;Lhe7;)V
    .locals 2

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lg18;->b:Lyz7;

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lg18;->c:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lg18;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p2, p0, Lg18;->e:Lhe7;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lg18$a;

    iget-wide v1, p0, Lg18;->c:J

    iget-object v3, p0, Lg18;->d:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Lg18$a;-><init>(Lt08;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    iget-object p1, p0, Lg18;->e:Lhe7;

    invoke-virtual {p1, v0, v1, v2, v3}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p1

    iget-object v1, v0, Lg18$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    iget-object p0, p0, Lg18;->b:Lyz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
