.class public final Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;
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
.field private final metadataProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final strictModeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/StrictMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/StrictMode;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;->metadataProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;->strictModeProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/StrictMode;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;-><init>(Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)Landroidx/camera/camera2/pipe/compat/Camera2Quirks;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/Camera2Quirks;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;->metadataProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;->strictModeProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/StrictMode;

    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;->newInstance(Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks_Factory;->get()Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    move-result-object p0

    return-object p0
.end method
