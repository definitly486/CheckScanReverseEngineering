.class public final Lyads/bt5;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/bt5;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/bt5;

    invoke-direct {v0}, Lyads/bt5;-><init>()V

    sput-object v0, Lyads/bt5;->a:Lyads/bt5;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/bt5;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->d:Lyads/xo2;

    sput-object v0, Lyads/bt5;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/bt5;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 5

    const-string p0, "Unable to convert value to Number."

    const-string p1, "toNumber"

    invoke-static {p3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double p2, v1, v3

    if-eqz p2, :cond_0

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpg-double p2, v1, v3

    if-eqz p2, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    invoke-static {p1, p0, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 49
    sget-object p0, Lyads/bt5;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "toNumber"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/bt5;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/bt5;->d:Z

    return p0
.end method
