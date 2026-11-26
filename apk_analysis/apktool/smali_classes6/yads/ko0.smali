.class public abstract Lyads/ko0;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/xo2;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lyads/u13;-><init>()V

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->j:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v1, Lyads/w13;

    sget-object v2, Lyads/xo2;->f:Lyads/xo2;

    invoke-direct {v1, v2}, Lyads/w13;-><init>(Lyads/xo2;)V

    filled-new-array {v0, v1}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyads/ko0;->a:Ljava/util/List;

    sget-object v0, Lyads/xo2;->c:Lyads/xo2;

    iput-object v0, p0, Lyads/ko0;->b:Lyads/xo2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyads/ko0;->f()Z

    move-result p2

    invoke-static {p1, p3, p2}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long p0, p0

    goto :goto_0

    :cond_0
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p2, p1, Ljava/math/BigInteger;

    const-string v0, "Integer overflow."

    const/4 v1, 0x0

    if-nez p2, :cond_6

    instance-of p2, p1, Ljava/math/BigDecimal;

    const-string v2, "Cannot convert value to integer."

    if-nez p2, :cond_5

    instance-of p2, p1, Ljava/lang/Double;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double p2, v3, v5

    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double p2, v3, v5

    if-gtz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lw65;->c(D)J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    long-to-double v5, v3

    sub-double/2addr p1, v5

    const-wide/16 v5, 0x0

    cmpg-double p1, p1, v5

    if-nez p1, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyads/ko0;->f()Z

    move-result p0

    invoke-static {p1, p3, v2, p0}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyads/ko0;->f()Z

    move-result p0

    invoke-static {p1, p3, v0, p0}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    throw v1

    :cond_4
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lyads/ko0;->b:Lyads/xo2;

    invoke-virtual {p0}, Lyads/ko0;->f()Z

    move-result p0

    invoke-static {p2, p3, v0, p1, p0}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Lyads/xo2;Ljava/lang/Object;Z)V

    throw v1

    :cond_5
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyads/ko0;->f()Z

    move-result p0

    invoke-static {p1, p3, v2, p0}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    throw v1

    :cond_6
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyads/ko0;->f()Z

    move-result p0

    invoke-static {p1, p3, v0, p0}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    throw v1
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 165
    iget-object p0, p0, Lyads/ko0;->a:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/ko0;->b:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
