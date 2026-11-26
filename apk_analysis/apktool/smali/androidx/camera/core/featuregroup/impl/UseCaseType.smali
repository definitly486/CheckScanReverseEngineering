.class public final enum Landroidx/camera/core/featuregroup/impl/UseCaseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;,
        Landroidx/camera/core/featuregroup/impl/UseCaseType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/featuregroup/impl/UseCaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final Companion:Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

.field public static final enum IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

.field public static final enum VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;


# instance fields
.field private final surfaceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 6

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    sget-object v1, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    sget-object v2, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    sget-object v3, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    sget-object v4, Landroidx/camera/core/featuregroup/impl/UseCaseType;->STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    sget-object v5, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    filled-new-array/range {v0 .. v5}, [Landroidx/camera/core/featuregroup/impl/UseCaseType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v1, 0x0

    const-class v2, Landroid/view/SurfaceHolder;

    const-string v3, "PREVIEW"

    invoke-direct {v0, v3, v1, v2}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const-string v1, "IMAGE_CAPTURE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const-string v1, "IMAGE_ANALYSIS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v1, 0x3

    const-class v2, Landroid/media/MediaCodec;

    const-string v4, "VIDEO_CAPTURE"

    invoke-direct {v0, v4, v1, v2}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const/4 v1, 0x4

    const-class v2, Landroid/graphics/SurfaceTexture;

    const-string v4, "STREAM_SHARING"

    invoke-direct {v0, v4, v1, v2}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/featuregroup/impl/UseCaseType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-static {}, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$values()[Landroidx/camera/core/featuregroup/impl/UseCaseType;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$VALUES:[Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-static {v0}, Lh03;->a([Ljava/lang/Enum;)Li03;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$ENTRIES:Lg03;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

    invoke-direct {v0, v3}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->surfaceClass:Ljava/lang/Class;

    return-void
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Landroidx/camera/core/featuregroup/impl/UseCaseType;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$ENTRIES:Lg03;

    return-object v0
.end method

.method public static final getFeatureGroupUseCaseType(Landroidx/camera/core/UseCase;)Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 1

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->getFeatureGroupUseCaseType(Landroidx/camera/core/UseCase;)Landroidx/camera/core/featuregroup/impl/UseCaseType;

    move-result-object p0

    return-object p0
.end method

.method public static final getFeatureGroupUseCaseType(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;)",
            "Landroidx/camera/core/featuregroup/impl/UseCaseType;"
        }
    .end annotation

    .line 7
    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->getFeatureGroupUseCaseType(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/featuregroup/impl/UseCaseType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 1

    const-class v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 1

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->$VALUES:[Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object v0
.end method


# virtual methods
.method public final getSurfaceClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->surfaceClass:Ljava/lang/Class;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "Undefined"

    return-object p0

    :pswitch_1
    const-string p0, "StreamSharing"

    return-object p0

    :pswitch_2
    const-string p0, "VideoCapture"

    return-object p0

    :pswitch_3
    const-string p0, "ImageAnalysis"

    return-object p0

    :pswitch_4
    const-string p0, "ImageCapture"

    return-object p0

    :pswitch_5
    const-string p0, "Preview"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
