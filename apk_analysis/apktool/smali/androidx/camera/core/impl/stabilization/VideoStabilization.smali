.class public final enum Landroidx/camera/core/impl/stabilization/VideoStabilization;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/stabilization/VideoStabilization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/stabilization/VideoStabilization;

.field public static final Companion:Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;

.field public static final enum OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

.field public static final enum ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

.field public static final enum PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

.field public static final enum UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;


# direct methods
.method private static final synthetic $values()[Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 4

    sget-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    sget-object v1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    sget-object v2, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    sget-object v3, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/stabilization/VideoStabilization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const-string v1, "OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/stabilization/VideoStabilization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const-string v1, "ON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/stabilization/VideoStabilization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const-string v1, "PREVIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/stabilization/VideoStabilization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-static {}, Landroidx/camera/core/impl/stabilization/VideoStabilization;->$values()[Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->$VALUES:[Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-static {v0}, Lh03;->a([Ljava/lang/Enum;)Li03;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->$ENTRIES:Lg03;

    new-instance v0, Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->Companion:Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final from$camera_core(II)Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 1

    sget-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->Companion:Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;->from$camera_core(II)Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Landroidx/camera/core/impl/stabilization/VideoStabilization;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->$ENTRIES:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 1

    const-class v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 1

    sget-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->$VALUES:[Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object v0
.end method
