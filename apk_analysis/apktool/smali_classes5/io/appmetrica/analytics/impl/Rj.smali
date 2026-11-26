.class public final Lio/appmetrica/analytics/impl/Rj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ab;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/hk;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/hk;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rj;->a:Lio/appmetrica/analytics/impl/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/bb;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rj;->a:Lio/appmetrica/analytics/impl/hk;

    check-cast p0, Lio/appmetrica/analytics/impl/qd;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/qd;->a()Lio/appmetrica/analytics/impl/gk;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/gk;->a:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/gk;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
