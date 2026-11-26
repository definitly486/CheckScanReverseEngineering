.class public final Lio/appmetrica/analytics/impl/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ug;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ug;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ug;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/ug;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/ug;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/ug;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/qg;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/ug;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/ug;->a(Lio/appmetrica/analytics/impl/qg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/ug;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/ug;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " referrer"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/impl/Cj;

    invoke-direct {v2, p0, v0}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    new-instance v1, Lio/appmetrica/analytics/impl/wg;

    invoke-direct {v1, p0, v0}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method
