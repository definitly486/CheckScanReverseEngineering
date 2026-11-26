.class public final Lio/appmetrica/analytics/impl/d9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/b9;

.field public final b:Lio/appmetrica/analytics/impl/c9;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/c9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/c9;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/b9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/b9;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/appmetrica/analytics/impl/Ok;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lio/appmetrica/analytics/impl/d9;-><init>(Lio/appmetrica/analytics/impl/c9;Lio/appmetrica/analytics/impl/b9;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/c9;Lio/appmetrica/analytics/impl/b9;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/appmetrica/analytics/impl/d9;->b:Lio/appmetrica/analytics/impl/c9;

    .line 28
    iput-object p2, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/b9;

    .line 29
    iput-object p3, p0, Lio/appmetrica/analytics/impl/d9;->c:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    return-void
.end method
