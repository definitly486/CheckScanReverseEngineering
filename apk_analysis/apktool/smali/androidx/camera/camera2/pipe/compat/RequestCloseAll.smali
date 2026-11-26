.class public final Landroidx/camera/camera2/pipe/compat/RequestCloseAll;
.super Landroidx/camera/camera2/pipe/compat/CameraRequest;
.source "SourceFile"


# instance fields
.field private final deferred:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraRequest;-><init>(Ljh2;)V

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->deferred:Lxp1;

    return-void
.end method


# virtual methods
.method public final getDeferred()Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->deferred:Lxp1;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "RequestCloseAll"

    return-object p0
.end method
