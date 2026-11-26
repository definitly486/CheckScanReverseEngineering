.class public final Lyads/s00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mc5;


# instance fields
.field public final b:Lyads/mc5;

.field public c:Z

.field public final synthetic d:Lyads/t00;


# direct methods
.method public constructor <init>(Lyads/t00;Lyads/mc5;)V
    .locals 0

    iput-object p1, p0, Lyads/s00;->d:Lyads/t00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/s00;->b:Lyads/mc5;

    return-void
.end method


# virtual methods
.method public final a(Lyads/a03;Lyads/mi0;I)I
    .locals 10

    iget-object v0, p0, Lyads/s00;->d:Lyads/t00;

    iget-wide v0, v0, Lyads/t00;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lyads/s00;->c:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    iput v2, p2, Lyads/ev;->b:I

    return v3

    :cond_1
    iget-object v0, p0, Lyads/s00;->b:Lyads/mc5;

    invoke-interface {v0, p1, p2, p3}, Lyads/mc5;->a(Lyads/a03;Lyads/mi0;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    iget-object p2, p1, Lyads/a03;->b:Lyads/vz2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p2, Lyads/vz2;->C:I

    if-nez p3, :cond_2

    iget v1, p2, Lyads/vz2;->D:I

    if-eqz v1, :cond_5

    :cond_2
    iget-object p0, p0, Lyads/s00;->d:Lyads/t00;

    iget-wide v1, p0, Lyads/t00;->f:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move p3, v2

    :cond_3
    iget-wide v6, p0, Lyads/t00;->g:J

    cmp-long p0, v6, v4

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    iget v2, p2, Lyads/vz2;->D:I

    :goto_0
    new-instance p0, Lyads/uz2;

    invoke-direct {p0, p2}, Lyads/uz2;-><init>(Lyads/vz2;)V

    iput p3, p0, Lyads/uz2;->A:I

    iput v2, p0, Lyads/uz2;->B:I

    new-instance p2, Lyads/vz2;

    invoke-direct {p2, p0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object p2, p1, Lyads/a03;->b:Lyads/vz2;

    :cond_5
    return v0

    :cond_6
    iget-object p1, p0, Lyads/s00;->d:Lyads/t00;

    iget-wide v6, p1, Lyads/t00;->g:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v8, p2, Lyads/mi0;->f:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    invoke-virtual {p1}, Lyads/t00;->getBufferedPositionUs()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9

    iget-boolean p1, p2, Lyads/mi0;->e:Z

    if-nez p1, :cond_9

    :cond_8
    invoke-virtual {p2}, Lyads/mi0;->b()V

    iput v2, p2, Lyads/ev;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/s00;->c:Z

    return v3

    :cond_9
    return p3
.end method

.method public final a()V
    .locals 0

    .line 126
    iget-object p0, p0, Lyads/s00;->b:Lyads/mc5;

    invoke-interface {p0}, Lyads/mc5;->a()V

    return-void
.end method

.method public final b(J)I
    .locals 4

    iget-object v0, p0, Lyads/s00;->d:Lyads/t00;

    iget-wide v0, v0, Lyads/t00;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    iget-object p0, p0, Lyads/s00;->b:Lyads/mc5;

    invoke-interface {p0, p1, p2}, Lyads/mc5;->b(J)I

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 4

    iget-object v0, p0, Lyads/s00;->d:Lyads/t00;

    iget-wide v0, v0, Lyads/t00;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/s00;->b:Lyads/mc5;

    invoke-interface {p0}, Lyads/mc5;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
