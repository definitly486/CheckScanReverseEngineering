.class public final Lyads/xh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/mf;

.field public final b:Ly22;

.field public final c:Lyads/uh;

.field public final d:Lyads/vh;

.field public final e:Lyads/ef;

.field public final f:Lyads/j90;

.field public final g:Lyads/gf;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lyads/mf;Ly22;Lyads/uh;Lyads/vh;Lyads/ef;Lyads/q84;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xh;->a:Lyads/mf;

    iput-object p2, p0, Lyads/xh;->b:Ly22;

    iput-object p3, p0, Lyads/xh;->c:Lyads/uh;

    iput-object p4, p0, Lyads/xh;->d:Lyads/vh;

    iput-object p5, p0, Lyads/xh;->e:Lyads/ef;

    new-instance p2, Lyads/j90;

    invoke-direct {p2, p6}, Lyads/j90;-><init>(Lyads/k75;)V

    iput-object p2, p0, Lyads/xh;->f:Lyads/j90;

    new-instance p2, Lyads/gf;

    iget-object p1, p1, Lyads/mf;->a:Ljava/util/Set;

    invoke-direct {p2, p1}, Lyads/gf;-><init>(Ljava/util/Set;)V

    iput-object p2, p0, Lyads/xh;->g:Lyads/gf;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lyads/xh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Lyads/xh;Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/us4;

    iget-object v0, v0, Lyads/us4;->a:Lyads/ff;

    iget-wide v0, v0, Lyads/ff;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/us4;

    iget-object v1, v1, Lyads/us4;->a:Lyads/ff;

    iget-wide v1, v1, Lyads/ff;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lyads/xh;->e:Lyads/ef;

    iget-object p1, p1, Lyads/ef;->a:Lyads/zu3;

    check-cast p1, Lyads/av3;

    const-string v2, "ExitInfoAnrLastReportedTimestamp"

    invoke-virtual {p1, v2}, Lyads/av3;->b(Ljava/lang/String;)J

    move-result-wide v3

    iget-object p0, p0, Lyads/xh;->e:Lyads/ef;

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object p0, p0, Lyads/ef;->a:Lyads/zu3;

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, v2, v0, v1}, Lyads/av3;->a(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method
