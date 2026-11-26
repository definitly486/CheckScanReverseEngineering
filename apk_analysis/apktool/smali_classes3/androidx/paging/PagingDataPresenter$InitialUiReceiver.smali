.class final Landroidx/paging/PagingDataPresenter$InitialUiReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/paging/UiReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PagingDataPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitialUiReceiver"
.end annotation


# instance fields
.field private shouldRefresh:Z

.field private shouldRetry:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShouldRefresh()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRefresh:Z

    return p0
.end method

.method public final getShouldRetry()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRetry:Z

    return p0
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRefresh:Z

    return-void
.end method

.method public retry()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRetry:Z

    return-void
.end method

.method public final setShouldRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRefresh:Z

    return-void
.end method

.method public final setShouldRetry(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRetry:Z

    return-void
.end method
