.class public final Landroidx/compose/foundation/MarqueeAnimationMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/MarqueeAnimationMode$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

.field private static final Immediately:I

.field private static final WhileFocused:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/MarqueeAnimationMode$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/foundation/MarqueeAnimationMode;->Immediately:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/foundation/MarqueeAnimationMode;->WhileFocused:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    return-void
.end method

.method public static final synthetic access$getImmediately$cp()I
    .locals 1

    sget v0, Landroidx/compose/foundation/MarqueeAnimationMode;->Immediately:I

    return v0
.end method

.method public static final synthetic access$getWhileFocused$cp()I
    .locals 1

    sget v0, Landroidx/compose/foundation/MarqueeAnimationMode;->WhileFocused:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/foundation/MarqueeAnimationMode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/MarqueeAnimationMode;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/MarqueeAnimationMode;-><init>(I)V

    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/MarqueeAnimationMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/foundation/MarqueeAnimationMode;

    invoke-virtual {p1}, Landroidx/compose/foundation/MarqueeAnimationMode;->unbox-impl()I

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
    .locals 1

    sget v0, Landroidx/compose/foundation/MarqueeAnimationMode;->Immediately:I

    invoke-static {p0, v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Immediately"

    return-object p0

    :cond_0
    sget v0, Landroidx/compose/foundation/MarqueeAnimationMode;->WhileFocused:I

    invoke-static {p0, v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "WhileFocused"

    return-object p0

    :cond_1
    const-string v0, "invalid value: "

    invoke-static {p0, v0}, Lud;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    invoke-static {p0, p1}, Landroidx/compose/foundation/MarqueeAnimationMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    invoke-static {p0}, Landroidx/compose/foundation/MarqueeAnimationMode;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    invoke-static {p0}, Landroidx/compose/foundation/MarqueeAnimationMode;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    return p0
.end method
