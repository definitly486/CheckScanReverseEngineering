.class public final Landroidx/compose/material3/tokens/ShapeTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final CornerExtraExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerExtraLargeIncreased:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerExtraLargeTop:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerExtraSmallTop:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerFull:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerLargeEnd:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerLargeIncreased:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerLargeStart:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerLargeTop:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerMedium:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerNone:Landroidx/compose/ui/graphics/Shape;

.field private static final CornerSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerValueExtraExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerValueExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerValueExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerValueExtraSmall:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerValueLarge:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerValueLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerValueMedium:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerValueNone:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerValueSmall:Landroidx/compose/foundation/shape/CornerSize;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/ShapeTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    sput-object v2, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraLargeIncreased:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraLargeTop:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    sput-object v4, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    invoke-static {v4, v6, v7, v8}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    sput-object v4, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraSmallTop:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    sput-object v4, Landroidx/compose/material3/tokens/ShapeTokens;->CornerFull:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    sput-object v6, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    sput-object v6, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLargeEnd:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    invoke-static {v7}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v7

    sput-object v7, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLargeIncreased:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v7

    sput-object v7, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLargeStart:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v7

    sput-object v7, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLargeTop:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    invoke-static {v8}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v8

    sput-object v8, Landroidx/compose/material3/tokens/ShapeTokens;->CornerMedium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v8

    sput-object v8, Landroidx/compose/material3/tokens/ShapeTokens;->CornerNone:Landroidx/compose/ui/graphics/Shape;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    invoke-static {v9}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v9

    sput-object v9, Landroidx/compose/material3/tokens/ShapeTokens;->CornerSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueExtraExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueExtraSmall:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueLarge:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueMedium:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueNone:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueSmall:Landroidx/compose/foundation/shape/CornerSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCornerExtraExtraLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerExtraLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerExtraLargeIncreased()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraLargeIncreased:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerExtraLargeTop()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraLargeTop:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerExtraSmall()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerExtraSmallTop()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraSmallTop:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerFull()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerFull:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerLargeEnd()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLargeEnd:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerLargeIncreased()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLargeIncreased:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerLargeStart()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLargeStart:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerLargeTop()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLargeTop:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerMedium()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerMedium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerNone()Landroidx/compose/ui/graphics/Shape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerNone:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method public final getCornerSmall()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getCornerValueExtraExtraLarge()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueExtraExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerValueExtraLarge()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerValueExtraLargeIncreased()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerValueExtraSmall()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueExtraSmall:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerValueLarge()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueLarge:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerValueLargeIncreased()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerValueMedium()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueMedium:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerValueNone()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueNone:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerValueSmall()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerValueSmall:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method
