.class public final Lyads/xs5;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xs5;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/xs5;

    invoke-direct {v0}, Lyads/xs5;-><init>()V

    sput-object v0, Lyads/xs5;->a:Lyads/xs5;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v3, Lyads/w13;

    sget-object v4, Lyads/xo2;->c:Lyads/xo2;

    invoke-direct {v3, v4, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v5, Lyads/w13;

    invoke-direct {v5, v4, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v3, v5}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/xs5;->b:Ljava/util/List;

    sput-object v1, Lyads/xs5;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/xs5;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 7

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    const-string v4, "substring"

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v5, v2

    cmp-long v2, v0, v5

    if-gtz v2, :cond_1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p1, p1

    long-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Indexes should be in ascending order."

    invoke-static {v4, p0, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    throw v3

    :cond_1
    const-string p0, "Indexes are out of bounds."

    invoke-static {v4, p0, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    throw v3
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 79
    sget-object p0, Lyads/xs5;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "substring"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/xs5;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/xs5;->d:Z

    return p0
.end method
