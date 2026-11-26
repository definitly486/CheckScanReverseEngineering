.class public abstract Lio/appmetrica/analytics/impl/R2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Nl;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Nl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final flushAsync()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Nl;->flushAsync()V

    return-void
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    check-cast p0, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Kd;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    check-cast p0, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Kd;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/R2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {v0, p0, p2, p3}, Lio/appmetrica/analytics/impl/Kd;->a(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/R2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {v0, p0, p2}, Lio/appmetrica/analytics/impl/Kd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/R2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/kf;

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    check-cast p0, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/kf;

    return-void
.end method

.method public final putLong(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/R2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/kf;

    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/R2;->a:Lio/appmetrica/analytics/impl/Nl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/R2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/kf;

    return-void
.end method
