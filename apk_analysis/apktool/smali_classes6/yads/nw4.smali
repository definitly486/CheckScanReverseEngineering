.class public final Lyads/nw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k06;


# instance fields
.field public final a:Lyads/lc5;

.field public final b:Lyads/a03;

.field public final c:Lyads/j84;

.field public d:J

.field public final synthetic e:Lyads/ow4;


# direct methods
.method public constructor <init>(Lyads/ow4;Lyads/aj0;)V
    .locals 1

    iput-object p1, p0, Lyads/nw4;->e:Lyads/ow4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lyads/lc5;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Lyads/lc5;-><init>(Lyads/aj0;Lyads/xl2;Lyads/tl2;)V

    iput-object p1, p0, Lyads/nw4;->a:Lyads/lc5;

    new-instance p1, Lyads/a03;

    invoke-direct {p1}, Lyads/a03;-><init>()V

    iput-object p1, p0, Lyads/nw4;->b:Lyads/a03;

    new-instance p1, Lyads/j84;

    invoke-direct {p1}, Lyads/j84;-><init>()V

    iput-object p1, p0, Lyads/nw4;->c:Lyads/j84;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/nw4;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lyads/tc0;IZ)I
    .locals 0

    .line 171
    iget-object p0, p0, Lyads/nw4;->a:Lyads/lc5;

    invoke-interface {p0, p1, p2, p3}, Lyads/k06;->b(Lyads/tc0;IZ)I

    move-result p0

    return p0
.end method

.method public final a(ILyads/os4;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lyads/nw4;->a:Lyads/lc5;

    .line 173
    invoke-interface {p0, p1, p2}, Lyads/k06;->a(ILyads/os4;)V

    return-void
.end method

.method public final a(JIIILyads/j06;)V
    .locals 7

    iget-object v0, p0, Lyads/nw4;->a:Lyads/lc5;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lyads/lc5;->a(JIIILyads/j06;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lyads/nw4;->a:Lyads/lc5;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lyads/lc5;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lyads/nw4;->c:Lyads/j84;

    invoke-virtual {p1}, Lyads/mi0;->b()V

    iget-object p1, p0, Lyads/nw4;->a:Lyads/lc5;

    iget-object p3, p0, Lyads/nw4;->b:Lyads/a03;

    iget-object p4, p0, Lyads/nw4;->c:Lyads/j84;

    invoke-virtual {p1, p3, p4, p2, p2}, Lyads/lc5;->a(Lyads/a03;Lyads/mi0;IZ)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lyads/nw4;->c:Lyads/j84;

    invoke-virtual {p1}, Lyads/mi0;->c()V

    iget-object p1, p0, Lyads/nw4;->c:Lyads/j84;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide p3, p1, Lyads/mi0;->f:J

    iget-object p5, p0, Lyads/nw4;->e:Lyads/ow4;

    iget-object p5, p5, Lyads/ow4;->d:Lyads/fp2;

    invoke-virtual {p5, p1}, Lyads/vk5;->a(Lyads/j84;)Lyads/h84;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lyads/h84;->b:[Lyads/g84;

    aget-object p1, p1, p2

    check-cast p1, Lyads/ep2;

    iget-object p2, p1, Lyads/ep2;->b:Ljava/lang/String;

    iget-object p5, p1, Lyads/ep2;->c:Ljava/lang/String;

    const-string p6, "urn:mpeg:dash:event:2012"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "1"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "2"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "3"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_4
    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object p1, p1, Lyads/ep2;->f:[B

    invoke-static {p1}, Lyads/u56;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lyads/u56;->f(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Lyads/xs4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-wide p1, p5

    :goto_2
    cmp-long p5, p1, p5

    if-nez p5, :cond_5

    goto :goto_0

    :cond_5
    new-instance p5, Lyads/mw4;

    invoke-direct {p5, p3, p4, p1, p2}, Lyads/mw4;-><init>(JJ)V

    iget-object p1, p0, Lyads/nw4;->e:Lyads/ow4;

    iget-object p1, p1, Lyads/ow4;->e:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    iget-object p0, p0, Lyads/nw4;->a:Lyads/lc5;

    iget-object p1, p0, Lyads/lc5;->a:Lyads/ic5;

    monitor-enter p0

    :try_start_1
    iget p2, p0, Lyads/lc5;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_7

    monitor-exit p0

    const-wide/16 p2, -0x1

    goto :goto_3

    :cond_7
    :try_start_2
    invoke-virtual {p0, p2}, Lyads/lc5;->a(I)J

    move-result-wide p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_3
    invoke-virtual {p1, p2, p3}, Lyads/ic5;->a(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1
.end method

.method public final a(Lyads/vz2;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lyads/nw4;->a:Lyads/lc5;

    invoke-virtual {p0, p1}, Lyads/lc5;->a(Lyads/vz2;)V

    return-void
.end method
