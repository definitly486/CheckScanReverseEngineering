.class public final Lio/appmetrica/analytics/impl/Lg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/am;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Qm;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Qm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Lg;->a:Lio/appmetrica/analytics/impl/Qm;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lg;->a:Lio/appmetrica/analytics/impl/Qm;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->c()Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->getNetworkCore()Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/networktasks/internal/NetworkCore;->startTask(Lio/appmetrica/analytics/networktasks/internal/NetworkTask;)V

    :cond_0
    return-void
.end method
