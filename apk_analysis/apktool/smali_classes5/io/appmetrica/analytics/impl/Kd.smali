.class public abstract Lio/appmetrica/analytics/impl/Kd;
.super Lio/appmetrica/analytics/impl/kf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Va;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/Kd;-><init>(Lio/appmetrica/analytics/impl/Va;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Va;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/kf;-><init>(Lio/appmetrica/analytics/impl/Va;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;J)J
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Va;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Nl;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Nl;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Nl;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Nl;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public e(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Nl;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/kf;->f(Ljava/lang/String;)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    return-object p0
.end method

.method public abstract g(Ljava/lang/String;)Ljava/lang/String;
.end method
