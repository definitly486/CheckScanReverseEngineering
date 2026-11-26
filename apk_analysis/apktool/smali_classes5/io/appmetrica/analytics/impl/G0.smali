.class public abstract Lio/appmetrica/analytics/impl/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/appmetrica/analytics/impl/Pf;Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)Lio/appmetrica/analytics/impl/Ei;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/Ei;

    new-instance v1, Lio/appmetrica/analytics/impl/s0;

    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/impl/s0;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    new-instance p2, Lio/appmetrica/analytics/impl/eo;

    new-instance v2, Lio/appmetrica/analytics/impl/zb;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/zb;-><init>()V

    invoke-direct {p2, v2}, Lio/appmetrica/analytics/impl/eo;-><init>(Lio/appmetrica/analytics/impl/zb;)V

    new-instance v2, Lio/appmetrica/analytics/impl/Q4;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/impl/Q4;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    new-instance p0, Lio/appmetrica/analytics/impl/ok;

    invoke-direct {p0, p1, v1}, Lio/appmetrica/analytics/impl/ok;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s0;)V

    invoke-direct {v0, v1, p2, v2, p0}, Lio/appmetrica/analytics/impl/Ei;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/eo;Lio/appmetrica/analytics/impl/Q4;Lio/appmetrica/analytics/impl/ok;)V

    return-object v0
.end method

.method public static a(Landroid/os/Handler;Lio/appmetrica/analytics/impl/F0;)Lio/appmetrica/analytics/impl/P6;
    .locals 1

    .line 32
    new-instance v0, Lio/appmetrica/analytics/impl/P6;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/P6;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/O6;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lio/appmetrica/analytics/impl/P6;)Lio/appmetrica/analytics/impl/Pf;
    .locals 1

    .line 31
    new-instance v0, Lio/appmetrica/analytics/impl/Pf;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/Pf;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ei;Landroid/os/Handler;)Lio/appmetrica/analytics/impl/em;
    .locals 2

    .line 33
    new-instance v0, Lio/appmetrica/analytics/impl/em;

    .line 34
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/p4;->d(Landroid/content/Context;)Lio/appmetrica/analytics/impl/mm;

    move-result-object p0

    .line 35
    invoke-direct {v0, p1, p0, p2}, Lio/appmetrica/analytics/impl/em;-><init>(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/mm;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/if;Landroid/os/Handler;)Lio/appmetrica/analytics/impl/mg;
    .locals 2

    .line 36
    new-instance v0, Lio/appmetrica/analytics/impl/mg;

    .line 37
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->s()Z

    move-result v1

    .line 38
    invoke-direct {v0, p0, p1, p2, v1}, Lio/appmetrica/analytics/impl/mg;-><init>(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/if;Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/od;
    .locals 4

    .line 40
    new-instance v0, Lio/appmetrica/analytics/impl/od;

    .line 41
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v1

    .line 42
    iget-object v1, v1, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    .line 43
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v1

    .line 44
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/impl/p4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/if;

    move-result-object p0

    .line 45
    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    .line 46
    const-string v3, "client_modules"

    invoke-direct {v0, v1, p0, v3, v2}, Lio/appmetrica/analytics/impl/od;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/Kd;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/impl/Ei;Landroid/os/Handler;Lio/appmetrica/analytics/impl/em;)Lio/appmetrica/analytics/impl/ri;
    .locals 6

    .line 39
    new-instance v0, Lio/appmetrica/analytics/impl/ri;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/ri;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/impl/Ei;Landroid/os/Handler;Lio/appmetrica/analytics/impl/em;)V

    return-object v0
.end method
