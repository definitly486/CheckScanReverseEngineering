.class public final Lyads/fd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final f:Ljava/util/SimpleTimeZone;


# instance fields
.field public final b:J

.field public final c:Ljava/util/TimeZone;

.field public final d:Lcl4;

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "UTC"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lyads/fd0;->f:Ljava/util/SimpleTimeZone;

    return-void
.end method

.method public constructor <init>(JLjava/util/TimeZone;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/fd0;->b:J

    iput-object p3, p0, Lyads/fd0;->c:Ljava/util/TimeZone;

    sget-object v0, Lpo4;->NONE:Lpo4;

    new-instance v1, Lfz0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lfz0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lyads/fd0;->d:Lcl4;

    invoke-virtual {p3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p3

    div-int/lit8 p3, p3, 0x3c

    const v0, 0xea60

    mul-int/2addr p3, v0

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lyads/fd0;->e:J

    return-void
.end method

.method public static final a(Lyads/fd0;)Ljava/util/Calendar;
    .locals 3

    sget-object v0, Lyads/fd0;->f:Ljava/util/SimpleTimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iget-wide v1, p0, Lyads/fd0;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lyads/fd0;->b:J

    return-wide v0
.end method

.method public final b()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Lyads/fd0;->c:Ljava/util/TimeZone;

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lyads/fd0;

    iget-wide v0, p0, Lyads/fd0;->e:J

    iget-wide p0, p1, Lyads/fd0;->e:J

    invoke-static {v0, v1, p0, p1}, Laa4;->g(JJ)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/fd0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Lyads/fd0;->e:J

    check-cast p1, Lyads/fd0;

    iget-wide p0, p1, Lyads/fd0;->e:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lyads/fd0;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/fd0;->d:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0}, Lyads/ed0;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
