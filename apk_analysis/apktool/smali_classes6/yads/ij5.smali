.class public final Lyads/ij5;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/ij5;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/ij5;

    invoke-direct {v0}, Lyads/ij5;-><init>()V

    sput-object v0, Lyads/ij5;->a:Lyads/ij5;

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

    sput-object v0, Lyads/ij5;->b:Ljava/util/List;

    sput-object v1, Lyads/ij5;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/ij5;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lyads/fd0;

    const/4 p1, 0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x17

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Lyads/gd0;->a(Lyads/fd0;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p0}, Lyads/fd0;->a()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    long-to-int p1, p1

    const/16 p2, 0xb

    invoke-virtual {p3, p2, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p1, Lyads/fd0;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p0}, Lyads/fd0;->b()Ljava/util/TimeZone;

    move-result-object p0

    invoke-direct {p1, p2, p3, p0}, Lyads/fd0;-><init>(JLjava/util/TimeZone;)V

    return-object p1

    :cond_0
    const-string p0, "Expecting hours in [0..23], instead got "

    const-string v0, "."

    invoke-static {p1, p2, p0, v0}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "setHours"

    invoke-static {p1, p0, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 82
    sget-object p0, Lyads/ij5;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "setHours"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/ij5;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/ij5;->d:Z

    return p0
.end method
