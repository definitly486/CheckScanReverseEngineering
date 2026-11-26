.class public final Lyads/nj5;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/nj5;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/nj5;

    invoke-direct {v0}, Lyads/nj5;-><init>()V

    sput-object v0, Lyads/nj5;->a:Lyads/nj5;

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

    sput-object v0, Lyads/nj5;->b:Ljava/util/List;

    sput-object v1, Lyads/nj5;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/nj5;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lyads/fd0;

    const/4 p1, 0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p0}, Lyads/gd0;->a(Lyads/fd0;)Ljava/util/Calendar;

    move-result-object v0

    long-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    new-instance p1, Lyads/fd0;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    iget-object p0, p0, Lyads/fd0;->c:Ljava/util/TimeZone;

    invoke-direct {p1, p2, p3, p0}, Lyads/fd0;-><init>(JLjava/util/TimeZone;)V

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 44
    sget-object p0, Lyads/nj5;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "setYear"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/nj5;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/nj5;->d:Z

    return p0
.end method
