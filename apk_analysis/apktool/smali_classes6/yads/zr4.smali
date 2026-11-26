.class public final Lyads/zr4;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/zr4;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/zr4;

    invoke-direct {v0}, Lyads/zr4;-><init>()V

    sput-object v0, Lyads/zr4;->a:Lyads/zr4;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v3, Lyads/w13;

    sget-object v4, Lyads/xo2;->c:Lyads/xo2;

    invoke-direct {v3, v4, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v4, Lyads/w13;

    invoke-direct {v4, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v3, v4}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/zr4;->b:Ljava/util/List;

    sput-object v1, Lyads/zr4;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/zr4;->d:Z

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

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, p2, v0, p3}, Lyads/qs5;->a(Lyads/yo2;Lyads/uo2;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 50
    sget-object p0, Lyads/zr4;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "padStart"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/zr4;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/zr4;->d:Z

    return p0
.end method
