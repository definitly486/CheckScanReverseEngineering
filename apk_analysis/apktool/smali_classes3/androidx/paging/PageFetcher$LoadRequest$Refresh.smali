.class public final Landroidx/paging/PageFetcher$LoadRequest$Refresh;
.super Landroidx/paging/PageFetcher$LoadRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageFetcher$LoadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Refresh"
.end annotation


# instance fields
.field private final triggerRemoteRefresh:Z

.field private final type:Landroidx/paging/PageFetcher$RefreshType;


# direct methods
.method public constructor <init>(ZLandroidx/paging/PageFetcher$RefreshType;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/paging/PageFetcher$LoadRequest;-><init>(Landroidx/paging/LoadType;Ljh2;)V

    iput-boolean p1, p0, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->triggerRemoteRefresh:Z

    iput-object p2, p0, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->type:Landroidx/paging/PageFetcher$RefreshType;

    return-void
.end method


# virtual methods
.method public final getTriggerRemoteRefresh()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->triggerRemoteRefresh:Z

    return p0
.end method

.method public final getType()Landroidx/paging/PageFetcher$RefreshType;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->type:Landroidx/paging/PageFetcher$RefreshType;

    return-object p0
.end method
