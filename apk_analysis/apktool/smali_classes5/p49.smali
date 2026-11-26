.class public final Lp49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lp49;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp49;->b:J

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lp49;

    iget-wide v0, p1, Lp49;->b:J

    iget-wide p0, p0, Lp49;->b:J

    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr p0, v2

    xor-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Laa4;->g(JJ)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lp49;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lp49;

    iget-wide v0, p1, Lp49;->b:J

    iget-wide p0, p0, Lp49;->b:J

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lp49;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lp49;->b:J

    const/16 p0, 0xa

    invoke-static {p0, v0, v1}, Lvp2;->e(IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
