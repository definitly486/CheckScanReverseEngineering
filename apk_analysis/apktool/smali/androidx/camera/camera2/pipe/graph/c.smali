.class public final synthetic Landroidx/camera/camera2/pipe/graph/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lug6;


# direct methods
.method public synthetic constructor <init>(Lug6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/c;->b:Lug6;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/c;->b:Lug6;

    check-cast p1, Landroidx/camera/camera2/pipe/FrameNumber;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$latestFrameNumber$1;->g(Lug6;Landroidx/camera/camera2/pipe/FrameNumber;)Lj59;

    move-result-object p0

    return-object p0
.end method
