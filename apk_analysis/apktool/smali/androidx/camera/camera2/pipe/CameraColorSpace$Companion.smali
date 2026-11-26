.class public final Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraColorSpace$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromColorSpaceNamed-5GKeQC8(Landroid/graphics/ColorSpace$Named;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getBT2020_PQ-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getBT2020_HLG-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getCIE_LAB-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getCIE_XYZ-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getACESCG-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getACES-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getPRO_PHOTO_RGB-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getADOBE_RGB-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getSMPTE_C-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getNTSC_1953-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getDISPLAY_P3-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getDCI_P3-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getBT2020-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getBT709-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getLINEAR_EXTENDED_SRGB-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getEXTENDED_SRGB-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getLINEAR_SRGB-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraColorSpace$Companion;->getSRGB-sh9K6P8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getACES-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getACES$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getACESCG-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getACESCG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getADOBE_RGB-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getADOBE_RGB$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBT2020-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getBT2020$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBT2020_HLG-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getBT2020_HLG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBT2020_PQ-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getBT2020_PQ$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBT709-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getBT709$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCIE_LAB-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getCIE_LAB$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCIE_XYZ-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getCIE_XYZ$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDCI_P3-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getDCI_P3$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDISPLAY_P3-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getDISPLAY_P3$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEXTENDED_SRGB-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getEXTENDED_SRGB$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLINEAR_EXTENDED_SRGB-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getLINEAR_EXTENDED_SRGB$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLINEAR_SRGB-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getLINEAR_SRGB$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNTSC_1953-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getNTSC_1953$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPRO_PHOTO_RGB-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getPRO_PHOTO_RGB$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSMPTE_C-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getSMPTE_C$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSRGB-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getSRGB$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUNKNOWN-sh9K6P8()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraColorSpace;->access$getUNKNOWN$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
