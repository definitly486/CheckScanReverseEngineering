.class public final Lio/appmetrica/analytics/impl/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lio/appmetrica/analytics/impl/x1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/o1;->b:Lio/appmetrica/analytics/impl/x1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/o1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/o1;->b:Lio/appmetrica/analytics/impl/x1;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/x1;->a(Lio/appmetrica/analytics/impl/x1;)Lio/appmetrica/analytics/impl/Wa;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/o1;->a:Ljava/util/List;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getMapFromList(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/IReporter;->reportAnr(Ljava/util/Map;)V

    return-void
.end method
