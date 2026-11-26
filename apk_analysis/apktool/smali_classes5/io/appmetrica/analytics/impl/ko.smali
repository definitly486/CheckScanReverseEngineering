.class public final Lio/appmetrica/analytics/impl/ko;
.super Lio/appmetrica/analytics/impl/L4;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/S6;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/I4;Lio/appmetrica/analytics/impl/S6;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/L4;-><init>(Lio/appmetrica/analytics/impl/I4;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ko;->b:Lio/appmetrica/analytics/impl/S6;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)Z
    .locals 3

    iget-object p1, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/I4;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/I4;->d:Lio/appmetrica/analytics/impl/Gh;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Gh;->a:Lio/appmetrica/analytics/impl/A4;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ko;->b:Lio/appmetrica/analytics/impl/S6;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/S6;->a(Ljava/lang/Boolean;)V

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->m()Lio/appmetrica/analytics/impl/Zb;

    move-result-object p0

    iget-object p2, p1, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p0, v1}, Lio/appmetrica/analytics/impl/cc;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/impl/cc;->a(Z)V

    :cond_1
    :goto_0
    iget-object p2, p1, Lio/appmetrica/analytics/impl/A4;->c:Landroid/location/Location;

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/impl/cc;->a(Landroid/location/Location;)V

    iget-object p0, p1, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    sget-object p1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->c()Lio/appmetrica/analytics/impl/X;

    move-result-object p1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/X;->b(Z)V

    return v0
.end method
