.class public final Landroidx/compose/foundation/layout/FlexBasis$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/FlexBasis;
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

    invoke-direct {p0}, Landroidx/compose/foundation/layout/FlexBasis$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final Dp-cHuBJEI(F)J
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    const-wide v0, 0x100000000L

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexBasis;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final Percent-uoj9tHE(F)J
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    const-wide v0, 0x200000000L

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexBasis;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getAuto-d-lZNVs()J
    .locals 2

    invoke-static {}, Landroidx/compose/foundation/layout/FlexBasis;->access$getAuto$cp()J

    move-result-wide v0

    return-wide v0
.end method
