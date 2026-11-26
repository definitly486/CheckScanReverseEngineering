.class public final Lio/appmetrica/analytics/impl/Hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Va;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Va;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Va;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;F)Lio/appmetrica/analytics/impl/Va;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;F)Lio/appmetrica/analytics/impl/Va;

    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Va;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Va;

    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Va;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Va;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Va;
    .locals 1

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Va;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Va;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Va;

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Va;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Va;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final flushAsync()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Va;->flushAsync()V

    return-void
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Va;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Va;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Va;->remove(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Va;

    return-object p0
.end method
