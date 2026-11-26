.class public final Lio/appmetrica/analytics/impl/Y4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/I5;

.field public final b:Lio/appmetrica/analytics/impl/Rc;

.field public final c:Lio/appmetrica/analytics/impl/Rc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/De;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/De;-><init>(Lio/appmetrica/analytics/impl/Y6;)V

    new-instance v1, Lio/appmetrica/analytics/impl/I5;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/I5;-><init>(Lio/appmetrica/analytics/impl/Y6;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Y4;->a:Lio/appmetrica/analytics/impl/I5;

    new-instance p1, Lio/appmetrica/analytics/impl/Rc;

    new-instance v1, Lio/appmetrica/analytics/impl/X4;

    invoke-direct {v1, p2}, Lio/appmetrica/analytics/impl/X4;-><init>(Lio/appmetrica/analytics/impl/Tg;)V

    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/impl/Rc;-><init>(Lio/appmetrica/analytics/impl/Ee;Lll3;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y4;->b:Lio/appmetrica/analytics/impl/Rc;

    new-instance p1, Lio/appmetrica/analytics/impl/Rc;

    sget-object p2, Lio/appmetrica/analytics/impl/W4;->a:Lio/appmetrica/analytics/impl/W4;

    invoke-direct {p1, v0, p2}, Lio/appmetrica/analytics/impl/Rc;-><init>(Lio/appmetrica/analytics/impl/Ee;Lll3;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y4;->c:Lio/appmetrica/analytics/impl/Rc;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/R8;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y4;->a:Lio/appmetrica/analytics/impl/I5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y4;->b:Lio/appmetrica/analytics/impl/Rc;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/appmetrica/analytics/impl/R8;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/R8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y4;->c:Lio/appmetrica/analytics/impl/Rc;

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
