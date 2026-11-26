.class public final Lio/appmetrica/analytics/impl/va;
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
    .locals 3

    iget-object p1, p1, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "io.appmetrica.analytics.impl.IdentifiersData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/ib;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/ib;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p2, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/I4;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/I4;->d:Lio/appmetrica/analytics/impl/Gh;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Gh;->a:Lio/appmetrica/analytics/impl/A4;

    iget-object v0, p2, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    sget-object v2, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->c()Lio/appmetrica/analytics/impl/X;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/X;->c(Z)V

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->h()Lio/appmetrica/analytics/impl/S6;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/S6;->b(Ljava/lang/Boolean;)V

    :cond_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/L4;->a:Lio/appmetrica/analytics/impl/I4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/I4;->a(Lio/appmetrica/analytics/impl/ib;)V

    const/4 p0, 0x0

    return p0
.end method
