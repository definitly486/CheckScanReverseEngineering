.class public final synthetic Lm01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/adapter/CameraControlAdapter;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/CameraControlAdapter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm01;->b:Landroidx/camera/camera2/adapter/CameraControlAdapter;

    iput-boolean p2, p0, Lm01;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lm01;->c:Z

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lm01;->b:Landroidx/camera/camera2/adapter/CameraControlAdapter;

    invoke-static {p0, v0, p1}, Landroidx/camera/camera2/adapter/CameraControlAdapter;->c(Landroidx/camera/camera2/adapter/CameraControlAdapter;ZLjava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
