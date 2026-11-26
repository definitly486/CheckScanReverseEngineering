.class public final Lrb2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrb2$a;,
        Lrb2$b;
    }
.end annotation


# static fields
.field public static final b:Lrb2$a;

.field public static final synthetic c:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lec2;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ltg5;

    const-class v1, Lrb2;

    const-string v2, "monthNumber"

    const-string v3, "getMonthNumber()Ljava/lang/Integer;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lx07;->a:La17;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ltg5;

    const-string v5, "dayOfMonth"

    const-string v6, "getDayOfMonth()Ljava/lang/Integer;"

    invoke-direct {v3, v1, v5, v6, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ltg5;

    const-string v6, "dayOfYear"

    const-string v7, "getDayOfYear()Ljava/lang/Integer;"

    invoke-direct {v5, v1, v6, v7, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ltg5;

    const-string v7, "hour"

    const-string v8, "getHour()Ljava/lang/Integer;"

    invoke-direct {v6, v1, v7, v8, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ltg5;

    const-string v8, "hourOfAmPm"

    const-string v9, "getHourOfAmPm()Ljava/lang/Integer;"

    invoke-direct {v7, v1, v8, v9, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ltg5;

    const-string v9, "minute"

    const-string v10, "getMinute()Ljava/lang/Integer;"

    invoke-direct {v8, v1, v9, v10, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ltg5;

    const-string v10, "second"

    const-string v11, "getSecond()Ljava/lang/Integer;"

    invoke-direct {v9, v1, v10, v11, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ltg5;

    const-string v11, "offsetHours"

    const-string v12, "getOffsetHours()Ljava/lang/Integer;"

    invoke-direct {v10, v1, v11, v12, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Ltg5;

    const-string v12, "offsetMinutesOfHour"

    const-string v13, "getOffsetMinutesOfHour()Ljava/lang/Integer;"

    invoke-direct {v11, v1, v12, v13, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ltg5;

    const-string v13, "offsetSecondsOfMinute"

    const-string v14, "getOffsetSecondsOfMinute()Ljava/lang/Integer;"

    invoke-direct {v12, v1, v13, v14, v4}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xa

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v5, v1, v0

    const/4 v0, 0x3

    aput-object v6, v1, v0

    const/4 v0, 0x4

    aput-object v7, v1, v0

    const/4 v0, 0x5

    aput-object v8, v1, v0

    const/4 v0, 0x6

    aput-object v9, v1, v0

    const/4 v0, 0x7

    aput-object v10, v1, v0

    const/16 v0, 0x8

    aput-object v11, v1, v0

    const/16 v0, 0x9

    aput-object v12, v1, v0

    sput-object v1, Lrb2;->c:[Lze4;

    new-instance v0, Lrb2$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrb2;->b:Lrb2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 134
    new-instance v0, Lec2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lec2;-><init>(I)V

    invoke-direct {p0, v0}, Lrb2;-><init>(Lec2;)V

    return-void
.end method

.method public constructor <init>(Lec2;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb2;->a:Lec2;

    new-instance v0, Lrb2$h;

    iget-object v2, p1, Lec2;->a:Lb44;

    const-string v4, "getMonthNumber()Ljava/lang/Integer;"

    const/4 v5, 0x0

    move-object v1, v2

    const-class v2, Lb44;

    const-string v3, "monthNumber"

    invoke-direct/range {v0 .. v5}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lrb2$c;

    const-string v5, "getDayOfMonth()Ljava/lang/Integer;"

    const/4 v6, 0x0

    const-class v3, Lb44;

    const-string v4, "dayOfMonth"

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    new-instance p0, Lrb2$d;

    const-string v5, "getDayOfYear()Ljava/lang/Integer;"

    const-class v3, Lb44;

    const-string v4, "dayOfYear"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v7, Lrb2$e;

    iget-object v1, p1, Lec2;->b:Ld44;

    const-string v11, "getHour()Ljava/lang/Integer;"

    const/4 v12, 0x0

    const-class v9, Ld44;

    const-string v10, "hour"

    move-object v8, v1

    invoke-direct/range {v7 .. v12}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lrb2$f;

    const-string v4, "getHourOfAmPm()Ljava/lang/Integer;"

    const/4 v5, 0x0

    const-class v2, Ld44;

    const-string v3, "hourOfAmPm"

    invoke-direct/range {v0 .. v5}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lrb2$g;

    const-string v4, "getMinute()Ljava/lang/Integer;"

    const-class v2, Ld44;

    const-string v3, "minute"

    invoke-direct/range {v0 .. v5}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lrb2$l;

    const-string v4, "getSecond()Ljava/lang/Integer;"

    const-class v2, Ld44;

    const-string v3, "second"

    invoke-direct/range {v0 .. v5}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v6, Lrb2$i;

    iget-object v1, p1, Lec2;->c:Lf44;

    const-string v10, "getTotalHoursAbs()Ljava/lang/Integer;"

    const/4 v11, 0x0

    const-class v8, Lf44;

    const-string v9, "totalHoursAbs"

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lrb2$j;

    const-string v4, "getMinutesOfHour()Ljava/lang/Integer;"

    const-class v2, Lf44;

    const-string v3, "minutesOfHour"

    invoke-direct/range {v0 .. v5}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lrb2$k;

    const-string v4, "getSecondsOfMinute()Ljava/lang/Integer;"

    const-class v2, Lf44;

    const-string v3, "secondsOfMinute"

    invoke-direct/range {v0 .. v5}, Lrg5;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lh64;
    .locals 11

    const-string v0, "The parsed date is outside the range representable by Instant"

    iget-object p0, p0, Lrb2;->a:Lec2;

    iget-object v1, p0, Lec2;->c:Lf44;

    invoke-virtual {v1}, Lf44;->a()Lda9;

    move-result-object v1

    iget-object v2, p0, Lec2;->b:Ld44;

    invoke-virtual {v2}, Ld44;->c()Lut4;

    move-result-object v3

    iget-object p0, p0, Lec2;->a:Lb44;

    invoke-virtual {p0}, Lb44;->a()Lb44;

    move-result-object v4

    iget-object v5, v4, Lb44;->a:Ljava/lang/Integer;

    const-string v6, "year"

    invoke-static {v5, v6}, Lft4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    rem-int/lit16 v5, v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lb44;->a:Ljava/lang/Integer;

    :try_start_0
    iget-object p0, p0, Lb44;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/lit16 p0, p0, 0x2710

    int-to-long v5, p0

    const-wide v7, 0x497968bd80L

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v5

    invoke-virtual {v4}, Lb44;->c()Lct4;

    move-result-object p0

    iget-object p0, p0, Lct4;->b:Ljava/time/LocalDate;

    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v7

    const-wide/32 v9, 0x7fffffff

    cmp-long p0, v7, v9

    if-lez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/32 v9, -0x80000000

    cmp-long p0, v7, v9

    if-gez p0, :cond_1

    const/high16 p0, -0x80000000

    goto :goto_0

    :cond_1
    long-to-int p0, v7

    :goto_0
    int-to-long v7, p0

    const-wide/32 v9, 0x15180

    mul-long/2addr v7, v9

    iget-object p0, v3, Lut4;->b:Ljava/time/LocalTime;

    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v7, v3

    iget-object p0, v1, Lda9;->a:Ljava/time/ZoneOffset;

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object p0, Lh64;->Companion:Lh64$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lh64;->c:Lh64;

    iget-object p0, p0, Lh64;->b:Ljava/time/Instant;

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-ltz p0, :cond_6

    sget-object p0, Lh64;->d:Lh64;

    iget-object p0, p0, Lh64;->b:Ljava/time/Instant;

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-gtz p0, :cond_6

    iget-object p0, v2, Ld44;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    int-to-long v0, p0

    :try_start_1
    new-instance p0, Lh64;

    invoke-static {v3, v4, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lh64;-><init>(Ljava/time/Instant;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of v0, p0, Ljava/lang/ArithmeticException;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/time/DateTimeException;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    throw p0

    :cond_4
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long p0, v3, v0

    if-lez p0, :cond_5

    sget-object p0, Lh64;->d:Lh64;

    goto :goto_3

    :cond_5
    sget-object p0, Lh64;->c:Lh64;

    :goto_3
    return-object p0

    :cond_6
    new-instance p0, Lkotlinx/datetime/DateTimeFormatException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance v1, Lkotlinx/datetime/DateTimeFormatException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
