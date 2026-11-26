.class public final Landroidx/camera/camera2/pipe/AfMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/AfMode;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/AfMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromIntOrNull-MKXwA8g(I)Landroidx/camera/camera2/pipe/AfMode;
    .locals 2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AfMode$Companion;->getValues()Ljava/util/List;

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

    check-cast v1, Landroidx/camera/camera2/pipe/AfMode;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AfMode;->unbox-impl()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/AfMode;

    return-object v0
.end method

.method public final getAUTO-vHZNRtE()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AfMode;->access$getAUTO$cp()I

    move-result p0

    return p0
.end method

.method public final getCONTINUOUS_PICTURE-vHZNRtE()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AfMode;->access$getCONTINUOUS_PICTURE$cp()I

    move-result p0

    return p0
.end method

.method public final getCONTINUOUS_VIDEO-vHZNRtE()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AfMode;->access$getCONTINUOUS_VIDEO$cp()I

    move-result p0

    return p0
.end method

.method public final getEDOF-vHZNRtE()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AfMode;->access$getEDOF$cp()I

    move-result p0

    return p0
.end method

.method public final getMACRO-vHZNRtE()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AfMode;->access$getMACRO$cp()I

    move-result p0

    return p0
.end method

.method public final getOFF-vHZNRtE()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AfMode;->access$getOFF$cp()I

    move-result p0

    return p0
.end method

.method public final getValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/AfMode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/camera2/pipe/AfMode;->access$getValues$cp()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
