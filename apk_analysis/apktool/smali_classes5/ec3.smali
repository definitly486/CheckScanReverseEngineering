.class public final Lec3;
.super Lqj3;
.source "SourceFile"


# instance fields
.field public final c:J

.field public final d:Z

.field public e:J


# direct methods
.method public constructor <init>(Lv48;JZ)V
    .locals 0

    invoke-direct {p0, p1}, Lqj3;-><init>(Lv48;)V

    iput-wide p2, p0, Lec3;->c:J

    iput-boolean p4, p0, Lec3;->d:Z

    return-void
.end method


# virtual methods
.method public final t0(Lbu0;J)J
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lec3;->e:J

    iget-wide v2, p0, Lec3;->c:J

    cmp-long v4, v0, v2

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    if-lez v4, :cond_0

    move-wide p2, v7

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lec3;->d:Z

    if-eqz v4, :cond_2

    sub-long v0, v2, v0

    cmp-long v4, v0, v7

    if-nez v4, :cond_1

    return-wide v5

    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :cond_2
    :goto_0
    iget-object v0, p0, Lqj3;->b:Lv48;

    invoke-interface {v0, p1, p2, p3}, Lv48;->t0(Lbu0;J)J

    move-result-wide p2

    cmp-long v0, p2, v5

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lec3;->e:J

    add-long/2addr v4, p2

    iput-wide v4, p0, Lec3;->e:J

    :cond_3
    iget-wide v4, p0, Lec3;->e:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    if-lez v1, :cond_7

    :cond_5
    cmp-long p2, p2, v7

    if-lez p2, :cond_6

    if-lez v1, :cond_6

    iget-wide p2, p1, Lbu0;->c:J

    sub-long/2addr v4, v2

    sub-long/2addr p2, v4

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    invoke-virtual {v0, p1}, Lbu0;->j0(Lv48;)J

    invoke-virtual {p1, v0, p2, p3}, Lbu0;->H(Lbu0;J)V

    invoke-virtual {v0}, Lbu0;->p()V

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "expected "

    const-string p3, " bytes but got "

    invoke-static {v2, v3, p2, p3}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lec3;->e:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-wide p2
.end method
