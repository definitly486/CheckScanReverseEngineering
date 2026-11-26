.class public final Lio/appmetrica/analytics/impl/Hi;
.super Lio/appmetrica/analytics/impl/L4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/I4;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/L4;-><init>(Lio/appmetrica/analytics/impl/I4;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)Z
    .locals 0

    iget-object p1, p1, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p2, "io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/L4;->a:Lio/appmetrica/analytics/impl/I4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/I4;->a(Landroid/os/ResultReceiver;)V

    const/4 p0, 0x0

    return p0
.end method
