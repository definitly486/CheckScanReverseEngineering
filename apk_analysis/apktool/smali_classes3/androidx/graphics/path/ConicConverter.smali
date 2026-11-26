.class public final Landroidx/graphics/path/ConicConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentQuadratic:I

.field private quadraticCount:I

.field private quadraticData:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x82

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/graphics/path/ConicConverter;->quadraticData:[F

    return-void
.end method

.method public static synthetic convert$default(Landroidx/graphics/path/ConicConverter;[FFFIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/graphics/path/ConicConverter;->convert([FFFI)V

    return-void
.end method

.method private final native internalConicToQuadratics([FI[FFF)I
.end method

.method public static synthetic nextQuadratic$default(Landroidx/graphics/path/ConicConverter;[FIILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/path/ConicConverter;->nextQuadratic([FI)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final convert([FFFI)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/graphics/path/ConicConverter;->quadraticData:[F

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroidx/graphics/path/ConicConverter;->internalConicToQuadratics([FI[FFF)I

    move-result p0

    iput p0, v0, Landroidx/graphics/path/ConicConverter;->quadraticCount:I

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x2

    iget-object p1, v0, Landroidx/graphics/path/ConicConverter;->quadraticData:[F

    array-length p1, p1

    if-le p0, p1, :cond_0

    new-array v3, p0, [F

    iput-object v3, v0, Landroidx/graphics/path/ConicConverter;->quadraticData:[F

    invoke-direct/range {v0 .. v5}, Landroidx/graphics/path/ConicConverter;->internalConicToQuadratics([FI[FFF)I

    move-result p0

    iput p0, v0, Landroidx/graphics/path/ConicConverter;->quadraticCount:I

    :cond_0
    const/4 p0, 0x0

    iput p0, v0, Landroidx/graphics/path/ConicConverter;->currentQuadratic:I

    return-void
.end method

.method public final getCurrentQuadratic()I
    .locals 0

    iget p0, p0, Landroidx/graphics/path/ConicConverter;->currentQuadratic:I

    return p0
.end method

.method public final getQuadraticCount()I
    .locals 0

    iget p0, p0, Landroidx/graphics/path/ConicConverter;->quadraticCount:I

    return p0
.end method

.method public final nextQuadratic([FI)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/graphics/path/ConicConverter;->currentQuadratic:I

    iget v1, p0, Landroidx/graphics/path/ConicConverter;->quadraticCount:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Landroidx/graphics/path/ConicConverter;->quadraticData:[F

    aget v3, v2, v1

    aput v3, p1, p2

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    aget v4, v2, v4

    aput v4, p1, v3

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, v1, 0x2

    aget v4, v2, v4

    aput v4, p1, v3

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, v1, 0x3

    aget v4, v2, v4

    aput v4, p1, v3

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v4, v1, 0x4

    aget v4, v2, v4

    aput v4, p1, v3

    add-int/lit8 p2, p2, 0x5

    add-int/lit8 v1, v1, 0x5

    aget v1, v2, v1

    aput v1, p1, p2

    const/4 p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/graphics/path/ConicConverter;->currentQuadratic:I

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setCurrentQuadratic(I)V
    .locals 0

    iput p1, p0, Landroidx/graphics/path/ConicConverter;->currentQuadratic:I

    return-void
.end method
