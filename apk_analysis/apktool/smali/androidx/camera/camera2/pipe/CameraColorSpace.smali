.class public final Landroidx/camera/camera2/pipe/CameraColorSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;
    }
.end annotation


# static fields
.field private static final ACES:Ljava/lang/String;

.field private static final ACESCG:Ljava/lang/String;

.field private static final ADOBE_RGB:Ljava/lang/String;

.field private static final BT2020:Ljava/lang/String;

.field private static final BT2020_HLG:Ljava/lang/String;

.field private static final BT2020_PQ:Ljava/lang/String;

.field private static final BT709:Ljava/lang/String;

.field private static final CIE_LAB:Ljava/lang/String;

.field private static final CIE_XYZ:Ljava/lang/String;

.field public static final Companion:Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;

.field private static final DCI_P3:Ljava/lang/String;

.field private static final DISPLAY_P3:Ljava/lang/String;

.field private static final EXTENDED_SRGB:Ljava/lang/String;

.field private static final LINEAR_EXTENDED_SRGB:Ljava/lang/String;

.field private static final LINEAR_SRGB:Ljava/lang/String;

.field private static final NTSC_1953:Ljava/lang/String;

.field private static final PRO_PHOTO_RGB:Ljava/lang/String;

.field private static final SMPTE_C:Ljava/lang/String;

.field private static final SRGB:Ljava/lang/String;

.field private static final UNKNOWN:Ljava/lang/String;


# instance fields
.field private final colorSpaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->Companion:Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;

    const-string v0, "UNKNOWN"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->UNKNOWN:Ljava/lang/String;

    const-string v0, "SRGB"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->SRGB:Ljava/lang/String;

    const-string v0, "LINEAR_SRGB"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->LINEAR_SRGB:Ljava/lang/String;

    const-string v0, "EXTENDED_SRGB"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->EXTENDED_SRGB:Ljava/lang/String;

    const-string v0, "LINEAR_EXTENDED_SRGB"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->LINEAR_EXTENDED_SRGB:Ljava/lang/String;

    const-string v0, "BT709"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT709:Ljava/lang/String;

    const-string v0, "BT2020"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT2020:Ljava/lang/String;

    const-string v0, "DCI_P3"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->DCI_P3:Ljava/lang/String;

    const-string v0, "DISPLAY_P3"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->DISPLAY_P3:Ljava/lang/String;

    const-string v0, "NTSC_1953"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->NTSC_1953:Ljava/lang/String;

    const-string v0, "SMPTE_C"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->SMPTE_C:Ljava/lang/String;

    const-string v0, "ADOBE_RGB"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->ADOBE_RGB:Ljava/lang/String;

    const-string v0, "PRO_PHOTO_RGB"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->PRO_PHOTO_RGB:Ljava/lang/String;

    const-string v0, "ACES"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->ACES:Ljava/lang/String;

    const-string v0, "ACESCG"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->ACESCG:Ljava/lang/String;

    const-string v0, "CIE_XYZ"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->CIE_XYZ:Ljava/lang/String;

    const-string v0, "CIE_LAB"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->CIE_LAB:Ljava/lang/String;

    const-string v0, "BT2020_HLG"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT2020_HLG:Ljava/lang/String;

    const-string v0, "BT2020_PQ"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT2020_PQ:Ljava/lang/String;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraColorSpace;->colorSpaceName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getACES$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->ACES:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getACESCG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->ACESCG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getADOBE_RGB$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->ADOBE_RGB:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBT2020$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT2020:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBT2020_HLG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT2020_HLG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBT2020_PQ$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT2020_PQ:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBT709$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT709:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCIE_LAB$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->CIE_LAB:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCIE_XYZ$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->CIE_XYZ:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDCI_P3$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->DCI_P3:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDISPLAY_P3$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->DISPLAY_P3:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTENDED_SRGB$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->EXTENDED_SRGB:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLINEAR_EXTENDED_SRGB$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->LINEAR_EXTENDED_SRGB:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLINEAR_SRGB$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->LINEAR_SRGB:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getNTSC_1953$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->NTSC_1953:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPRO_PHOTO_RGB$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->PRO_PHOTO_RGB:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSMPTE_C$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->SMPTE_C:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSRGB$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->SRGB:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUNKNOWN$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->UNKNOWN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraColorSpace;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraColorSpace;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/CameraColorSpace;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static constructor-impl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/CameraColorSpace;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/CameraColorSpace;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraColorSpace;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final fromColorSpaceNamed-5GKeQC8(Landroid/graphics/ColorSpace$Named;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->Companion:Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->fromColorSpaceNamed-5GKeQC8(Landroid/graphics/ColorSpace$Named;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hashCode-impl(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final toColorSpaceNamed-impl(Ljava/lang/String;)Landroid/graphics/ColorSpace$Named;
    .locals 3

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->UNKNOWN:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->SRGB:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->LINEAR_SRGB:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_2
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->EXTENDED_SRGB:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_3
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->LINEAR_EXTENDED_SRGB:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_4
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT709:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_5
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT2020:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->DCI_P3:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_7
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->DISPLAY_P3:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_8
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->NTSC_1953:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_9
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->SMPTE_C:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_a
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->ADOBE_RGB:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_b
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->PRO_PHOTO_RGB:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_c
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->ACES:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_d
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->ACESCG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p0, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_e
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->CIE_XYZ:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_f
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->CIE_LAB:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    return-object p0

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v0, v2, :cond_11

    return-object v1

    :cond_11
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT2020_HLG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lk;->d()Landroid/graphics/ColorSpace$Named;

    move-result-object p0

    return-object p0

    :cond_12
    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace;->BT2020_PQ:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-static {}, Li01;->b()Landroid/graphics/ColorSpace$Named;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v1
.end method

.method public static toString-impl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "CameraColorSpace(colorSpaceName="

    const/16 v1, 0x29

    invoke-static {v1, v0, p0}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraColorSpace;->colorSpaceName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getColorSpaceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraColorSpace;->colorSpaceName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraColorSpace;->colorSpaceName:Ljava/lang/String;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->hashCode-impl(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraColorSpace;->colorSpaceName:Ljava/lang/String;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraColorSpace;->colorSpaceName:Ljava/lang/String;

    return-object p0
.end method
