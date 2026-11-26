.class public final Landroidx/compose/material3/ShapeDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final CornerExtraExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerExtraSmall:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerFull:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerLarge:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerMedium:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerNone:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerSmall:Landroidx/compose/foundation/shape/CornerSize;

.field private static final ExtraExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final ExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final ExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final ExtraSmall:Landroidx/compose/foundation/shape/CornerBasedShape;

.field public static final INSTANCE:Landroidx/compose/material3/ShapeDefaults;

.field private static final Large:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final LargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final Medium:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final Small:Landroidx/compose/foundation/shape/CornerBasedShape;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/ShapeDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ShapeDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->INSTANCE:Landroidx/compose/material3/ShapeDefaults;

    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerExtraSmall()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->ExtraSmall:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerSmall()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->Small:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerMedium()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->Medium:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->Large:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerLargeIncreased()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->LargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerExtraLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->ExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerExtraLargeIncreased()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->ExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerExtraExtraLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->ExtraExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueNone()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerNone:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueExtraSmall()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerExtraSmall:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueSmall()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerSmall:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueMedium()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerMedium:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueLarge()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerLarge:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueLargeIncreased()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueExtraLarge()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueExtraLargeIncreased()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueExtraExtraLarge()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->CornerExtraExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    const/16 v0, 0x64

    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->CornerFull:Landroidx/compose/foundation/shape/CornerSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCornerExtraExtraLarge$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerExtraExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerExtraLarge$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerExtraLargeIncreased$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerExtraSmall$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerExtraSmall:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerFull$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerFull:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerLarge$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerLarge:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerLargeIncreased$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerMedium$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerMedium:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerNone$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerNone:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getCornerSmall$material3()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerSmall:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getExtraExtraLarge$material3()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getExtraLarge()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getExtraLargeIncreased$material3()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getExtraSmall()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraSmall:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->Large:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getLargeIncreased$material3()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->LargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getMedium()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->Medium:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->Small:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method
