.class public final Landroidx/camera/camera2/pipe/AeMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/AeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInt-IwILmM0(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getOFF-bOjpiJc()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getOFF-bOjpiJc()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_AUTO_FLASH-bOjpiJc()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_AUTO_FLASH-bOjpiJc()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_ALWAYS_FLASH-bOjpiJc()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_ALWAYS_FLASH-bOjpiJc()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_AUTO_FLASH_REDEYE-bOjpiJc()I

    move-result v0

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_AUTO_FLASH_REDEYE-bOjpiJc()I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_EXTERNAL_FLASH-bOjpiJc()I

    move-result v0

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_EXTERNAL_FLASH-bOjpiJc()I

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY-bOjpiJc()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY-bOjpiJc()I

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result p0

    return p0
.end method

.method public final fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;
    .locals 2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getValues()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/AeMode;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/AeMode;

    return-object v0
.end method

.method public final getOFF-bOjpiJc()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AeMode;->access$getOFF$cp()I

    move-result p0

    return p0
.end method

.method public final getON-bOjpiJc()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AeMode;->access$getON$cp()I

    move-result p0

    return p0
.end method

.method public final getON_ALWAYS_FLASH-bOjpiJc()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AeMode;->access$getON_ALWAYS_FLASH$cp()I

    move-result p0

    return p0
.end method

.method public final getON_AUTO_FLASH-bOjpiJc()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AeMode;->access$getON_AUTO_FLASH$cp()I

    move-result p0

    return p0
.end method

.method public final getON_AUTO_FLASH_REDEYE-bOjpiJc()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AeMode;->access$getON_AUTO_FLASH_REDEYE$cp()I

    move-result p0

    return p0
.end method

.method public final getON_EXTERNAL_FLASH-bOjpiJc()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AeMode;->access$getON_EXTERNAL_FLASH$cp()I

    move-result p0

    return p0
.end method

.method public final getON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY-bOjpiJc()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AeMode;->access$getON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY$cp()I

    move-result p0

    return p0
.end method

.method public final getValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/AeMode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/camera2/pipe/AeMode;->access$getValues$cp()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
