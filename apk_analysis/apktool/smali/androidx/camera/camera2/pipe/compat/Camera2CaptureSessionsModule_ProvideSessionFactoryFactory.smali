.class public final Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;
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
.field private final androidExtensionProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final androidMHighSpeedProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final androidMProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final androidNProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final androidPProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final graphConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidMProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidMHighSpeedProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidNProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidPProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidExtensionProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->graphConfigProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideSessionFactory(Lws6;Lws6;Lws6;Lws6;Lws6;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;",
            ">;",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;",
            ">;",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;",
            ">;",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;",
            ">;",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;",
            ">;",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ")",
            "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;->provideSessionFactory(Lws6;Lws6;Lws6;Lws6;Lws6;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidMProvider:Lxs6;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidMHighSpeedProvider:Lxs6;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidNProvider:Lxs6;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidPProvider:Lxs6;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->androidExtensionProvider:Lxs6;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->graphConfigProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->provideSessionFactory(Lws6;Lws6;Lws6;Lws6;Lws6;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->get()Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    move-result-object p0

    return-object p0
.end method
