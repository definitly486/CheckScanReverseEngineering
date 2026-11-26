.class public final Lyads/u43;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/u43;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/u43;

    invoke-direct {v0}, Lyads/u43;-><init>()V

    sput-object v0, Lyads/u43;->a:Lyads/u43;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->c:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/u43;->b:Ljava/util/List;

    sput-object v1, Lyads/u43;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/u43;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-ltz p2, :cond_0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    const-wide/16 p2, 0x3c

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Failed to evaluate [getIntervalSeconds(-1)]. Expecting non-negative number of milliseconds."

    invoke-static {p0}, Lqg;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 38
    sget-object p0, Lyads/u43;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "getIntervalSeconds"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/u43;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/u43;->d:Z

    return p0
.end method
