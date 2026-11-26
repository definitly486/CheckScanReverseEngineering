.class public final synthetic Lud3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lhd3;I)Lhd3;
    .locals 8

    sget-object v0, Lcu0;->SUSPEND:Lcu0;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez p1, :cond_1

    const/4 v3, -0x2

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    :goto_0
    if-ne p1, v2, :cond_2

    sget-object v0, Lcu0;->DROP_OLDEST:Lcu0;

    const/4 p1, 0x0

    :cond_2
    move v5, p1

    move-object v6, v0

    instance-of p1, p0, Lwm3;

    if-eqz p1, :cond_3

    check-cast p0, Lwm3;

    const/4 p1, 0x1

    invoke-static {p0, v1, v5, v6, p1}, Lwm3;->d(Lwm3;Lo22;ILcu0;I)Lhd3;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v2, Li91;

    const/4 v4, 0x0

    const/4 v7, 0x2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Li91;-><init>(Lhd3;Lo22;ILcu0;I)V

    return-object v2
.end method

.method public static final b(Lhd3;Lo22;)Lhd3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;",
            "Lo22;",
            ")",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p1, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lgx2;->b:Lgx2;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Lwm3;

    if-eqz v0, :cond_1

    check-cast p0, Lwm3;

    const/4 v0, 0x0

    const/4 v2, 0x6

    invoke-static {p0, p1, v0, v1, v2}, Lwm3;->d(Lwm3;Lo22;ILcu0;I)Lhd3;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Li91;

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Li91;-><init>(Lhd3;Lo22;ILcu0;I)V

    return-object v0

    :cond_2
    move-object v2, p1

    const-string p0, "Flow context cannot contain job in it. Had "

    invoke-static {v2, p0}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
