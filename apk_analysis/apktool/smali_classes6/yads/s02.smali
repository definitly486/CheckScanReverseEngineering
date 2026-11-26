.class public abstract Lyads/s02;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/r02;)Lyads/as2;
    .locals 2

    instance-of v0, p0, Lyads/si2;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/si2;

    iget-object p0, p0, Lyads/si2;->j:Lyads/as2;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/gc1;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/gc1;

    iget-object p0, p0, Lyads/gc1;->a:Lyads/as2;

    return-object p0

    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Lyads/xr2;

    invoke-direct {v0, p0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
