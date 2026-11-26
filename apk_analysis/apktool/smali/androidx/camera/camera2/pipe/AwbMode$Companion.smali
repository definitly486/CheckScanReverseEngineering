.class public final Landroidx/camera/camera2/pipe/AwbMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/AwbMode;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/AwbMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromIntOrNull--SaEiwI(I)Landroidx/camera/camera2/pipe/AwbMode;
    .locals 2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AwbMode$Companion;->getValues()Ljava/util/List;

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

    check-cast v1, Landroidx/camera/camera2/pipe/AwbMode;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AwbMode;->unbox-impl()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/AwbMode;

    return-object v0
.end method

.method public final getAUTO-3hxnlF8()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AwbMode;->access$getAUTO$cp()I

    move-result p0

    return p0
.end method

.method public final getCLOUDY_DAYLIGHT-3hxnlF8()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AwbMode;->access$getCLOUDY_DAYLIGHT$cp()I

    move-result p0

    return p0
.end method

.method public final getDAYLIGHT-3hxnlF8()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AwbMode;->access$getDAYLIGHT$cp()I

    move-result p0

    return p0
.end method

.method public final getFLUORESCENT-3hxnlF8()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AwbMode;->access$getFLUORESCENT$cp()I

    move-result p0

    return p0
.end method

.method public final getINCANDESCENT-3hxnlF8()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AwbMode;->access$getINCANDESCENT$cp()I

    move-result p0

    return p0
.end method

.method public final getOFF-3hxnlF8()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AwbMode;->access$getOFF$cp()I

    move-result p0

    return p0
.end method

.method public final getSHADE-3hxnlF8()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AwbMode;->access$getSHADE$cp()I

    move-result p0

    return p0
.end method

.method public final getTWILIGHT-3hxnlF8()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/AwbMode;->access$getTWILIGHT$cp()I

    move-result p0

    return p0
.end method

.method public final getValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/AwbMode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/camera2/pipe/AwbMode;->access$getValues$cp()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
