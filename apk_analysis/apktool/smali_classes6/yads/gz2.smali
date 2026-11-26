.class public abstract Lyads/gz2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ldc4;)Lj59;
    .locals 1

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Ldc4;->b:Z

    .line 46
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lyads/fz2;
    .locals 2

    new-instance v0, Lxr2;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lxr2;-><init>(I)V

    invoke-static {v0}, Lbd4;->a(Lnl3;)Lad4;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lyads/fz2;->Companion:Lyads/ez2;

    invoke-virtual {v1}, Lyads/ez2;->serializer()Ldf4;

    move-result-object v1

    check-cast v1, Lxl2;

    invoke-virtual {v0, v1, p0}, Lxb4;->a(Lxl2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/fz2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    nop

    instance-of v0, p0, Lk57$a;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lyads/fz2;

    return-object p0
.end method
