.class public final Landroidx/camera/camera2/pipe/FlashMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/FlashMode;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/FlashMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromIntOrNull-2-3f5tw(I)Landroidx/camera/camera2/pipe/FlashMode;
    .locals 2

    invoke-static {}, Landroidx/camera/camera2/pipe/FlashMode;->access$getValues$cp()Ljava/util/List;

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

    check-cast v1, Landroidx/camera/camera2/pipe/FlashMode;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/FlashMode;->unbox-impl()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/FlashMode;

    return-object v0
.end method

.method public final getOFF-Le5xUZU()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/FlashMode;->access$getOFF$cp()I

    move-result p0

    return p0
.end method

.method public final getSINGLE-Le5xUZU()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/FlashMode;->access$getSINGLE$cp()I

    move-result p0

    return p0
.end method

.method public final getTORCH-Le5xUZU()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/FlashMode;->access$getTORCH$cp()I

    move-result p0

    return p0
.end method
