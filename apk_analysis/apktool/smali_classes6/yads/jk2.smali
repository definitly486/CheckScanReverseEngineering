.class public final Lyads/jk2;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/jk2;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/jk2;

    invoke-direct {v0}, Lyads/jk2;-><init>()V

    sput-object v0, Lyads/jk2;->a:Lyads/jk2;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->d:Lyads/xo2;

    invoke-direct {v0, v1}, Lyads/w13;-><init>(Lyads/xo2;)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/jk2;->b:Ljava/util/List;

    sput-object v1, Lyads/jk2;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/jk2;->d:Z

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

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sget-object p0, Lyads/az5;->a:Lyads/az5;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p0, p3, p2}, Lyads/zo2;->a(Lyads/bz5;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 41
    sget-object p0, Lyads/jk2;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "sum"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/jk2;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/jk2;->d:Z

    return p0
.end method
