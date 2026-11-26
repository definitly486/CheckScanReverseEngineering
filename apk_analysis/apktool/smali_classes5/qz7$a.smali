.class public final Lqz7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt08;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqz7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqz7$a$a;,
        Lqz7$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt08<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lkp7;

.field public final c:Lt08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt08<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lqz7;


# direct methods
.method public constructor <init>(Lqz7;Lkp7;Lt08;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkp7;",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqz7$a;->d:Lqz7;

    iput-object p2, p0, Lqz7$a;->b:Lkp7;

    iput-object p3, p0, Lqz7$a;->c:Lt08;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lqz7$a;->d:Lqz7;

    iget-object v1, v0, Lqz7;->e:Lhe7;

    new-instance v2, Lqz7$a$a;

    invoke-direct {v2, p0, p1}, Lqz7$a$a;-><init>(Lqz7$a;Ljava/lang/Throwable;)V

    const-wide/16 v3, 0x0

    iget-object p1, v0, Lqz7;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p1

    iget-object p0, p0, Lqz7$a;->b:Lkp7;

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Lqz7$a;->b:Lkp7;

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lqz7$a;->d:Lqz7;

    iget-object v1, v0, Lqz7;->e:Lhe7;

    new-instance v2, Lqz7$a$b;

    invoke-direct {v2, p0, p1}, Lqz7$a$b;-><init>(Lqz7$a;Ljava/lang/Object;)V

    iget-wide v3, v0, Lqz7;->c:J

    iget-object p1, v0, Lqz7;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p1

    iget-object p0, p0, Lqz7$a;->b:Lkp7;

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
