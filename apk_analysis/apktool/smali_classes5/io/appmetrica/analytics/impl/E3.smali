.class public final Lio/appmetrica/analytics/impl/E3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/K5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->f()Lio/appmetrica/analytics/impl/N3;

    move-result-object p0

    new-instance v0, Lio/appmetrica/analytics/impl/F3;

    sget-object v1, Lio/appmetrica/analytics/impl/f8;->f:Lio/appmetrica/analytics/impl/f8;

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/F3;-><init>(Ljava/util/Map;Lio/appmetrica/analytics/impl/f8;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/b8;->b(Lio/appmetrica/analytics/impl/g8;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/E3;->a(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
