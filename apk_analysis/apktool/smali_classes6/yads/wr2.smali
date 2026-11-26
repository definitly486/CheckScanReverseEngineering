.class public final Lyads/wr2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Lyads/xr2;
    .locals 2

    sget-object v0, Lyads/et4;->a:Lyads/et4;

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lyads/zr2;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lyads/zr2;-><init>(Ljava/lang/String;Lyads/et4;)V

    return-object v1

    :cond_0
    new-instance v0, Lyads/xr2;

    invoke-direct {v0, p0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
