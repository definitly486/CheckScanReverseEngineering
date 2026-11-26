.class public final Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;,
        Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;

.field private static final SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;

    new-instance v2, Lb36;

    const-string v0, "SM-T580"

    invoke-direct {v2, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/util/Range;

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object v5, v3

    new-instance v3, Lb36;

    const-string v6, "SM-J710MN"

    invoke-direct {v3, v6, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    new-instance v4, Lb36;

    const-string v6, "SM-A320FL"

    invoke-direct {v4, v6, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v5

    new-instance v5, Lb36;

    const-string v7, "SM-G570M"

    invoke-direct {v5, v7, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v6

    new-instance v6, Lb36;

    const-string v8, "SM-G610F"

    invoke-direct {v6, v8, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v7, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lb36;

    const-string v0, "SM-G610M"

    invoke-direct {v7, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v7}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getVerifiedResolution(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;)Landroid/util/Size;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;->isSamsungDistortion$camera_camera2()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0xcc0

    const/16 v0, 0x72c

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_1
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x500

    const/16 v0, 0x2d0

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_2
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x780

    const/16 v0, 0x438

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_3
    return-object v0
.end method
