.class public final Lk64;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lh64;JLlc2$e;)Lh64;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-wide v0, p3, Llc2$e;->c:J

    invoke-static {p1, p2, v0, v1}, Ld31;->q(JJ)Lpp2;

    move-result-object p3

    iget-wide v0, p3, Lpp2;->a:J

    iget-wide v2, p3, Lpp2;->b:J

    new-instance p3, Lh64;

    iget-object p0, p0, Lh64;->b:Ljava/time/Instant;

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p3, p0}, Lh64;-><init>(Ljava/time/Instant;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    instance-of p3, p0, Ljava/time/DateTimeException;

    if-nez p3, :cond_1

    instance-of p3, p0, Ljava/lang/ArithmeticException;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    throw p0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_2

    sget-object p0, Lh64;->Companion:Lh64$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lh64;->d:Lh64;

    goto :goto_1

    :cond_2
    sget-object p0, Lh64;->Companion:Lh64$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lh64;->c:Lh64;

    :goto_1
    return-object p0
.end method
