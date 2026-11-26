.class public final Ljg3$e;
.super Ldc8;
.source "SourceFile"

# interfaces
.implements Lrh3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ldc8;",
        "Lrh3<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final i:Ljg3$b;

.field public j:J


# direct methods
.method public constructor <init>(Ljg3$b;)V
    .locals 0

    invoke-direct {p0}, Ldc8;-><init>()V

    iput-object p1, p0, Ljg3$e;->i:Ljg3$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 5

    iget-wide v0, p0, Ljg3$e;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Ljg3$e;->j:J

    invoke-virtual {p0, v0, v1}, Ldc8;->f(J)V

    :cond_0
    iget-object p0, p0, Ljg3$e;->i:Ljg3$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljg3$b;->l:Z

    invoke-virtual {p0}, Ljg3$b;->f()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-wide v0, p0, Ljg3$e;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Ljg3$e;->j:J

    invoke-virtual {p0, v0, v1}, Ldc8;->f(J)V

    :cond_0
    iget-object p0, p0, Ljg3$e;->i:Ljg3$b;

    invoke-interface {p0, p1}, Ljg3$f;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-wide v0, p0, Ljg3$e;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljg3$e;->j:J

    iget-object p0, p0, Ljg3$e;->i:Ljg3$b;

    invoke-interface {p0, p1}, Ljg3$f;->d(Ljava/lang/Object;)V

    return-void
.end method
