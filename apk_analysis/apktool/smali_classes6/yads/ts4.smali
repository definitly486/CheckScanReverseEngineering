.class public final Lyads/ts4;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/ts4;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/ts4;

    invoke-direct {v0}, Lyads/ts4;-><init>()V

    sput-object v0, Lyads/ts4;->a:Lyads/ts4;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->c:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/ts4;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->g:Lyads/xo2;

    sput-object v0, Lyads/ts4;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/ts4;->d:Z

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

    invoke-static {p3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    new-instance p2, Lyads/fd0;

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3}, Lyads/fd0;-><init>(JLjava/util/TimeZone;)V

    return-object p2
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 26
    sget-object p0, Lyads/ts4;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "parseUnixTimeAsLocal"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/ts4;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/ts4;->d:Z

    return p0
.end method
