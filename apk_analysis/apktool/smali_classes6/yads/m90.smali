.class public final Lyads/m90;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/m90;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/m90;

    invoke-direct {v0}, Lyads/m90;-><init>()V

    sput-object v0, Lyads/m90;->a:Lyads/m90;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->d:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/m90;->b:Ljava/util/List;

    sput-object v1, Lyads/m90;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/m90;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    invoke-static {p3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4202a05f20000000L    # 1.0E10

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p2, "cot"

    invoke-static {p2, p0, p1}, Lyads/e26;->a(Ljava/lang/String;D)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 53
    sget-object p0, Lyads/m90;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "cot"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/m90;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/m90;->d:Z

    return p0
.end method
