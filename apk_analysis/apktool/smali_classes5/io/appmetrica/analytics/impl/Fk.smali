.class public final Lio/appmetrica/analytics/impl/Fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Vc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const-class p0, Lio/appmetrica/analytics/impl/zm;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/fn;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/gn;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/hn;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/hn;->b(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/hn;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/zm;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/zm;->m:Lio/appmetrica/analytics/impl/z4;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/zm;->a(Lio/appmetrica/analytics/impl/z4;)Lio/appmetrica/analytics/impl/ym;

    move-result-object p1

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lio/appmetrica/analytics/impl/ym;->o:J

    new-instance v0, Lio/appmetrica/analytics/impl/zm;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/zm;-><init>(Lio/appmetrica/analytics/impl/ym;)V

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    return-void
.end method
