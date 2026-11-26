.class public final Landroidx/camera/camera2/impl/ZoomControl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final zoomCompatProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/ZoomCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/ZoomCompat;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/ZoomControl_Factory;->zoomCompatProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;)Landroidx/camera/camera2/impl/ZoomControl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/ZoomCompat;",
            ">;)",
            "Landroidx/camera/camera2/impl/ZoomControl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/ZoomControl_Factory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/impl/ZoomControl_Factory;-><init>(Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/compat/ZoomCompat;)Landroidx/camera/camera2/impl/ZoomControl;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/impl/ZoomControl;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/impl/ZoomControl;-><init>(Landroidx/camera/camera2/compat/ZoomCompat;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/ZoomControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/ZoomControl_Factory;->zoomCompatProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/ZoomCompat;

    invoke-static {p0}, Landroidx/camera/camera2/impl/ZoomControl_Factory;->newInstance(Landroidx/camera/camera2/compat/ZoomCompat;)Landroidx/camera/camera2/impl/ZoomControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/ZoomControl_Factory;->get()Landroidx/camera/camera2/impl/ZoomControl;

    move-result-object p0

    return-object p0
.end method
