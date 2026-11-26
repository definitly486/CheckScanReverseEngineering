.class public abstract Lyads/x95;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/b3;)J
    .locals 2

    .line 22
    invoke-interface {p0}, Lyads/b3;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(Lyads/l15;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lyads/l15;->a:J

    return-wide v0
.end method

.method public static a(Lyads/jk4;Lyads/l15;Lyads/b3;Lyads/tt4;Lll3;)Lyads/z95;
    .locals 6

    new-instance v0, Lyads/z95;

    new-instance v2, Lz12;

    const/4 v1, 0x6

    invoke-direct {v2, p2, v1}, Lz12;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lhk;

    const/4 p2, 0x5

    invoke-direct {v4, p1, p2}, Lhk;-><init>(Ljava/lang/Object;I)V

    move-object v1, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lyads/z95;-><init>(Lyads/jk4;Lll3;Lyads/tt4;Lll3;Lll3;)V

    return-object v0
.end method
