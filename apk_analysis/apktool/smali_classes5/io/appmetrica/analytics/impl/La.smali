.class public final Lio/appmetrica/analytics/impl/La;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/HostRetryInfoProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/mf;

.field public final b:Lio/appmetrica/analytics/impl/ge;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/mf;Lio/appmetrica/analytics/impl/ge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/La;->a:Lio/appmetrica/analytics/impl/mf;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/La;->b:Lio/appmetrica/analytics/impl/ge;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/ge;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/La;->b:Lio/appmetrica/analytics/impl/ge;

    return-object p0
.end method

.method public final getLastAttemptTimeSeconds()J
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/La;->a:Lio/appmetrica/analytics/impl/mf;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/La;->b:Lio/appmetrica/analytics/impl/ge;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lio/appmetrica/analytics/impl/mf;->a(Lio/appmetrica/analytics/impl/ge;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextSendAttemptNumber()I
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/La;->a:Lio/appmetrica/analytics/impl/mf;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/La;->b:Lio/appmetrica/analytics/impl/ge;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lio/appmetrica/analytics/impl/mf;->a(Lio/appmetrica/analytics/impl/ge;I)I

    move-result p0

    return p0
.end method

.method public final saveLastAttemptTimeSeconds(J)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/La;->a:Lio/appmetrica/analytics/impl/mf;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/La;->b:Lio/appmetrica/analytics/impl/ge;

    invoke-virtual {v0, p0, p1, p2}, Lio/appmetrica/analytics/impl/mf;->b(Lio/appmetrica/analytics/impl/ge;J)Lio/appmetrica/analytics/impl/mf;

    return-void
.end method

.method public final saveNextSendAttemptNumber(I)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/La;->a:Lio/appmetrica/analytics/impl/mf;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/La;->b:Lio/appmetrica/analytics/impl/ge;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/mf;->b(Lio/appmetrica/analytics/impl/ge;I)Lio/appmetrica/analytics/impl/mf;

    return-void
.end method
