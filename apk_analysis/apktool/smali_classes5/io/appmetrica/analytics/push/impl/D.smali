.class public final Lio/appmetrica/analytics/push/impl/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/push/impl/D;->a:Ljava/util/HashMap;

    new-instance p0, Lio/appmetrica/analytics/push/impl/O0;

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/O0;-><init>()V

    const-string v1, "io.appmetrica.analytics.push.command.INIT_PUSH_SERVICE"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lio/appmetrica/analytics/push/impl/h2;

    new-instance v1, Lio/appmetrica/analytics/push/impl/z0;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/impl/z0;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/push/impl/y0;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/y0;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/push/impl/P0;

    invoke-direct {v3}, Lio/appmetrica/analytics/push/impl/P0;-><init>()V

    invoke-direct {p0, v1, v2, v3}, Lio/appmetrica/analytics/push/impl/h2;-><init>(Lio/appmetrica/analytics/push/impl/z0;Lio/appmetrica/analytics/push/impl/y0;Lio/appmetrica/analytics/push/impl/v2;)V

    const-string v1, "io.appmetrica.analytics.push.command.INIT_PUSH_TOKEN"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lio/appmetrica/analytics/push/impl/G;

    new-instance v1, Lio/appmetrica/analytics/push/impl/h2;

    new-instance v2, Lio/appmetrica/analytics/push/impl/z0;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/z0;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/push/impl/y0;

    invoke-direct {v3}, Lio/appmetrica/analytics/push/impl/y0;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/push/impl/E2;

    invoke-direct {v4}, Lio/appmetrica/analytics/push/impl/E2;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/push/impl/h2;-><init>(Lio/appmetrica/analytics/push/impl/z0;Lio/appmetrica/analytics/push/impl/y0;Lio/appmetrica/analytics/push/impl/v2;)V

    new-instance v2, Lio/appmetrica/analytics/push/impl/i2;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/i2;-><init>()V

    invoke-direct {p0, v1, v2}, Lio/appmetrica/analytics/push/impl/G;-><init>(Lio/appmetrica/analytics/push/impl/C;Lio/appmetrica/analytics/push/impl/E;)V

    const-string v1, "io.appmetrica.analytics.push.command.UPDATE_PUSH_TOKEN"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lio/appmetrica/analytics/push/impl/G;

    new-instance v1, Lio/appmetrica/analytics/push/impl/M1;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/impl/M1;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/push/impl/N1;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/N1;-><init>()V

    invoke-direct {p0, v1, v2}, Lio/appmetrica/analytics/push/impl/G;-><init>(Lio/appmetrica/analytics/push/impl/C;Lio/appmetrica/analytics/push/impl/E;)V

    const-string v1, "io.appmetrica.analytics.push.command.PROCESS_PUSH"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lio/appmetrica/analytics/push/impl/G;

    new-instance v1, Lio/appmetrica/analytics/push/impl/h2;

    new-instance v2, Lio/appmetrica/analytics/push/impl/z0;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/z0;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/push/impl/y0;

    invoke-direct {v3}, Lio/appmetrica/analytics/push/impl/y0;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/push/impl/E2;

    invoke-direct {v4}, Lio/appmetrica/analytics/push/impl/E2;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/push/impl/h2;-><init>(Lio/appmetrica/analytics/push/impl/z0;Lio/appmetrica/analytics/push/impl/y0;Lio/appmetrica/analytics/push/impl/v2;)V

    new-instance v2, Lio/appmetrica/analytics/push/impl/i2;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/i2;-><init>()V

    invoke-direct {p0, v1, v2}, Lio/appmetrica/analytics/push/impl/G;-><init>(Lio/appmetrica/analytics/push/impl/C;Lio/appmetrica/analytics/push/impl/E;)V

    const-string v1, "io.appmetrica.analytics.push.command.SEND_PUSH_TOKEN_ON_REFRESH"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lio/appmetrica/analytics/push/impl/h2;

    new-instance v1, Lio/appmetrica/analytics/push/impl/z0;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/impl/z0;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/push/impl/y0;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/y0;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/push/impl/E2;

    invoke-direct {v3}, Lio/appmetrica/analytics/push/impl/E2;-><init>()V

    invoke-direct {p0, v1, v2, v3}, Lio/appmetrica/analytics/push/impl/h2;-><init>(Lio/appmetrica/analytics/push/impl/z0;Lio/appmetrica/analytics/push/impl/y0;Lio/appmetrica/analytics/push/impl/v2;)V

    const-string v1, "io.appmetrica.analytics.push.command.SEND_PUSH_TOKEN_MANUALLY"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lio/appmetrica/analytics/push/impl/D2;

    new-instance v1, Lio/appmetrica/analytics/push/impl/x0;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/impl/x0;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/push/impl/w0;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/w0;-><init>()V

    invoke-direct {p0, v1, v2}, Lio/appmetrica/analytics/push/impl/D2;-><init>(Lio/appmetrica/analytics/push/impl/x0;Lio/appmetrica/analytics/push/impl/w0;)V

    const-string v1, "io.appmetrica.analytics.push.command.UPDATE_SYSTEM_INFO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
