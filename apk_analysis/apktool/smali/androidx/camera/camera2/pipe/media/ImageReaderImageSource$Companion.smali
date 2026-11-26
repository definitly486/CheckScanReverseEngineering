.class public final Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;)Landroidx/camera/camera2/pipe/media/ImageSource;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;->getCapacity()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    new-instance v0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;

    invoke-direct {v0, p1, p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;-><init>(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;I)V

    return-object v0
.end method
