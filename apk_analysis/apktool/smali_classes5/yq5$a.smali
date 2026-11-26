.class public final Lyq5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lls5;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyq5$a$a;,
        Lyq5$a$b;,
        Lyq5$a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lls5<",
        "TT;>;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lhe7$c;

.field public f:Lcp2;


# direct methods
.method public constructor <init>(Lls5;JLjava/util/concurrent/TimeUnit;Lhe7$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyq5$a;->b:Lls5;

    iput-wide p2, p0, Lyq5$a;->c:J

    iput-object p4, p0, Lyq5$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lyq5$a;->e:Lhe7$c;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lyq5$a;->f:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    iget-object p0, p0, Lyq5$a;->e:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lyq5$a;->e:Lhe7$c;

    invoke-interface {p0}, Lcp2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 4

    new-instance v0, Lyq5$a$a;

    invoke-direct {v0, p0}, Lyq5$a$a;-><init>(Lyq5$a;)V

    iget-wide v1, p0, Lyq5$a;->c:J

    iget-object v3, p0, Lyq5$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lyq5$a;->e:Lhe7$c;

    invoke-virtual {p0, v0, v1, v2, v3}, Lhe7$c;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lyq5$a$b;

    invoke-direct {v0, p0, p1}, Lyq5$a$b;-><init>(Lyq5$a;Ljava/lang/Throwable;)V

    const-wide/16 v1, 0x0

    iget-object p1, p0, Lyq5$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lyq5$a;->e:Lhe7$c;

    invoke-virtual {p0, v0, v1, v2, p1}, Lhe7$c;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lyq5$a$c;

    invoke-direct {v0, p0, p1}, Lyq5$a$c;-><init>(Lyq5$a;Ljava/lang/Object;)V

    iget-wide v1, p0, Lyq5$a;->c:J

    iget-object p1, p0, Lyq5$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lyq5$a;->e:Lhe7$c;

    invoke-virtual {p0, v0, v1, v2, p1}, Lhe7$c;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 1

    iget-object v0, p0, Lyq5$a;->f:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lyq5$a;->f:Lcp2;

    iget-object p1, p0, Lyq5$a;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method
