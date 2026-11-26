.class public final synthetic Lj99;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/config/UseCaseCameraConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj99;->a:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj99;->a:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->a(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method
