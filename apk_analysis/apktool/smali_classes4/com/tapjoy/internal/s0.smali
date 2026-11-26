.class public final Lcom/tapjoy/internal/s0;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doubleValue()D
    .locals 2

    iget-object p0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    check-cast p1, Ljava/lang/Number;

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tapjoy/internal/s0;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/tapjoy/internal/s0;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v2

    :cond_6
    instance-of v1, p1, Ljava/lang/Double;

    iget-object p0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-nez p0, :cond_7

    return v0

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    return v2
.end method

.method public final floatValue()F
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public final intValue()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    long-to-int p0, v0

    return p0

    :catch_1
    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public final longValue()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/s0;->a:Ljava/lang/String;

    return-object p0
.end method
