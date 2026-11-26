.class public final Lw68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu7;


# instance fields
.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lw68;->b:J

    iput-wide p3, p0, Lw68;->c:J

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    const-string v2, " ms) cannot be negative"

    if-ltz p0, :cond_1

    cmp-long p0, p3, v0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "replayExpiration("

    invoke-static {p3, p4, p0, v2}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string p0, "stopTimeout("

    invoke-static {p1, p2, p0, v2}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b(Ly68;)Lhd3;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly68<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lhd3<",
            "Lcu7;",
            ">;"
        }
    .end annotation

    new-instance v1, Lw68$a;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lw68$a;-><init>(Lw68;Le02;)V

    sget p0, Lse3;->a:I

    new-instance v0, Lj91;

    const/4 v4, -0x2

    sget-object v5, Lcu0;->SUSPEND:Lcu0;

    sget-object v3, Lgx2;->b:Lgx2;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lj91;-><init>(Ldm3;Lhd3;Lo22;ILcu0;)V

    new-instance p0, Lw68$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, v6}, Lpg8;-><init>(ILe02;)V

    new-instance p1, Lke3;

    invoke-direct {p1, v0, p0}, Lke3;-><init>(Lhd3;Lbm3;)V

    invoke-static {p1}, Lzd3;->c(Lhd3;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lw68;

    if-eqz v0, :cond_0

    check-cast p1, Lw68;

    iget-wide v0, p1, Lw68;->b:J

    iget-wide v2, p0, Lw68;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lw68;->c:J

    iget-wide p0, p1, Lw68;->c:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lw68;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lw68;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Lar4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lar4;-><init>(I)V

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lw68;->b:J

    cmp-long v1, v3, v1

    const-string v2, "ms"

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "stopTimeout="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide v3, 0x7fffffffffffffffL

    iget-wide v5, p0, Lw68;->c:J

    cmp-long p0, v5, v3

    if-gez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "replayExpiration="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object v1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SharingStarted.WhileSubscribed("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x29

    invoke-static {p0, v0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
