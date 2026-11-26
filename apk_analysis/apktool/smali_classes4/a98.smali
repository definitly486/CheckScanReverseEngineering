.class public final La98;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldu8;

.field public b:Z

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldu8;->a:Ldu8$a;

    iput-object v0, p0, La98;->a:Ldu8;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-boolean v0, p0, La98;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La98;->a:Ldu8;

    invoke-virtual {v0}, Ldu8;->a()J

    move-result-wide v0

    iget-wide v2, p0, La98;->c:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, La98;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Lo8;->s(ZLjava/lang/Object;)V

    iput-boolean v1, p0, La98;->b:Z

    iget-object v0, p0, La98;->a:Ldu8;

    invoke-virtual {v0}, Ldu8;->a()J

    move-result-wide v0

    iput-wide v0, p0, La98;->c:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, La98;->b:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, La98;->a:Ldu8;

    invoke-virtual {v0}, Ldu8;->a()J

    move-result-wide v3

    iget-wide v5, p0, La98;->c:J

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    const-wide v5, 0x4e94914f0000L

    div-long v5, v3, v5

    cmp-long p0, v5, v1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-lez p0, :cond_1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_1
    const-wide v5, 0x34630b8a000L

    div-long v5, v3, v5

    cmp-long p0, v5, v1

    if-lez p0, :cond_2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_2
    const-wide v5, 0xdf8475800L

    div-long v5, v3, v5

    cmp-long p0, v5, v1

    if-lez p0, :cond_3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_3
    const-wide/32 v5, 0x3b9aca00

    div-long v5, v3, v5

    cmp-long p0, v5, v1

    if-lez p0, :cond_4

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_4
    const-wide/32 v5, 0xf4240

    div-long v5, v3, v5

    cmp-long p0, v5, v1

    if-lez p0, :cond_5

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_5
    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    cmp-long p0, v5, v1

    if-lez p0, :cond_6

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_6
    move-object p0, v0

    :goto_1
    long-to-double v1, v3

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.4g"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La98$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lxp;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "d"

    goto :goto_2

    :pswitch_1
    const-string p0, "h"

    goto :goto_2

    :pswitch_2
    const-string p0, "min"

    goto :goto_2

    :pswitch_3
    const-string p0, "s"

    goto :goto_2

    :pswitch_4
    const-string p0, "ms"

    goto :goto_2

    :pswitch_5
    const-string p0, "\u03bcs"

    goto :goto_2

    :pswitch_6
    const-string p0, "ns"

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
