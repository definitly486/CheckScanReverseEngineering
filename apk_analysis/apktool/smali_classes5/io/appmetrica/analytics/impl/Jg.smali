.class public Lio/appmetrica/analytics/impl/Jg;
.super Lio/appmetrica/analytics/impl/Ja;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zi;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ja;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Ug;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ja;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/zi;->m:Lio/appmetrica/analytics/impl/bh;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ja;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zi;->b:Lio/appmetrica/analytics/impl/uh;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
