.class public final Landroidx/compose/foundation/layout/Fr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final value:F


# direct methods
.method private synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/Fr;->value:F

    return-void
.end method

.method public static final synthetic box-impl(F)Landroidx/compose/foundation/layout/Fr;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/Fr;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/Fr;-><init>(F)V

    return-object v0
.end method

.method public static constructor-impl(F)F
    .locals 0

    return p0
.end method

.method public static equals-impl(FLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/layout/Fr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/foundation/layout/Fr;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/Fr;->unbox-impl()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(FF)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(F)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public static toString-impl(F)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ".fr"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Fr;->value:F

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/Fr;->equals-impl(FLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Fr;->value:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Fr;->value:F

    invoke-static {p0}, Landroidx/compose/foundation/layout/Fr;->hashCode-impl(F)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Fr;->value:F

    invoke-static {p0}, Landroidx/compose/foundation/layout/Fr;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Fr;->value:F

    return p0
.end method
