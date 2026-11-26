.class public final Lio/appmetrica/analytics/impl/um;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

.field public final b:Lio/appmetrica/analytics/impl/Fo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lio/appmetrica/analytics/impl/zm;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/fn;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/gn;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/hn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/hn;->create(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p1

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->D()Lio/appmetrica/analytics/impl/Jo;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Jo;->a()Lio/appmetrica/analytics/impl/Fo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/um;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/Fo;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/Fo;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/appmetrica/analytics/impl/um;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 30
    iput-object p2, p0, Lio/appmetrica/analytics/impl/um;->b:Lio/appmetrica/analytics/impl/Fo;

    return-void
.end method
