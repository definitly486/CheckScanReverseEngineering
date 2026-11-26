.class public abstract Landroidx/graphics/path/PathIteratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/path/PathIteratorImpl$Companion;,
        Landroidx/graphics/path/PathIteratorImpl$WhenMappings;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/graphics/path/PathIteratorImpl$Companion;


# instance fields
.field private final conicEvaluation:Landroidx/graphics/path/PathIterator$ConicEvaluation;

.field private final path:Landroid/graphics/Path;

.field private final pointsData:[F

.field private final tolerance:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/path/PathIteratorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/path/PathIteratorImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/graphics/path/PathIteratorImpl;->Companion:Landroidx/graphics/path/PathIteratorImpl$Companion;

    const-string v0, "androidx.graphics.path"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Landroidx/graphics/path/PathIterator$ConicEvaluation;F)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/path/PathIteratorImpl;->path:Landroid/graphics/Path;

    iput-object p2, p0, Landroidx/graphics/path/PathIteratorImpl;->conicEvaluation:Landroidx/graphics/path/PathIterator$ConicEvaluation;

    iput p3, p0, Landroidx/graphics/path/PathIteratorImpl;->tolerance:F

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/graphics/path/PathIteratorImpl;->pointsData:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Path;Landroidx/graphics/path/PathIterator$ConicEvaluation;FILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 22
    sget-object p2, Landroidx/graphics/path/PathIterator$ConicEvaluation;->AsQuadratics:Landroidx/graphics/path/PathIterator$ConicEvaluation;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/high16 p3, 0x3e800000    # 0.25f

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/path/PathIteratorImpl;-><init>(Landroid/graphics/Path;Landroidx/graphics/path/PathIterator$ConicEvaluation;F)V

    return-void
.end method

.method private final floatsToPoints([FLandroidx/graphics/path/PathSegment$Type;)[Landroid/graphics/PointF;
    .locals 8

    sget-object p0, Landroidx/graphics/path/PathIteratorImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq p0, v1, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_0

    new-array p0, p2, [Landroid/graphics/PointF;

    return-object p0

    :cond_0
    new-array p0, v4, [Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    aget v6, p1, p2

    aget v7, p1, v0

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v5, p0, p2

    new-instance p2, Landroid/graphics/PointF;

    aget v5, p1, v2

    aget v6, p1, v1

    invoke-direct {p2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object p2, p0, v0

    new-instance p2, Landroid/graphics/PointF;

    aget v0, p1, v4

    aget v3, p1, v3

    invoke-direct {p2, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object p2, p0, v2

    new-instance p2, Landroid/graphics/PointF;

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v2, 0x7

    aget p1, p1, v2

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object p2, p0, v1

    return-object p0

    :cond_1
    new-array p0, v1, [Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    aget v6, p1, p2

    aget v7, p1, v0

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v5, p0, p2

    new-instance p2, Landroid/graphics/PointF;

    aget v5, p1, v2

    aget v1, p1, v1

    invoke-direct {p2, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object p2, p0, v0

    new-instance p2, Landroid/graphics/PointF;

    aget v0, p1, v4

    aget p1, p1, v3

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object p2, p0, v2

    return-object p0

    :cond_2
    new-array p0, v2, [Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    aget v4, p1, p2

    aget v5, p1, v0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, p0, p2

    new-instance p2, Landroid/graphics/PointF;

    aget v2, p1, v2

    aget p1, p1, v1

    invoke-direct {p2, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object p2, p0, v0

    return-object p0

    :cond_3
    new-array p0, v0, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    aget v2, p1, p2

    aget p1, p1, v0

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, p0, p2

    return-object p0
.end method

.method public static synthetic next$default(Landroidx/graphics/path/PathIteratorImpl;[FIILjava/lang/Object;)Landroidx/graphics/path/PathSegment$Type;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/path/PathIteratorImpl;->next([FI)Landroidx/graphics/path/PathSegment$Type;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: next"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract calculateSize(Z)I
.end method

.method public final getConicEvaluation()Landroidx/graphics/path/PathIterator$ConicEvaluation;
    .locals 0

    iget-object p0, p0, Landroidx/graphics/path/PathIteratorImpl;->conicEvaluation:Landroidx/graphics/path/PathIterator$ConicEvaluation;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Landroidx/graphics/path/PathIteratorImpl;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public final getTolerance()F
    .locals 0

    iget p0, p0, Landroidx/graphics/path/PathIteratorImpl;->tolerance:F

    return p0
.end method

.method public abstract hasNext()Z
.end method

.method public abstract next([FI)Landroidx/graphics/path/PathSegment$Type;
.end method

.method public final next()Landroidx/graphics/path/PathSegment;
    .locals 4

    iget-object v0, p0, Landroidx/graphics/path/PathIteratorImpl;->pointsData:[F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/graphics/path/PathIteratorImpl;->next([FI)Landroidx/graphics/path/PathSegment$Type;

    move-result-object v0

    sget-object v1, Landroidx/graphics/path/PathSegment$Type;->Done:Landroidx/graphics/path/PathSegment$Type;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroidx/graphics/path/PathSegmentUtilities;->getDoneSegment()Landroidx/graphics/path/PathSegment;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Landroidx/graphics/path/PathSegment$Type;->Close:Landroidx/graphics/path/PathSegment$Type;

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroidx/graphics/path/PathSegmentUtilities;->getCloseSegment()Landroidx/graphics/path/PathSegment;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Landroidx/graphics/path/PathSegment$Type;->Conic:Landroidx/graphics/path/PathSegment$Type;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroidx/graphics/path/PathIteratorImpl;->pointsData:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroidx/graphics/path/PathSegment;

    iget-object v3, p0, Landroidx/graphics/path/PathIteratorImpl;->pointsData:[F

    invoke-direct {p0, v3, v0}, Landroidx/graphics/path/PathIteratorImpl;->floatsToPoints([FLandroidx/graphics/path/PathSegment$Type;)[Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {v2, v0, p0, v1}, Landroidx/graphics/path/PathSegment;-><init>(Landroidx/graphics/path/PathSegment$Type;[Landroid/graphics/PointF;F)V

    return-object v2
.end method

.method public abstract peek()Landroidx/graphics/path/PathSegment$Type;
.end method
