.class public final Lyads/hj5;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/hj5;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/hj5;

    invoke-direct {v0}, Lyads/hj5;-><init>()V

    sput-object v0, Lyads/hj5;->a:Lyads/hj5;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->g:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v3, Lyads/w13;

    sget-object v4, Lyads/xo2;->c:Lyads/xo2;

    invoke-direct {v3, v4, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v3}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/hj5;->b:Ljava/util/List;

    sput-object v1, Lyads/hj5;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/hj5;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/fd0;

    const/4 p2, 0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Lyads/gd0;->a(Lyads/fd0;)Ljava/util/Calendar;

    move-result-object p2

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    const-wide/16 v4, 0x1

    cmp-long v4, v4, v0

    if-gtz v4, :cond_0

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    long-to-int p0, v0

    invoke-virtual {p2, v2, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v2, p0}, Ljava/util/Calendar;->set(II)V

    :goto_0
    new-instance p0, Lyads/fd0;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Lyads/fd0;->b()Ljava/util/TimeZone;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lyads/fd0;-><init>(JLjava/util/TimeZone;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unable to set day "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " for date "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setDay"

    invoke-static {p1, p0, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 106
    sget-object p0, Lyads/hj5;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "setDay"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/hj5;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/hj5;->d:Z

    return p0
.end method
