.class public final Lyads/vj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(F)F
    .locals 2

    .line 17
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static a()Lyads/hp0;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v1, Loi5;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Loi5;-><init>(I)V

    new-instance v2, Lyads/hp0;

    invoke-direct {v2, v1, v0}, Lyads/hp0;-><init>(Lnl3;Ljava/lang/Object;)V

    return-object v2
.end method
