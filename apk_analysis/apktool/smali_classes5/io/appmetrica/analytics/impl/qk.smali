.class public final Lio/appmetrica/analytics/impl/qk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentModuleReporter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i5;

.field public final b:Lio/appmetrica/analytics/impl/Jk;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Jk;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/impl/qk;->a:Lio/appmetrica/analytics/impl/i5;

    .line 15
    iput-object p2, p0, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Jk;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Jk;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lio/appmetrica/analytics/impl/Jk;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/Jk;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/qk;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Jk;)V

    return-void
.end method


# virtual methods
.method public final handleReport(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Jk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Jk;->a(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/qk;->a:Lio/appmetrica/analytics/impl/i5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/i5;->a(Lio/appmetrica/analytics/impl/a6;)V

    return-void
.end method
