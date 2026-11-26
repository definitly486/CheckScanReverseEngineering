.class public final synthetic Lhl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lli0;
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;
.implements Lrr5;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lhl0;->b:I

    iput-object p1, p0, Lhl0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxq5$a;)V
    .locals 0

    iget-object p0, p0, Lhl0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p1, p0}, Lxq5$a;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lxq5$a;->a()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lhl0;->b:I

    iget-object p0, p0, Lhl0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lts5$b;

    invoke-virtual {p0, p1}, Lts5$b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :pswitch_1
    check-cast p0, Lq4;

    invoke-virtual {p0, p1}, Lq4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Lhl0;->c:Ljava/lang/Object;

    check-cast p0, Lbm3;

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->k(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method public create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lhl0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->b(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onTransformationInfoUpdate(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    iget-object p0, p0, Lhl0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/Recorder;

    invoke-static {p0, p1}, Landroidx/camera/video/Recorder;->p(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method
