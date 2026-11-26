.class public final Lyads/c30;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/c30;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/c30;

    invoke-direct {v0}, Lyads/c30;-><init>()V

    sput-object v0, Lyads/c30;->a:Lyads/c30;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->d:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v3, Lyads/w13;

    invoke-direct {v3, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v4, Lyads/w13;

    invoke-direct {v4, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v3, v4}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/c30;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->h:Lyads/xo2;

    sput-object v0, Lyads/c30;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/c30;->d:Z

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

    :try_start_0
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/u20;->a(D)I

    move-result p0

    const/4 p1, 0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lyads/u20;->a(D)I

    move-result p1

    const/4 p2, 0x2

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lyads/u20;->a(D)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 p0, p0, 0x10

    const/high16 p3, -0x1000000

    or-int/2addr p0, p3

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    new-instance p1, Lyads/l20;

    invoke-direct {p1, p0}, Lyads/l20;-><init>(I)V

    return-object p1

    :catch_0
    const-string p0, "rgb"

    const-string p1, "Value out of range 0..1."

    invoke-static {p0, p1, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 78
    sget-object p0, Lyads/c30;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "rgb"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/c30;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/c30;->d:Z

    return p0
.end method
