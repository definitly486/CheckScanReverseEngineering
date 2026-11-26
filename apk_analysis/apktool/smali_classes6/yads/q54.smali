.class public abstract Lyads/q54;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lyads/qy4;
    .locals 1

    sget-object v0, Lyads/iy4;->f:Lyads/iy4;

    .line 44
    invoke-virtual {v0}, Lyads/iy4;->b()Ljava/lang/String;

    .line 45
    invoke-static {}, Lyads/ry4;->a()Lyads/qy4;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;Ljava/lang/String;)Lyads/qy4;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v0, :cond_0

    sget-object p0, Lyads/iy4;->d:Lyads/iy4;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_1

    sget-object p0, Lyads/iy4;->e:Lyads/iy4;

    goto :goto_0

    :cond_1
    instance-of p0, p0, Ljava/util/NoSuchElementException;

    if-eqz p0, :cond_2

    sget-object p0, Lyads/iy4;->f:Lyads/iy4;

    goto :goto_0

    :cond_2
    sget-object p0, Lyads/iy4;->g:Lyads/iy4;

    :goto_0
    invoke-virtual {p0}, Lyads/iy4;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lyads/iy4;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lyads/ry4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lyads/qy4;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lyads/qy4;
    .locals 2

    .line 40
    sget-object v0, Lyads/iy4;->f:Lyads/iy4;

    .line 41
    invoke-virtual {v0}, Lyads/iy4;->b()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lyads/iy4;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 43
    invoke-static {p0, v1, v0}, Lyads/ry4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lyads/qy4;

    move-result-object p0

    return-object p0
.end method
