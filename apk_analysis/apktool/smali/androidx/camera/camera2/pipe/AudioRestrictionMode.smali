.class public final Landroidx/camera/camera2/pipe/AudioRestrictionMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;
    }
.end annotation


# static fields
.field private static final AUDIO_RESTRICTION_NONE:I

.field private static final AUDIO_RESTRICTION_VIBRATION:I

.field private static final AUDIO_RESTRICTION_VIBRATION_SOUND:I

.field public static final Companion:Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->Companion:Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->AUDIO_RESTRICTION_NONE:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->AUDIO_RESTRICTION_VIBRATION:I

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->AUDIO_RESTRICTION_VIBRATION_SOUND:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->value:I

    return-void
.end method

.method public static final synthetic access$getAUDIO_RESTRICTION_NONE$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->AUDIO_RESTRICTION_NONE:I

    return v0
.end method

.method public static final synthetic access$getAUDIO_RESTRICTION_VIBRATION$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->AUDIO_RESTRICTION_VIBRATION:I

    return v0
.end method

.method public static final synthetic access$getAUDIO_RESTRICTION_VIBRATION_SOUND$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->AUDIO_RESTRICTION_VIBRATION_SOUND:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/AudioRestrictionMode;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->unbox-impl()I

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

    const-string v0, "AudioRestrictionMode(value="

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->value:I

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->value:I

    return p0
.end method
