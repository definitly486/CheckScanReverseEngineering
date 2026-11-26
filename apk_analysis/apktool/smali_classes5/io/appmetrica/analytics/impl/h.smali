.class public final Lio/appmetrica/analytics/impl/h;
.super Lio/appmetrica/analytics/impl/Ja;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/b5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zi;Lio/appmetrica/analytics/impl/b5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ja;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/h;->b:Lio/appmetrica/analytics/impl/b5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
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

    iget-object v0, v0, Lio/appmetrica/analytics/impl/zi;->p:Lio/appmetrica/analytics/impl/w2;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ja;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/zi;->o:Lio/appmetrica/analytics/impl/lj;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ja;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/zi;->r:Lio/appmetrica/analytics/impl/kj;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ja;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/zi;->g:Lio/appmetrica/analytics/impl/ah;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/h;->b:Lio/appmetrica/analytics/impl/b5;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/b5;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ja;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zi;->q:Lio/appmetrica/analytics/impl/lk;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
