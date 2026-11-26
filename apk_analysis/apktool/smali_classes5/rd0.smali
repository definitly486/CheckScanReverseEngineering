.class public final synthetic Lrd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/preload/RankingDataComparator$InvalidationListener;
.implements Lio/appmetrica/analytics/impl/Te;
.implements Lcom/my/target/m1$b;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/m2;Lxda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrd0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, Lxda;

    .line 9
    iget-object p0, p0, Lao9;->B:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/Se;->b([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onRankingDataComparatorInvalidated()V
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->invalidate()V

    return-void
.end method
