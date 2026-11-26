.class public final Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

.field private static final TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED:I

.field private static final TIMESTAMP_BASE_DEFAULT:I

.field private static final TIMESTAMP_BASE_MONOTONIC:I

.field private static final TIMESTAMP_BASE_REALTIME:I

.field private static final TIMESTAMP_BASE_SENSOR:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_DEFAULT:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_SENSOR:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_MONOTONIC:I

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_REALTIME:I

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->value:I

    return-void
.end method

.method public static final synthetic access$getTIMESTAMP_BASE_CHOREOGRAPHER_SYNCED$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED:I

    return v0
.end method

.method public static final synthetic access$getTIMESTAMP_BASE_DEFAULT$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_DEFAULT:I

    return v0
.end method

.method public static final synthetic access$getTIMESTAMP_BASE_MONOTONIC$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_MONOTONIC:I

    return v0
.end method

.method public static final synthetic access$getTIMESTAMP_BASE_REALTIME$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_REALTIME:I

    return v0
.end method

.method public static final synthetic access$getTIMESTAMP_BASE_SENSOR$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->TIMESTAMP_BASE_SENSOR:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

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

    const-string v0, "TimestampBase(value="

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->value:I

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->value:I

    return p0
.end method
