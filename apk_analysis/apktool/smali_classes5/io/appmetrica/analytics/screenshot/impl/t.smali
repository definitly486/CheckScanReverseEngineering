.class public final Lio/appmetrica/analytics/screenshot/impl/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/screenshot/impl/h;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/C;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/screenshot/impl/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/t;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/t;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/screenshot/impl/B;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/d;

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/t;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    iget-object v2, p0, Lio/appmetrica/analytics/screenshot/impl/t;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/screenshot/impl/d;-><init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/screenshot/impl/C;)V

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/M;

    iget-object v2, p0, Lio/appmetrica/analytics/screenshot/impl/t;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/t;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    invoke-direct {v1, v2, p0}, Lio/appmetrica/analytics/screenshot/impl/M;-><init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/screenshot/impl/C;)V

    const/4 p0, 0x2

    new-array p0, p0, [Lio/appmetrica/analytics/screenshot/impl/B;

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const/4 v0, 0x1

    aput-object v1, p0, v0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
