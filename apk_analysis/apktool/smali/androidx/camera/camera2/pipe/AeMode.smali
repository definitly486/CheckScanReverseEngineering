.class public final Landroidx/camera/camera2/pipe/AeMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/AeMode$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

.field private static final OFF:I

.field private static final ON:I

.field private static final ON_ALWAYS_FLASH:I

.field private static final ON_AUTO_FLASH:I

.field private static final ON_AUTO_FLASH_REDEYE:I

.field private static final ON_EXTERNAL_FLASH:I

.field private static final ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY:I

.field private static final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/AeMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Landroidx/camera/camera2/pipe/AeMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/AeMode$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/AeMode;->OFF:I

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v1

    sput v1, Landroidx/camera/camera2/pipe/AeMode;->ON:I

    const/4 v2, 0x3

    invoke-static {v2}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v2

    sput v2, Landroidx/camera/camera2/pipe/AeMode;->ON_ALWAYS_FLASH:I

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v3

    sput v3, Landroidx/camera/camera2/pipe/AeMode;->ON_AUTO_FLASH:I

    const/4 v4, 0x4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v4

    sput v4, Landroidx/camera/camera2/pipe/AeMode;->ON_AUTO_FLASH_REDEYE:I

    const/4 v5, 0x5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v5

    sput v5, Landroidx/camera/camera2/pipe/AeMode;->ON_EXTERNAL_FLASH:I

    const/4 v6, 0x6

    invoke-static {v6}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v6

    sput v6, Landroidx/camera/camera2/pipe/AeMode;->ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v7

    invoke-static {v1}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v8

    invoke-static {v3}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v9

    invoke-static {v2}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v10

    invoke-static {v4}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v11

    invoke-static {v5}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v12

    invoke-static {v6}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v13

    filled-new-array/range {v7 .. v13}, [Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/AeMode;->values:Ljava/util/List;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    return-void
.end method

.method public static final synthetic access$getOFF$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AeMode;->OFF:I

    return v0
.end method

.method public static final synthetic access$getON$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AeMode;->ON:I

    return v0
.end method

.method public static final synthetic access$getON_ALWAYS_FLASH$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AeMode;->ON_ALWAYS_FLASH:I

    return v0
.end method

.method public static final synthetic access$getON_AUTO_FLASH$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AeMode;->ON_AUTO_FLASH:I

    return v0
.end method

.method public static final synthetic access$getON_AUTO_FLASH_REDEYE$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AeMode;->ON_AUTO_FLASH_REDEYE:I

    return v0
.end method

.method public static final synthetic access$getON_EXTERNAL_FLASH$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AeMode;->ON_EXTERNAL_FLASH:I

    return v0
.end method

.method public static final synthetic access$getON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AeMode;->ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY:I

    return v0
.end method

.method public static final synthetic access$getValues$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/AeMode;->values:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/AeMode;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/AeMode;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/AeMode;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/AeMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/AeMode;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final fromInt-IwILmM0(I)I
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->fromInt-IwILmM0(I)I

    move-result p0

    return p0
.end method

.method public static final fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object p0

    return-object p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static final isOn-impl(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    const-string v0, "AeMode(value="

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/AeMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/AeMode;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/AeMode;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    return p0
.end method
