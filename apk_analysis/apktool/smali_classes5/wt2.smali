.class public final Lwt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwt2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lwt2;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lwt2$a;

.field public static final d:J

.field public static final e:J

.field public static final f:J


# instance fields
.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwt2$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lwt2;->c:Lwt2$a;

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, Lyt2;->b(J)J

    move-result-wide v0

    sput-wide v0, Lwt2;->d:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, Lyt2;->b(J)J

    move-result-wide v0

    sput-wide v0, Lwt2;->e:J

    const-wide v0, 0x7fffffffffffc0deL

    sput-wide v0, Lwt2;->f:J

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lwt2;->b:J

    return-void
.end method

.method public static final a(JJ)J
    .locals 6

    const-wide/32 v0, 0xf4240

    div-long v2, p2, v0

    invoke-static {p0, p1, v2, v3}, Lyt2;->a(JJ)J

    move-result-wide p0

    const-wide v4, -0x431bde82d7aL

    cmp-long v4, v4, p0

    if-gtz v4, :cond_0

    const-wide v4, 0x431bde82d7bL

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    mul-long/2addr v2, v0

    sub-long/2addr p2, v2

    mul-long/2addr p0, v0

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lyt2;->c(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Lyt2;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lta8;->R(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, -0x1

    add-int/2addr p2, p3

    if-ltz p2, :cond_2

    :goto_0
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    move p3, p2

    goto :goto_1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p2, p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez p5, :cond_3

    if-ge p2, v1, :cond_3

    invoke-virtual {p0, p1, v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    add-int/2addr p3, v1

    div-int/2addr p3, v1

    mul-int/2addr p3, v1

    invoke-virtual {p0, p1, v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static d(JJ)I
    .locals 4

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int p2, p2

    and-int/lit8 p2, p2, 0x1

    sub-int/2addr v0, p2

    invoke-static {p0, p1}, Lwt2;->i(J)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-int p0, v0

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3}, Laa4;->g(JJ)I

    move-result p0

    return p0
.end method

.method public static final e(J)J
    .locals 2

    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lwt2;->h(J)Z

    move-result v0

    if-nez v0, :cond_0

    shr-long/2addr p0, v1

    return-wide p0

    :cond_0
    sget-object v0, Lau2;->MILLISECONDS:Lau2;

    invoke-static {p0, p1, v0}, Lwt2;->k(JLau2;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final f(J)J
    .locals 3

    const/4 v0, 0x1

    shr-long v1, p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-wide v1

    :cond_0
    const-wide p0, 0x8637bd05af6L

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_1
    const-wide p0, -0x8637bd05af6L

    cmp-long p0, v1, p0

    if-gez p0, :cond_2

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_2
    const-wide/32 p0, 0xf4240

    mul-long/2addr v1, p0

    return-wide v1
.end method

.method public static final g(J)I
    .locals 2

    invoke-static {p0, p1}, Lwt2;->h(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    shr-long/2addr p0, v1

    const-wide/16 v0, 0x3e8

    rem-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    :goto_0
    long-to-int p0, p0

    return p0

    :cond_1
    shr-long/2addr p0, v1

    const-wide/32 v0, 0x3b9aca00

    rem-long/2addr p0, v0

    goto :goto_0
.end method

.method public static final h(J)Z
    .locals 2

    sget-wide v0, Lwt2;->d:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lwt2;->e:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final i(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final j(JJ)J
    .locals 10

    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    long-to-int v2, p2

    and-int/2addr v2, v1

    if-ne v0, v2, :cond_6

    const-wide/32 v2, 0xf4240

    if-nez v0, :cond_1

    shr-long/2addr p0, v1

    shr-long/2addr p2, v1

    add-long/2addr p0, p2

    const-wide p2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long p2, p2, p0

    if-gtz p2, :cond_0

    const-wide p2, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long p2, p0, p2

    if-gez p2, :cond_0

    invoke-static {p0, p1}, Lyt2;->c(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    div-long/2addr p0, v2

    invoke-static {p0, p1}, Lyt2;->b(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    shr-long/2addr p0, v1

    shr-long/2addr p2, v1

    invoke-static {p0, p1, p2, p3}, Lyt2;->a(JJ)J

    move-result-wide v4

    const-wide p0, 0x7fffffffffffc0deL

    cmp-long p0, v4, p0

    if-eqz p0, :cond_5

    const-wide p0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long p0, v4, p0

    if-eqz p0, :cond_4

    const-wide p0, -0x3fffffffffffffffL    # -2.0000000000000004

    cmp-long p0, v4, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-wide p0, -0x431bde82d7aL

    cmp-long p0, p0, v4

    if-gtz p0, :cond_3

    const-wide p0, 0x431bde82d7bL

    cmp-long p0, v4, p0

    if-gez p0, :cond_3

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Lyt2;->c(J)J

    move-result-wide p0

    return-wide p0

    :cond_3
    const-wide v6, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v4 .. v9}, Lkx6;->h(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lyt2;->b(J)J

    move-result-wide p0

    return-wide p0

    :cond_4
    :goto_0
    invoke-static {v4, v5}, Lyt2;->b(J)J

    move-result-wide p0

    return-wide p0

    :cond_5
    const-string p0, "Summing infinite durations of different signs yields an undefined result."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_6
    if-ne v0, v1, :cond_7

    shr-long/2addr p0, v1

    shr-long/2addr p2, v1

    invoke-static {p0, p1, p2, p3}, Lwt2;->a(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_7
    shr-long/2addr p2, v1

    shr-long/2addr p0, v1

    invoke-static {p2, p3, p0, p1}, Lwt2;->a(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final k(JLau2;)J
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lwt2;->d:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    sget-wide v0, Lwt2;->e:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    const/4 v0, 0x1

    shr-long v1, p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    sget-object p0, Lau2;->NANOSECONDS:Lau2;

    goto :goto_0

    :cond_2
    sget-object p0, Lau2;->MILLISECONDS:Lau2;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {p0}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static l(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "0s"

    return-object p0

    :cond_0
    sget-wide v2, Lwt2;->d:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    const-string p0, "Infinity"

    return-object p0

    :cond_1
    sget-wide v2, Lwt2;->e:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    const-string p0, "-Infinity"

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Lwt2;->i(J)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p0, p1}, Lwt2;->i(J)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0, p1}, Lwt2;->n(J)J

    move-result-wide p0

    :cond_4
    sget-object v4, Lau2;->DAYS:Lau2;

    invoke-static {p0, p1, v4}, Lwt2;->k(JLau2;)J

    move-result-wide v4

    invoke-static {p0, p1}, Lwt2;->h(J)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_0

    :cond_5
    sget-object v6, Lau2;->HOURS:Lau2;

    invoke-static {p0, p1, v6}, Lwt2;->k(JLau2;)J

    move-result-wide v8

    const-wide/16 v10, 0x18

    rem-long/2addr v8, v10

    long-to-int v6, v8

    :goto_0
    invoke-static {p0, p1}, Lwt2;->h(J)Z

    move-result v8

    const-wide/16 v9, 0x3c

    if-eqz v8, :cond_6

    move v8, v7

    goto :goto_1

    :cond_6
    sget-object v8, Lau2;->MINUTES:Lau2;

    invoke-static {p0, p1, v8}, Lwt2;->k(JLau2;)J

    move-result-wide v11

    rem-long/2addr v11, v9

    long-to-int v8, v11

    :goto_1
    invoke-static {p0, p1}, Lwt2;->h(J)Z

    move-result v11

    if-eqz v11, :cond_7

    move v9, v7

    goto :goto_2

    :cond_7
    sget-object v11, Lau2;->SECONDS:Lau2;

    invoke-static {p0, p1, v11}, Lwt2;->k(JLau2;)J

    move-result-wide v11

    rem-long/2addr v11, v9

    long-to-int v9, v11

    :goto_2
    invoke-static {p0, p1}, Lwt2;->g(J)I

    move-result p0

    cmp-long p1, v4, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    move p1, v0

    goto :goto_3

    :cond_8
    move p1, v7

    :goto_3
    if-eqz v6, :cond_9

    move v1, v0

    goto :goto_4

    :cond_9
    move v1, v7

    :goto_4
    if-eqz v8, :cond_a

    move v10, v0

    goto :goto_5

    :cond_a
    move v10, v7

    :goto_5
    if-nez v9, :cond_c

    if-eqz p0, :cond_b

    goto :goto_6

    :cond_b
    move v11, v7

    goto :goto_7

    :cond_c
    :goto_6
    move v11, v0

    :goto_7
    if-eqz p1, :cond_d

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v0

    :cond_d
    const/16 v4, 0x20

    if-nez v1, :cond_e

    if-eqz p1, :cond_10

    if-nez v10, :cond_e

    if-eqz v11, :cond_10

    :cond_e
    add-int/lit8 v5, v7, 0x1

    if-lez v7, :cond_f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x68

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v5

    :cond_10
    if-nez v10, :cond_11

    if-eqz v11, :cond_13

    if-nez v1, :cond_11

    if-eqz p1, :cond_13

    :cond_11
    add-int/lit8 v5, v7, 0x1

    if-lez v7, :cond_12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x6d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v5

    :cond_13
    if-eqz v11, :cond_19

    add-int/lit8 v11, v7, 0x1

    if-lez v7, :cond_14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    if-nez v9, :cond_18

    if-nez p1, :cond_18

    if-nez v1, :cond_18

    if-eqz v10, :cond_15

    goto :goto_8

    :cond_15
    const p1, 0xf4240

    if-lt p0, p1, :cond_16

    div-int v4, p0, p1

    rem-int v5, p0, p1

    const-string v7, "ms"

    const/4 v8, 0x0

    const/4 v6, 0x6

    invoke-static/range {v3 .. v8}, Lwt2;->c(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_9

    :cond_16
    const/16 p1, 0x3e8

    if-lt p0, p1, :cond_17

    div-int/lit16 v4, p0, 0x3e8

    rem-int/lit16 v5, p0, 0x3e8

    const-string v7, "us"

    const/4 v8, 0x0

    const/4 v6, 0x3

    invoke-static/range {v3 .. v8}, Lwt2;->c(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_9

    :cond_17
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "ns"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_18
    :goto_8
    const-string v7, "s"

    const/4 v8, 0x0

    const/16 v6, 0x9

    move v5, p0

    move v4, v9

    invoke-static/range {v3 .. v8}, Lwt2;->c(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :goto_9
    move v7, v11

    :cond_19
    if-eqz v2, :cond_1a

    if-le v7, v0, :cond_1a

    const/16 p0, 0x28

    invoke-virtual {v3, v0, p0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final n(J)J
    .locals 3

    const/4 v0, 0x1

    shr-long v1, p0, v0

    neg-long v1, v1

    long-to-int p0, p0

    and-int/2addr p0, v0

    shl-long v0, v1, v0

    int-to-long p0, p0

    add-long/2addr v0, p0

    sget p0, Lxt2;->a:I

    return-wide v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lwt2;

    iget-wide v0, p1, Lwt2;->b:J

    iget-wide p0, p0, Lwt2;->b:J

    invoke-static {p0, p1, v0, v1}, Lwt2;->d(JJ)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lwt2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lwt2;

    iget-wide v0, p1, Lwt2;->b:J

    iget-wide p0, p0, Lwt2;->b:J

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

    iget-wide v0, p0, Lwt2;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lwt2;->b:J

    invoke-static {v0, v1}, Lwt2;->l(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
