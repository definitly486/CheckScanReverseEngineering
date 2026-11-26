.class public final Lio/appmetrica/analytics/impl/C4;
.super Lio/appmetrica/analytics/impl/D4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zi;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/D4;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/pb;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/pb;",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Ug;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/impl/I9;->h:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/D4;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/zi;->s:Lio/appmetrica/analytics/impl/sd;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lio/appmetrica/analytics/impl/I9;->b:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/D4;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zi;->c:Lio/appmetrica/analytics/impl/wh;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
