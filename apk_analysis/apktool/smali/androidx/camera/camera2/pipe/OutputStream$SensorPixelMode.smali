.class public final Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorPixelMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode$Companion;

.field private static final DEFAULT:I

.field private static final MAXIMUM_RESOLUTION:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->Companion:Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->DEFAULT:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->MAXIMUM_RESOLUTION:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->value:I

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->DEFAULT:I

    return v0
.end method

.method public static final synthetic access$getMAXIMUM_RESOLUTION$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->MAXIMUM_RESOLUTION:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->unbox-impl()I

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

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    const-string v0, "SensorPixelMode(value="

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->value:I

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->value:I

    return p0
.end method
