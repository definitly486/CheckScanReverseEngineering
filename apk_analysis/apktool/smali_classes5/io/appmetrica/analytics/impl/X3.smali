.class public final Lio/appmetrica/analytics/impl/X3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/ProcessDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMainProcess()Z
    .locals 0

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p4;->a:Lio/appmetrica/analytics/impl/E6;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/E6;->b()Z

    move-result p0

    return p0
.end method
