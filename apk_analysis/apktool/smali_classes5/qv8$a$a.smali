.class public final Lqv8$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkp1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqv8$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lqv8$a$a;->b:J

    return-void
.end method

.method public static a(J)J
    .locals 7

    invoke-static {}, Ldd5;->b()J

    move-result-wide v0

    sget-object v2, Lau2;->NANOSECONDS:Lau2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x1

    sub-long v5, p0, v3

    or-long/2addr v3, v5

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-static {p0, p1}, Lew4;->a(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lwt2;->n(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {v0, v1, p0, p1, v2}, Lew4;->c(JJLau2;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(JJ)J
    .locals 7

    sget v0, Ldd5;->b:I

    sget-object v0, Lau2;->NANOSECONDS:Lau2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x1

    sub-long v3, p2, v1

    or-long/2addr v3, v1

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    sget-object p0, Lwt2;->c:Lwt2$a;

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-static {p2, p3}, Lew4;->a(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lwt2;->n(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    sub-long v3, p0, v1

    or-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lew4;->a(J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-static {p0, p1, p2, p3, v0}, Lew4;->c(JJLau2;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lkp1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lqv8$a$a;

    iget-wide v1, p0, Lqv8$a$a;->b:J

    if-eqz v0, :cond_0

    check-cast p1, Lqv8$a$a;

    iget-wide p0, p1, Lqv8$a$a;->b:J

    invoke-static {v1, v2, p0, p1}, Lqv8$a$a;->c(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lwt2;->d(JJ)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Subtracting or comparing time marks from different time sources is not possible: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ValueTimeMark(reading="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lqv8$a$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lqv8$a$a;

    iget-wide v0, p1, Lqv8$a$a;->b:J

    iget-wide p0, p0, Lqv8$a$a;->b:J

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lqv8$a$a;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lqv8$a$a;->b:J

    invoke-static {v0, v1}, Lqv8$a$a;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ValueTimeMark(reading="

    const/16 v1, 0x29

    iget-wide v2, p0, Lqv8$a$a;->b:J

    invoke-static {v0, v2, v3, v1}, Lrg;->g(Ljava/lang/String;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
