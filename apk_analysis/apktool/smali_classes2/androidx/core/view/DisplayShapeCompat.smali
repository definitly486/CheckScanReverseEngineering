.class public final Landroidx/core/view/DisplayShapeCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DisplayShapeCompat$Impl34;,
        Landroidx/core/view/DisplayShapeCompat$Impl;,
        Landroidx/core/view/DisplayShapeCompat$ImplBase;
    }
.end annotation


# static fields
.field static final EMPTY:Landroidx/core/view/DisplayShapeCompat;

.field private static final TAG:Ljava/lang/String; = "DisplayShapeCompat"


# instance fields
.field private final mImpl:Landroidx/core/view/DisplayShapeCompat$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/core/view/DisplayShapeCompat;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/core/view/DisplayShapeCompat;-><init>(Ljava/lang/String;IIFIIIF)V

    sput-object v0, Landroidx/core/view/DisplayShapeCompat;->EMPTY:Landroidx/core/view/DisplayShapeCompat;

    return-void
.end method

.method private constructor <init>(Landroid/view/DisplayShape;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/core/view/DisplayShapeCompat$Impl34;

    invoke-direct {v0, p1}, Landroidx/core/view/DisplayShapeCompat$Impl34;-><init>(Landroid/view/DisplayShape;)V

    iput-object v0, p0, Landroidx/core/view/DisplayShapeCompat;->mImpl:Landroidx/core/view/DisplayShapeCompat$Impl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFIIIF)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/DisplayShapeCompat$ImplBase;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/core/view/DisplayShapeCompat$ImplBase;-><init>(Ljava/lang/String;IIFIIIF)V

    iput-object v0, p0, Landroidx/core/view/DisplayShapeCompat;->mImpl:Landroidx/core/view/DisplayShapeCompat$Impl;

    return-void
.end method

.method public static create(IIZIIII)Landroidx/core/view/DisplayShapeCompat;
    .locals 9

    invoke-static/range {p0 .. p6}, Landroidx/core/view/DisplayShapeCompat;->createSpecString(IIZIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroidx/core/view/DisplayShapeCompat;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v8}, Landroidx/core/view/DisplayShapeCompat;-><init>(Ljava/lang/String;IIFIIIF)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;FII)Landroidx/core/view/DisplayShapeCompat;
    .locals 9

    .line 19
    new-instance v0, Landroidx/core/view/DisplayShapeCompat;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Landroidx/core/view/DisplayShapeCompat;-><init>(Ljava/lang/String;IIFIIIF)V

    return-object v0
.end method

.method private static createSpecString(IIZIIII)Ljava/lang/String;
    .locals 6

    const-string v0, " Z"

    const-string v1, ","

    if-eqz p2, :cond_0

    div-int/lit8 p2, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    const-string p3, "M0,"

    const-string p4, " A"

    invoke-static {p1, p2, p3, p4, v1}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " 0 1,1 "

    invoke-static {p3, p1, p5, p0, v1}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {p3, p1, p4, p2, v1}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " 0 1,1 0,"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "M "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v2, p0, 0x2

    div-int/lit8 v3, p1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {v2, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    invoke-static {v2, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",0 L "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, p0, p4

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",0"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 0 0,1 "

    const-string v4, " A "

    if-lez p4, :cond_1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string p4, " L "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, p1, p5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez p5, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, p5

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez p6, :cond_3

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " 0 0,1 0,"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, p6

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    if-lez p3, :cond_4

    const-string p0, " L 0,"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toDisplayShapeCompat(Landroid/view/DisplayShape;)Landroidx/core/view/DisplayShapeCompat;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/core/view/DisplayShapeCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/DisplayShapeCompat;-><init>(Landroid/view/DisplayShape;)V

    return-object v0
.end method

.method public static toPlatformDisplayShape(Landroidx/core/view/DisplayShapeCompat;)Landroid/view/DisplayShape;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat;->mImpl:Landroidx/core/view/DisplayShapeCompat$Impl;

    invoke-interface {p0}, Landroidx/core/view/DisplayShapeCompat$Impl;->getPlatformDisplayShape()Landroid/view/DisplayShape;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/core/view/DisplayShapeCompat;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/core/view/DisplayShapeCompat;

    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat;->mImpl:Landroidx/core/view/DisplayShapeCompat$Impl;

    iget-object p1, p1, Landroidx/core/view/DisplayShapeCompat;->mImpl:Landroidx/core/view/DisplayShapeCompat$Impl;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat;->mImpl:Landroidx/core/view/DisplayShapeCompat$Impl;

    invoke-interface {p0}, Landroidx/core/view/DisplayShapeCompat$Impl;->getPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat;->mImpl:Landroidx/core/view/DisplayShapeCompat$Impl;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat;->mImpl:Landroidx/core/view/DisplayShapeCompat$Impl;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
