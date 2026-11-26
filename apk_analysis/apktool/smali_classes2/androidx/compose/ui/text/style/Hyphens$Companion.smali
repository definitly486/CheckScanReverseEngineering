.class public final Landroidx/compose/ui/text/style/Hyphens$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/Hyphens;
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

    invoke-direct {p0}, Landroidx/compose/ui/text/style/Hyphens$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuto-vmbZdU8()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/Hyphens;->access$getAuto$cp()I

    move-result p0

    return p0
.end method

.method public final getNone-vmbZdU8()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/Hyphens;->access$getNone$cp()I

    move-result p0

    return p0
.end method

.method public final getUnspecified-vmbZdU8()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/Hyphens;->access$getUnspecified$cp()I

    move-result p0

    return p0
.end method

.method public final valueOf-kPa1_AA(I)I
    .locals 1

    const/4 p0, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The given value="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not recognized by Hyphens."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/text/style/Hyphens;->constructor-impl(I)I

    move-result p0

    return p0
.end method
