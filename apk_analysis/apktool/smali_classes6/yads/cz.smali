.class public abstract Lyads/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nu3;


# instance fields
.field public final a:J

.field public final b:Lyads/bd0;

.field public final c:I

.field public final d:Lyads/vz2;

.field public final e:I

.field public final f:Ljava/lang/Object;

.field public final g:J

.field public final h:J

.field public final i:Lyads/rq5;


# direct methods
.method public constructor <init>(Lyads/wc0;Lyads/bd0;ILyads/vz2;ILjava/lang/Object;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/rq5;

    invoke-direct {v0, p1}, Lyads/rq5;-><init>(Lyads/wc0;)V

    iput-object v0, p0, Lyads/cz;->i:Lyads/rq5;

    iput-object p2, p0, Lyads/cz;->b:Lyads/bd0;

    iput p3, p0, Lyads/cz;->c:I

    iput-object p4, p0, Lyads/cz;->d:Lyads/vz2;

    iput p5, p0, Lyads/cz;->e:I

    iput-object p6, p0, Lyads/cz;->f:Ljava/lang/Object;

    iput-wide p7, p0, Lyads/cz;->g:J

    iput-wide p9, p0, Lyads/cz;->h:J

    sget-object p1, Lyads/cu3;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lyads/cz;->a:J

    return-void
.end method
