.class public final Landroidx/camera/camera2/pipe/StrictMode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final enabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/StrictMode;->enabled:Z

    return-void
.end method


# virtual methods
.method public final check(ZLll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lll3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "CXCP"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lah;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/StrictMode;->enabled:Z

    return p0
.end method
