.class public final Lyads/zr3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/util/TreeSet;

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/zr3;->a:J

    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Lvna;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lyads/zr3;->b:Ljava/util/TreeSet;

    return-void
.end method

.method public static a(Lyads/jw;Lyads/jw;)I
    .locals 9

    iget-wide v0, p0, Lyads/jw;->g:J

    iget-wide v2, p1, Lyads/jw;->g:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, -0x1

    if-nez v4, :cond_3

    iget-object v0, p0, Lyads/jw;->b:Ljava/lang/String;

    iget-object v1, p1, Lyads/jw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/jw;->b:Ljava/lang/String;

    iget-object p1, p1, Lyads/jw;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Lyads/jw;->c:J

    iget-wide p0, p1, Lyads/jw;->c:J

    sub-long/2addr v0, p0

    cmp-long p0, v0, v6

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-gez p0, :cond_2

    return v8

    :cond_2
    return v5

    :cond_3
    cmp-long p0, v0, v2

    if-gez p0, :cond_4

    return v8

    :cond_4
    return v5
.end method


# virtual methods
.method public final a(Lyads/yv;J)V
    .locals 4

    .line 54
    :goto_0
    iget-wide v0, p0, Lyads/zr3;->c:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lyads/zr3;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lyads/zr3;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lyads/zr3;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/jw;

    move-object v1, p1

    check-cast v1, Lyads/ok5;

    monitor-enter v1

    .line 56
    :try_start_0
    invoke-virtual {v1, v0}, Lyads/ok5;->a(Lyads/jw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v1

    throw p0

    :cond_0
    return-void
.end method
