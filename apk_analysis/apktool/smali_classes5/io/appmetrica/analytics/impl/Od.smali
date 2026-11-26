.class public final Lio/appmetrica/analytics/impl/Od;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Vg;

.field public final b:Lio/appmetrica/analytics/impl/K0;

.field public final c:Lio/appmetrica/analytics/impl/Xd;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Vg;Lio/appmetrica/analytics/impl/K0;Lio/appmetrica/analytics/impl/Xd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Od;->a:Lio/appmetrica/analytics/impl/Vg;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Od;->b:Lio/appmetrica/analytics/impl/K0;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Od;->c:Lio/appmetrica/analytics/impl/Xd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Od;->a:Lio/appmetrica/analytics/impl/Vg;

    new-instance v1, Lio/appmetrica/analytics/impl/d4;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Od;->b:Lio/appmetrica/analytics/impl/K0;

    move-object v3, v2

    iget-object v2, v3, Lio/appmetrica/analytics/impl/K0;->a:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v4, Lio/appmetrica/analytics/impl/K0;->b:Ljava/lang/String;

    iget v4, v4, Lio/appmetrica/analytics/impl/K0;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Od;->b:Lio/appmetrica/analytics/impl/K0;

    move-object v6, v5

    iget-object v5, v6, Lio/appmetrica/analytics/impl/K0;->e:Ljava/lang/String;

    iget-object v6, v6, Lio/appmetrica/analytics/impl/K0;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/d4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Od;->c:Lio/appmetrica/analytics/impl/Xd;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Xd;->b:Lio/appmetrica/analytics/impl/pb;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Xd;->a:Lio/appmetrica/analytics/impl/J0;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/J0;->c:Ljava/lang/String;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/J0;->f:Lio/appmetrica/analytics/impl/K0;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/K0;->a:Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Xd;->c:Lio/appmetrica/analytics/impl/be;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/Xd;->a:Lio/appmetrica/analytics/impl/J0;

    check-cast v5, Lio/appmetrica/analytics/impl/B6;

    invoke-virtual {v5, v6}, Lio/appmetrica/analytics/impl/B6;->a(Lio/appmetrica/analytics/impl/J0;)J

    move-result-wide v5

    sget-object v7, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "payload_crash_id"

    invoke-virtual {v7, v8, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lio/appmetrica/analytics/impl/a4;

    iget v2, v2, Lio/appmetrica/analytics/impl/pb;->a:I

    const-string v8, ""

    invoke-direct {v4, v8, v8, v2, v3}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {v4, v5, v6}, Lio/appmetrica/analytics/impl/a6;->b(J)V

    if-eqz p1, :cond_0

    invoke-virtual {v4, p1}, Lio/appmetrica/analytics/impl/a4;->f(Ljava/lang/String;)Lio/appmetrica/analytics/impl/a4;

    :cond_0
    iput-object v7, v4, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xd;->a:Lio/appmetrica/analytics/impl/J0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/J0;->f:Lio/appmetrica/analytics/impl/K0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K0;->f:Ljava/lang/String;

    iput-object p0, v4, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    new-instance p0, Lio/appmetrica/analytics/impl/B4;

    new-instance p1, Lio/appmetrica/analytics/impl/pm;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/pm;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/A4;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/A4;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lio/appmetrica/analytics/impl/B4;-><init>(Lio/appmetrica/analytics/impl/pm;Lio/appmetrica/analytics/impl/A4;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v4, p0}, Lio/appmetrica/analytics/impl/Vg;->a(Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V

    return-void
.end method

.method public final bridge synthetic consume(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Od;->a(Ljava/lang/String;)V

    return-void
.end method
