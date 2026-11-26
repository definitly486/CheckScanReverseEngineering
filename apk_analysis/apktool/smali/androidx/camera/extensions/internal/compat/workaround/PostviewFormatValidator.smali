.class public final Landroidx/camera/extensions/internal/compat/workaround/PostviewFormatValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final quirk:Landroidx/camera/core/impl/Quirk;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk;

    invoke-static {v0}, Landroidx/camera/extensions/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/extensions/internal/compat/workaround/PostviewFormatValidator;->quirk:Landroidx/camera/core/impl/Quirk;

    return-void
.end method

.method public static synthetic a(ILjava/util/List;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/extensions/internal/compat/workaround/PostviewFormatValidator;->getPostviewFormatSelector$lambda$0$0(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method private static final getPostviewFormatSelector$lambda$0$0(ILjava/util/List;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getPostviewFormatSelector()Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/internal/compat/workaround/PostviewFormatValidator;->quirk:Landroidx/camera/core/impl/Quirk;

    if-eqz p0, :cond_0

    new-instance p0, Lke6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    sget-object p0, Landroidx/camera/core/impl/CameraConfig;->DEFAULT_POSTVIEW_FORMAT_SELECTOR:Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
