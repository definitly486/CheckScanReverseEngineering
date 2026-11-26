.class public final synthetic Laf9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/core/streamsharing/VirtualCameraControl;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/streamsharing/VirtualCameraControl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laf9;->a:Landroidx/camera/core/streamsharing/VirtualCameraControl;

    iput-object p2, p0, Laf9;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Laf9;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Laf9;->a:Landroidx/camera/core/streamsharing/VirtualCameraControl;

    invoke-static {p0, v0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraControl;->a(Landroidx/camera/core/streamsharing/VirtualCameraControl;Ljava/util/List;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
