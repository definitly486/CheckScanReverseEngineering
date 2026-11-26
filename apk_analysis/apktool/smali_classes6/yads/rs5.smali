.class public final Lyads/rs5;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/rs5;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/rs5;

    invoke-direct {v0}, Lyads/rs5;-><init>()V

    sput-object v0, Lyads/rs5;->a:Lyads/rs5;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v3, Lyads/w13;

    invoke-direct {v3, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v3}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/rs5;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->c:Lyads/xo2;

    sput-object v0, Lyads/rs5;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/rs5;->d:Z

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

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x2

    invoke-static {p1, p2, p0, p0, p3}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 31
    sget-object p0, Lyads/rs5;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "index"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/rs5;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/rs5;->d:Z

    return p0
.end method
