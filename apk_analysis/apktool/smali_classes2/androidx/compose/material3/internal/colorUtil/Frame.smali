.class public final Landroidx/compose/material3/internal/colorUtil/Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/internal/colorUtil/Frame$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/material3/internal/colorUtil/Frame$Companion;

.field private static final Default:Landroidx/compose/material3/internal/colorUtil/Frame;


# instance fields
.field private final aw:F

.field private final c:F

.field private final fl:F

.field private final flRoot:F

.field private final n:F

.field private final nbb:F

.field private final nc:F

.field private final ncb:F

.field private final rgbD:[F

.field private final z:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/compose/material3/internal/colorUtil/Frame$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/internal/colorUtil/Frame$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/material3/internal/colorUtil/Frame;->Companion:Landroidx/compose/material3/internal/colorUtil/Frame$Companion;

    const/16 v1, 0x8

    sput v1, Landroidx/compose/material3/internal/colorUtil/Frame;->$stable:I

    sget-object v1, Landroidx/compose/material3/internal/colorUtil/CamUtils;->INSTANCE:Landroidx/compose/material3/internal/colorUtil/CamUtils;

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/compose/material3/internal/colorUtil/CamUtils;->getWHITE_POINT_D65()[F

    move-result-object v1

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-virtual {v2, v3, v4}, Landroidx/compose/material3/internal/colorUtil/CamUtils;->yFromLstar(D)D

    move-result-wide v2

    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/internal/colorUtil/Frame$Companion;->make([FFFFZ)Landroidx/compose/material3/internal/colorUtil/Frame;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/internal/colorUtil/Frame;->Default:Landroidx/compose/material3/internal/colorUtil/Frame;

    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->n:F

    iput p2, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->aw:F

    iput p3, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->nbb:F

    iput p4, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->ncb:F

    iput p5, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->c:F

    iput p6, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->nc:F

    iput-object p7, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->rgbD:[F

    iput p8, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->fl:F

    iput p9, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->flRoot:F

    iput p10, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->z:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFFF[FFFFLjh2;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p10}, Landroidx/compose/material3/internal/colorUtil/Frame;-><init>(FFFFFF[FFFF)V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/material3/internal/colorUtil/Frame;
    .locals 1

    sget-object v0, Landroidx/compose/material3/internal/colorUtil/Frame;->Default:Landroidx/compose/material3/internal/colorUtil/Frame;

    return-object v0
.end method


# virtual methods
.method public final getAw()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->aw:F

    return p0
.end method

.method public final getC()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->c:F

    return p0
.end method

.method public final getFl()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->fl:F

    return p0
.end method

.method public final getFlRoot()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->flRoot:F

    return p0
.end method

.method public final getN()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->n:F

    return p0
.end method

.method public final getNbb()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->nbb:F

    return p0
.end method

.method public final getNc()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->nc:F

    return p0
.end method

.method public final getNcb()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->ncb:F

    return p0
.end method

.method public final getRgbD()[F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->rgbD:[F

    return-object p0
.end method

.method public final getZ()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/colorUtil/Frame;->z:F

    return p0
.end method
