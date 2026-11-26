.class public final Lqz7;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqz7$a;
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
.field public final b:Lmz7;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lhe7;


# direct methods
.method public constructor <init>(Lmz7;Lhe7;)V
    .locals 2

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lqz7;->b:Lmz7;

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lqz7;->c:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lqz7;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p2, p0, Lqz7;->e:Lhe7;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lkp7;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    new-instance v1, Lqz7$a;

    invoke-direct {v1, p0, v0, p1}, Lqz7$a;-><init>(Lqz7;Lkp7;Lt08;)V

    iget-object p0, p0, Lqz7;->b:Lmz7;

    invoke-virtual {p0, v1}, Lmz7;->d(Lt08;)V

    return-void
.end method
