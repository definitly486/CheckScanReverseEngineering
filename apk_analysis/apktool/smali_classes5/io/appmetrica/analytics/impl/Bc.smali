.class public final Lio/appmetrica/analytics/impl/Bc;
.super Lio/appmetrica/analytics/impl/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Eg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/f;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Eg;)V

    return-void
.end method


# virtual methods
.method public final b(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V
    .locals 2

    iget-object v0, p2, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->m()Lio/appmetrica/analytics/impl/Zb;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/cc;->a(Z)V

    iget-object v0, p2, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/A4;->c:Landroid/location/Location;

    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/cc;->a(Landroid/location/Location;)V

    iget-object v0, p2, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->c()Lio/appmetrica/analytics/impl/X;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/X;->b(Z)V

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/f;->b:Lio/appmetrica/analytics/impl/Eg;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Eg;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V

    return-void
.end method
