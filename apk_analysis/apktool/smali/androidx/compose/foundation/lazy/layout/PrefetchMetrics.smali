.class public final Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final averagesByContentType:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/layout/Averages;",
            ">;"
        }
    .end annotation
.end field

.field private lastUsedAverage:Landroidx/compose/foundation/lazy/layout/Averages;

.field private lastUsedContentType:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averagesByContentType:Landroidx/collection/MutableScatterMap;

    return-void
.end method


# virtual methods
.method public final getAverage(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/Averages;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->lastUsedAverage:Landroidx/compose/foundation/lazy/layout/Averages;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->lastUsedContentType:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averagesByContentType:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroidx/compose/foundation/lazy/layout/Averages;

    invoke-direct {v1}, Landroidx/compose/foundation/lazy/layout/Averages;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Landroidx/compose/foundation/lazy/layout/Averages;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->lastUsedContentType:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->lastUsedAverage:Landroidx/compose/foundation/lazy/layout/Averages;

    return-object v1
.end method
