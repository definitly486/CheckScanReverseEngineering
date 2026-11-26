.class public final Lyads/em3;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/em3;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/em3;

    invoke-direct {v0}, Lyads/em3;-><init>()V

    sput-object v0, Lyads/em3;->a:Lyads/em3;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->c:Lyads/xo2;

    invoke-direct {v0, v1}, Lyads/w13;-><init>(Lyads/xo2;)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/em3;->b:Ljava/util/List;

    sput-object v1, Lyads/em3;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/em3;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v0, p2, 0x1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Lyads/zy5;->a:Lyads/zy5;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p2, p3}, Lyads/zo2;->a(Lyads/bz5;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, p3

    check-cast p0, Ljava/lang/Long;

    move p2, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 56
    sget-object p0, Lyads/em3;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "sub"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/em3;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/em3;->d:Z

    return p0
.end method
