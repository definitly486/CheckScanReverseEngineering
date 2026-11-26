.class public final Lio/appmetrica/analytics/impl/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Kc;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/F0;

.field public final synthetic b:Lio/appmetrica/analytics/AppMetricaConfig;

.field public final synthetic c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/F0;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/E0;->a:Lio/appmetrica/analytics/impl/F0;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/E0;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/E0;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/wc;
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/E0;->a:Lio/appmetrica/analytics/impl/F0;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/F0;->g:Lio/appmetrica/analytics/impl/ri;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/E0;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/E0;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/F0;->i:Lio/appmetrica/analytics/impl/P7;

    new-instance v3, Lio/appmetrica/analytics/impl/o0;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/P7;->j:Ljava/util/List;

    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/P7;->h:Z

    invoke-direct {v3, v4, v0}, Lio/appmetrica/analytics/impl/o0;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1, v2, p0, v3}, Lio/appmetrica/analytics/impl/ri;->c(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/o0;)Lio/appmetrica/analytics/impl/wc;

    move-result-object p0

    return-object p0
.end method
