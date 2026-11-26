.class public abstract Lio/appmetrica/analytics/impl/u6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ta;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/t6;

.field public final b:Lio/appmetrica/analytics/ICrashTransformer;

.field public final c:Lio/appmetrica/analytics/impl/Z9;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/t6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Z9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/u6;->a:Lio/appmetrica/analytics/impl/t6;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/u6;->b:Lio/appmetrica/analytics/ICrashTransformer;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/u6;->c:Lio/appmetrica/analytics/impl/Z9;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/ICrashTransformer;
    .locals 0

    .line 68
    iget-object p0, p0, Lio/appmetrica/analytics/impl/u6;->b:Lio/appmetrica/analytics/ICrashTransformer;

    return-object p0
.end method

.method public final a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/Y;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/u6;->a:Lio/appmetrica/analytics/impl/t6;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/t6;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/u6;->b:Lio/appmetrica/analytics/ICrashTransformer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/ICrashTransformer;->process(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/u6;->c:Lio/appmetrica/analytics/impl/Z9;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z9;->b:Lio/appmetrica/analytics/impl/kn;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/u6;->c:Lio/appmetrica/analytics/impl/Z9;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Z9;->c:Lio/appmetrica/analytics/impl/j3;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Lio/appmetrica/analytics/impl/fo;->a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/Y;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/co;

    move-result-object p1

    check-cast p0, Lio/appmetrica/analytics/impl/Ih;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ih;->d:Lio/appmetrica/analytics/impl/io;

    check-cast p0, Lio/appmetrica/analytics/impl/uc;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/io;->a:Lio/appmetrica/analytics/impl/db;

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/db;->a()Lio/appmetrica/analytics/impl/cb;

    move-result-object p2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/uc;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    invoke-interface {p2, p0}, Lio/appmetrica/analytics/impl/cb;->a(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/fb;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/fb;->a(Lio/appmetrica/analytics/impl/co;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/t6;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/u6;->a:Lio/appmetrica/analytics/impl/t6;

    return-object p0
.end method
