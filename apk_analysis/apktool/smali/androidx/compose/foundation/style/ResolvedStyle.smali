.class public final Landroidx/compose/foundation/style/ResolvedStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/style/StyleScope;
.implements Landroidx/compose/ui/platform/InspectableValue;


# static fields
.field public static final $stable:I


# instance fields
.field private _density:F

.field private _fontScale:F

.field private alpha:F

.field private animating:Z

.field private backgroundBrush:Landroidx/compose/ui/graphics/Brush;

.field private backgroundColor:J

.field private baselineShift:F

.field private borderBrush:Landroidx/compose/ui/graphics/Brush;

.field private borderColor:J

.field private borderWidth:F

.field private bottom:F

.field private cameraDistance:F

.field private clip:Z

.field private compositeHash:I

.field private contentBrush:Landroidx/compose/ui/graphics/Brush;

.field private contentColor:J

.field private contentPaddingBottom:F

.field private contentPaddingEnd:F

.field private contentPaddingStart:F

.field private contentPaddingTop:F

.field private currentIndex:I

.field private dropShadow:Ljava/lang/Object;

.field private externalPaddingBottom:F

.field private externalPaddingEnd:F

.field private externalPaddingStart:F

.field private externalPaddingTop:F

.field public flags:I

.field private fontFamily:Landroidx/compose/ui/text/font/FontFamily;

.field private fontSize:J

.field private foregroundBrush:Landroidx/compose/ui/graphics/Brush;

.field private foregroundColor:J

.field private height:F

.field private heightFraction:F

.field private indexStack:Landroidx/collection/MutableIntList;

.field private innerShadow:Ljava/lang/Object;

.field private left:F

.field private letterSpacing:J

.field private lineBreak:I

.field private lineHeight:J

.field private maxHeight:F

.field private maxWidth:F

.field private minHeight:F

.field private minWidth:F

.field private node:Landroidx/compose/foundation/style/StyleOuterNode;

.field private right:F

.field private rotationX:F

.field private rotationY:F

.field private rotationZ:F

.field private scaleX:F

.field private scaleY:F

.field private shape:Landroidx/compose/ui/graphics/Shape;

.field private textEnums:I

.field private textIndent:Landroidx/compose/ui/text/style/TextIndent;

.field private top:F

.field private transformOrigin:J

.field private translationX:F

.field private translationY:F

.field private width:F

.field private widthFraction:F

.field private zIndex:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_fontScale:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->left:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->top:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->right:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->bottom:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth:F

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth:F

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundColor:J

    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    sget-object v2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->cameraDistance:F

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    sget-object v0, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift$Companion;->getUnspecified-y9eOQZs()F

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    sget-object v0, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$Companion;->getUnspecified-rAG3T2k()I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    return-void
.end method

.method public static synthetic diff$foundation$default(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->diff$foundation(Landroidx/compose/foundation/style/ResolvedStyle;I)I

    move-result p0

    return p0
.end method

.method private final getCurrentCompositeHash()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    xor-int/2addr p0, v0

    return p0
.end method

.method private final group(ILll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    xor-int/2addr p1, v0

    .line 50
    iget v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    invoke-static {v1, p1}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$updateHashEnter(II)I

    move-result v1

    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    .line 51
    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->pushIndex(I)Landroidx/collection/MutableIntList;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    .line 53
    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    .line 54
    iget p2, v0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 p2, p2, -0x1

    .line 55
    invoke-virtual {v0, p2}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 56
    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    .line 57
    iget p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    invoke-static {p2, p1}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$updateHashExit(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    return-void
.end method

.method private final group(IZLandroidx/compose/foundation/style/Style;)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    if-eqz p2, :cond_0

    xor-int/2addr p1, v0

    iget p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    invoke-static {p2, p1}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$updateHashEnter(II)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->pushIndex(I)Landroidx/collection/MutableIntList;

    move-result-object p2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    invoke-interface {p3, p0}, Landroidx/compose/foundation/style/Style;->applyStyle(Landroidx/compose/foundation/style/StyleScope;)V

    iget p3, p2, Landroidx/collection/IntList;->_size:I

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    iget p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    invoke-static {p2, p1}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$updateHashExit(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    return-void
.end method

.method private final pushIndex(I)Landroidx/collection/MutableIntList;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->indexStack:Landroidx/collection/MutableIntList;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntList;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->indexStack:Landroidx/collection/MutableIntList;

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntList;->add(I)Z

    return-object v0
.end method

.method public static synthetic resolveForTesting$foundation$default(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/Style;Landroidx/compose/ui/unit/Density;ZLandroidx/compose/foundation/style/StyleState;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/style/ResolvedStyle;->resolveForTesting$foundation(Landroidx/compose/foundation/style/Style;Landroidx/compose/ui/unit/Density;ZLandroidx/compose/foundation/style/StyleState;)V

    return-void
.end method

.method private final skippedGroup()V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    return-void
.end method

.method private final valueElements()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ValueElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$getEmptyResolvedStyle$p()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v1

    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "contentPaddingStart"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "contentPaddingEnd"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_1
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "contentPaddingTop"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_2
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, "contentPaddingBottom"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_3
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    const-string v2, "externalPaddingStart"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_4
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    const-string v2, "externalPaddingEnd"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_5
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    const-string v2, "externalPaddingTop"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_6
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    const-string v2, "externalPaddingBottom"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_7
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    const-string v2, "borderWidth"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_8
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    const-string v2, "width"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_9
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_a

    goto :goto_a

    :cond_a
    const-string v2, "height"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_a
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_b

    iget v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "widthFraction"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_b
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_c

    iget v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "heightFraction"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_c
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_d

    goto :goto_b

    :cond_d
    const-string v2, "alpha"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_b
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_e

    goto :goto_c

    :cond_e
    const-string v2, "scaleX"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_c
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_f

    goto :goto_d

    :cond_f
    const-string v2, "scaleY"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_d
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_10

    goto :goto_e

    :cond_10
    const-string v2, "translationX"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_e
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_11

    goto :goto_f

    :cond_11
    const-string v2, "translationY"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_f
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->rotationX:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_12

    goto :goto_10

    :cond_12
    const-string v2, "rotationX"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_10
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->rotationY:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_13

    goto :goto_11

    :cond_13
    const-string v2, "rotationY"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_11
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->rotationZ:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationZ:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_14

    goto :goto_12

    :cond_14
    const-string v2, "rotationZ"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_12
    iget-wide v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    iget-wide v4, p0, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_15

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v2

    const-string v3, "transformOrigin"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_15
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->zIndex:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->zIndex:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_16

    goto :goto_13

    :cond_16
    const-string v2, "zIndex"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_13
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->cameraDistance:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->cameraDistance:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_17

    goto :goto_14

    :cond_17
    const-string v2, "cameraDistance"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_14
    iget-wide v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    iget-wide v4, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_18

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const-string v3, "borderColor"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_18
    iget-object v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "borderBrush"

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_19
    iget-wide v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    iget-wide v4, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const-string v3, "backgroundColor"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1a
    iget-object v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "backgroundBrush"

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1b
    iget-object v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "foregroundBrush"

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1c
    iget-boolean v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->clip:Z

    iget-boolean v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->clip:Z

    if-eq v2, v3, :cond_1d

    const-string v2, "clip"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1d
    iget-object v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "shape"

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1e
    iget-wide v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const-string v3, "contentColor"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1f
    iget-object v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "contentBrush"

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_20
    iget-object v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "fontFamily"

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_21
    iget-object v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "textIndent"

    iget-object v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_22
    iget-wide v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    iget-wide v4, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_23

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->box-impl(J)Landroidx/compose/ui/unit/TextUnit;

    move-result-object v2

    const-string v3, "fontSize"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_23
    iget-wide v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    iget-wide v4, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_24

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->box-impl(J)Landroidx/compose/ui/unit/TextUnit;

    move-result-object v2

    const-string v3, "lineHeight"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_24
    iget-wide v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    iget-wide v4, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_25

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->box-impl(J)Landroidx/compose/ui/unit/TextUnit;

    move-result-object v2

    const-string v3, "letterSpacing"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_25
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/BaselineShift;->equals-impl0(FF)Z

    move-result v2

    if-nez v2, :cond_26

    iget v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    invoke-static {v2}, Landroidx/compose/ui/text/style/BaselineShift;->box-impl(F)Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v2

    const-string v3, "baselineShift"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_26
    iget v2, v1, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    iget v3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/LineBreak;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_27

    iget v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    invoke-static {v2}, Landroidx/compose/ui/text/style/LineBreak;->box-impl(I)Landroidx/compose/ui/text/style/LineBreak;

    move-result-object v2

    const-string v3, "lineBreak"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_27
    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextAlign-e0LSkKk$foundation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextAlign-e0LSkKk$foundation()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextAlign-e0LSkKk$foundation()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v2

    const-string v3, "textAlign"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_28
    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDirection-s_7X-co$foundation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDirection-s_7X-co$foundation()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDirection-s_7X-co$foundation()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/text/style/TextDirection;->box-impl(I)Landroidx/compose/ui/text/style/TextDirection;

    move-result-object v2

    const-string v3, "textDirection"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getHyphens-vmbZdU8$foundation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHyphens-vmbZdU8$foundation()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHyphens-vmbZdU8$foundation()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v2

    const-string v3, "hyphens"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2a
    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontStyle-_-LCdwA$foundation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontStyle-_-LCdwA$foundation()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontStyle-_-LCdwA$foundation()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v2

    const-string v3, "fontStyle"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2b
    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontWeight$foundation()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontWeight$foundation()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "fontWeight"

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontWeight$foundation()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2c
    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSynthesis-GVVA2EU$foundation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSynthesis-GVVA2EU$foundation()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSynthesis-GVVA2EU$foundation()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v2

    const-string v3, "fontSynthesis"

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2d
    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDecoration$foundation()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDecoration$foundation()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v2

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "textDecoration"

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDecoration$foundation()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2e
    return-object v0
.end method

.method private static final valueElements$lambda$0$add(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ValueElement;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    new-instance v0, Landroidx/compose/ui/platform/ValueElement;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/platform/ValueElement;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public alpha(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    return-void
.end method

.method public animate(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/foundation/style/Style;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/foundation/style/Style;",
            ")V"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    const v1, 0x4e95b218

    xor-int/2addr v1, v0

    iget v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    invoke-static {v2, v1}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$updateHashEnter(II)I

    move-result v2

    iput v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->pushIndex(I)Landroidx/collection/MutableIntList;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    iget-boolean v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->animating:Z

    if-eqz v2, :cond_0

    invoke-static {p0, p3}, Landroidx/compose/foundation/style/StyleScopeKt;->apply(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->node:Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleOuterNode;->getAnimations$foundation()Landroidx/compose/foundation/style/StyleAnimations;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Landroidx/compose/foundation/style/StyleAnimations;

    invoke-direct {v3, v2}, Landroidx/compose/foundation/style/StyleAnimations;-><init>(Landroidx/compose/foundation/style/StyleOuterNode;)V

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/style/StyleOuterNode;->setAnimations$foundation(Landroidx/compose/foundation/style/StyleAnimations;)V

    :cond_1
    iget v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    iget v4, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2, p3, p1, p2}, Landroidx/compose/foundation/style/StyleAnimations;->record(ILandroidx/compose/foundation/style/Style;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V

    :goto_0
    iget p1, v0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    iget p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    invoke-static {p1, v1}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$updateHashExit(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    return-void
.end method

.method public animate(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/foundation/style/Style;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/foundation/style/Style;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p1, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->animate(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/foundation/style/Style;)V

    return-void
.end method

.method public animate(Landroidx/compose/foundation/style/Style;)V
    .locals 2

    .line 84
    invoke-static {}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$getDefaultSpringSpec$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    invoke-static {}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$getDefaultSpringSpec$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/compose/foundation/style/ResolvedStyle;->animate(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/foundation/style/Style;)V

    return-void
.end method

.method public final applyInheritableStyles$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 11

    iget v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    and-int/lit8 v0, v0, 0x60

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    const-wide/16 v4, 0x10

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    iget-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    :cond_3
    iput-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    :cond_4
    iput-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    iget-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_5

    move v4, v8

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move-wide v0, v2

    :goto_2
    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    iget-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v9

    cmp-long v4, v9, v6

    if-nez v4, :cond_7

    move v4, v8

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    move-wide v0, v2

    :goto_4
    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    iget-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    iget-wide v2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v9

    cmp-long v4, v9, v6

    if-nez v4, :cond_9

    move v5, v8

    :cond_9
    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    move-wide v0, v2

    :goto_5
    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    iget v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    iget v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    sget-object v2, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/BaselineShift$Companion;->getUnspecified-y9eOQZs()F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/style/BaselineShift;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    iget v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    iget v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    sget-object v2, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/LineBreak$Companion;->getUnspecified-rAG3T2k()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/style/LineBreak;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    move v0, v1

    :goto_7
    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    iget p1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    and-int/lit8 v1, p1, 0x3

    and-int/lit8 v2, v0, -0x4

    if-eqz v1, :cond_d

    move v0, v1

    :cond_d
    or-int/2addr v0, v2

    and-int/lit8 v1, p1, 0x1c

    and-int/lit8 v2, v0, -0x1d

    if-eqz v1, :cond_e

    move v0, v1

    :cond_e
    or-int/2addr v0, v2

    and-int/lit8 v1, p1, 0x70

    and-int/lit8 v2, v0, -0x71

    if-eqz v1, :cond_f

    move v0, v1

    :cond_f
    or-int/2addr v0, v2

    and-int/lit16 v1, p1, 0x300

    and-int/lit16 v2, v0, -0x301

    if-eqz v1, :cond_10

    move v0, v1

    :cond_10
    or-int/2addr v0, v2

    and-int/lit16 v1, p1, 0x3c00

    and-int/lit16 v2, v0, -0x3c01

    if-eqz v1, :cond_11

    move v0, v1

    :cond_11
    or-int/2addr v0, v2

    const/high16 v1, 0x7fe0000

    and-int/2addr p1, v1

    const v1, -0x7fe0001

    and-int/2addr v1, v0

    if-eqz p1, :cond_12

    move v0, p1

    :cond_12
    or-int p1, v1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public background(Landroidx/compose/ui/graphics/Brush;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    return-void
.end method

.method public background-8_81llA(J)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public baselineShift-4Dl_Bck(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    return-void
.end method

.method public border-D5KLDUw(FLandroidx/compose/ui/graphics/Brush;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth-0680j_4(F)V

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush(Landroidx/compose/ui/graphics/Brush;)V

    return-void
.end method

.method public border-cXLIe8U(FJ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth-0680j_4(F)V

    invoke-virtual {p0, p2, p3}, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor-8_81llA(J)V

    return-void
.end method

.method public borderBrush(Landroidx/compose/ui/graphics/Brush;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    return-void
.end method

.method public borderColor-8_81llA(J)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public borderWidth-0680j_4(F)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getHairline-D9Ej5fM()F

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    :goto_0
    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    return-void
.end method

.method public bottom-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->bottom:F

    return-void
.end method

.method public final clear$foundation()V
    .locals 1

    invoke-static {}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$getEmptyResolvedStyle$p()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/style/ResolvedStyle;->copyInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    return-void
.end method

.method public clip(Z)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-boolean p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->clip:Z

    return-void
.end method

.method public contentBrush(Landroidx/compose/ui/graphics/Brush;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    return-void
.end method

.method public contentColor-8_81llA(J)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public contentPadding-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    return-void
.end method

.method public contentPadding-YgX7TsA(FF)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    return-void
.end method

.method public contentPadding-a9UjIt4(FFFF)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    invoke-interface {p0, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    invoke-interface {p0, p4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    return-void
.end method

.method public contentPaddingBottom-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    return-void
.end method

.method public contentPaddingEnd-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    return-void
.end method

.method public contentPaddingHorizontal-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    return-void
.end method

.method public contentPaddingStart-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    return-void
.end method

.method public contentPaddingTop-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    return-void
.end method

.method public contentPaddingVertical-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    return-void
.end method

.method public final copy$foundation()Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {v0}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->copyInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    return-object v0
.end method

.method public final copyInheritedStyles$foundation()Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {v0}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->copyInheritedStylesInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    return-object v0
.end method

.method public final copyInheritedStylesInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    iput-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    iput-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iput-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    iput-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    iput-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    iput-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    iput-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    iput p0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public final copyInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->left:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->left:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->top:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->top:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->right:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->right:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->bottom:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->bottom:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationX:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->rotationX:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationY:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->rotationY:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationZ:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->rotationZ:F

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    iput-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->zIndex:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->zIndex:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->cameraDistance:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->cameraDistance:F

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    iput-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    iput-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    iput-wide v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    iput-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    iput-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->dropShadow:Ljava/lang/Object;

    iput-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->dropShadow:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->innerShadow:Ljava/lang/Object;

    iput-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->innerShadow:Ljava/lang/Object;

    iget-boolean v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->clip:Z

    iput-boolean v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->clip:Z

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    iput v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyle;->copyInheritedStylesInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    return-void
.end method

.method public final diff$foundation(Landroidx/compose/foundation/style/ResolvedStyle;I)I
    .locals 5

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    xor-int v2, v0, v1

    and-int/2addr v0, v1

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    or-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_0
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->left:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->left:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->top:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->top:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->right:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->right:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->bottom:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->bottom:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_4

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    iget-wide v3, p1, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    iget-wide v3, p1, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->innerShadow:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->innerShadow:Ljava/lang/Object;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->dropShadow:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->dropShadow:Ljava/lang/Object;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    or-int/lit8 v2, v2, 0x2

    :cond_5
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationX:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->rotationX:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationY:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->rotationY:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationZ:F

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->rotationZ:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    iget-wide v3, p1, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->clip:Z

    iget-boolean v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->clip:Z

    if-eq v0, v1, :cond_7

    :cond_6
    or-int/lit8 v2, v2, 0x4

    :cond_7
    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    or-int/lit8 v2, v2, 0x6

    :cond_8
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_a

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    iget-wide v3, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    or-int/lit8 v2, v2, 0x40

    :cond_a
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_c

    iget-object p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    invoke-static {p2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    iget-object v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    invoke-static {p2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    iget-wide v3, p1, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    iget-wide v3, p1, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    iget-wide v3, p1, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result p2

    if-eqz p2, :cond_b

    iget p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    iget v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    invoke-static {p2, v0}, Landroidx/compose/ui/text/style/BaselineShift;->equals-impl0(FF)Z

    move-result p2

    if-eqz p2, :cond_b

    iget p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    iget v0, p1, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    invoke-static {p2, v0}, Landroidx/compose/ui/text/style/LineBreak;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_b

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    iget p1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    if-eq p0, p1, :cond_c

    :cond_b
    or-int/lit8 p0, v2, 0x60

    return p0

    :cond_c
    return v2
.end method

.method public final doneResolve$foundation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->node:Landroidx/compose/foundation/style/StyleOuterNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->animating:Z

    return-void
.end method

.method public dropShadow(Landroidx/compose/ui/graphics/shadow/Shadow;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->dropShadow:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    return-void
.end method

.method public varargs dropShadow([Landroidx/compose/ui/graphics/shadow/Shadow;)V
    .locals 0

    .line 9
    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->dropShadow:Ljava/lang/Object;

    .line 10
    iget p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    return-void
.end method

.method public externalPadding-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    return-void
.end method

.method public externalPadding-YgX7TsA(FF)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    return-void
.end method

.method public externalPadding-a9UjIt4(FFFF)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    invoke-interface {p0, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    invoke-interface {p0, p4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    return-void
.end method

.method public externalPaddingBottom-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    return-void
.end method

.method public externalPaddingEnd-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    return-void
.end method

.method public externalPaddingHorizontal-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    return-void
.end method

.method public externalPaddingStart-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    return-void
.end method

.method public externalPaddingTop-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    return-void
.end method

.method public externalPaddingVertical-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    return-void
.end method

.method public fontFamily(Landroidx/compose/ui/text/font/FontFamily;)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    return-void
.end method

.method public fontSize--R2X_6o(J)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    return-void
.end method

.method public fontStyle-nzbMABs(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    or-int/lit8 p1, p1, 0x2

    and-int/lit8 v0, v0, -0x4

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public fontSynthesis-6p3vJLY(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    and-int/lit8 p1, p1, 0x7

    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    shl-int/lit8 p1, p1, 0xa

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public fontWeight(Landroidx/compose/ui/text/font/FontWeight;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    move-result p1

    const v1, -0x7fe0001

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x11

    const/high16 v1, 0x7fe0000

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public foreground(Landroidx/compose/ui/graphics/Brush;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundColor:J

    return-void
.end method

.method public foreground-8_81llA(J)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundColor:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public final getAlpha$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    return p0
.end method

.method public final getBackgroundBrush$foundation()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public final getBackgroundColor-0d7_KjU$foundation()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    return-wide v0
.end method

.method public final getBaselineShift-y9eOQZs$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    return p0
.end method

.method public final getBorderBrush$foundation()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public final getBorderColor-0d7_KjU$foundation()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    return-wide v0
.end method

.method public final getBorderWidth$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    return p0
.end method

.method public final getBottom$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->bottom:F

    return p0
.end method

.method public final getCameraDistance$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->cameraDistance:F

    return p0
.end method

.method public final getClip$foundation()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->clip:Z

    return p0
.end method

.method public final getContentBrush$foundation()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public final getContentColor-0d7_KjU$foundation()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    return-wide v0
.end method

.method public final getContentPaddingBottom$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    return p0
.end method

.method public final getContentPaddingEnd$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    return p0
.end method

.method public final getContentPaddingStart$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    return p0
.end method

.method public final getContentPaddingTop$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    return p0
.end method

.method public getCurrentValue(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->node:Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDensity()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    return p0
.end method

.method public final getDropShadow$foundation()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->dropShadow:Ljava/lang/Object;

    return-object p0
.end method

.method public final getExternalPaddingBottom$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    return p0
.end method

.method public final getExternalPaddingEnd$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    return p0
.end method

.method public final getExternalPaddingStart$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    return p0
.end method

.method public final getExternalPaddingTop$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    return p0
.end method

.method public final getFontFamily$foundation()Landroidx/compose/ui/text/font/FontFamily;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    return-object p0
.end method

.method public getFontScale()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_fontScale:F

    return p0
.end method

.method public final getFontSize-XSAIIZE$foundation()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    return-wide v0
.end method

.method public final getFontStyle-_-LCdwA$foundation()I
    .locals 1

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    sget-object p0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result p0

    return p0
.end method

.method public final getFontSynthesis-GVVA2EU$foundation()I
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    and-int/lit16 p0, p0, 0x3c00

    shr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x7

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->valueOf-9CiegCU(I)I

    move-result p0

    return p0
.end method

.method public final getFontWeight$foundation()Landroidx/compose/ui/text/font/FontWeight;
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/font/FontWeight;

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    const/high16 v1, 0x7fe0000

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x11

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    return-object v0
.end method

.method public final getForegroundBrush$foundation()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public final getForegroundColor-0d7_KjU$foundation()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundColor:J

    return-wide v0
.end method

.method public final getHeight$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    return p0
.end method

.method public final getHeightFraction$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    return p0
.end method

.method public final getHyphens-vmbZdU8$foundation()I
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    and-int/lit16 p0, p0, 0x300

    shr-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/style/Hyphens$Companion;->valueOf-kPa1_AA(I)I

    move-result p0

    return p0
.end method

.method public final getInnerShadow$foundation()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->innerShadow:Ljava/lang/Object;

    return-object p0
.end method

.method public getInspectableElements()Lzo7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzo7<",
            "Landroidx/compose/ui/platform/ValueElement;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->valueElements()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->K(Ljava/lang/Iterable;)Lpn1;

    move-result-object p0

    return-object p0
.end method

.method public final getLeft$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->left:F

    return p0
.end method

.method public final getLetterSpacing-XSAIIZE$foundation()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    return-wide v0
.end method

.method public final getLineBreak-rAG3T2k$foundation()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    return p0
.end method

.method public final getLineHeight-XSAIIZE$foundation()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    return-wide v0
.end method

.method public final getMaxHeight$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight:F

    return p0
.end method

.method public final getMaxWidth$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth:F

    return p0
.end method

.method public final getMinHeight$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight:F

    return p0
.end method

.method public final getMinWidth$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth:F

    return p0
.end method

.method public final getRight$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->right:F

    return p0
.end method

.method public final getRotationX$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationX:F

    return p0
.end method

.method public final getRotationY$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationY:F

    return p0
.end method

.method public final getRotationZ$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationZ:F

    return p0
.end method

.method public final getScaleX$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    return p0
.end method

.method public final getScaleY$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    return p0
.end method

.method public final getShape$foundation()Landroidx/compose/ui/graphics/Shape;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method public getState()Landroidx/compose/foundation/style/StyleState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->node:Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/StyleOuterNode;->getState$foundation()Landroidx/compose/foundation/style/StyleState;

    move-result-object p0

    return-object p0
.end method

.method public final getTextAlign-e0LSkKk$foundation()I
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    and-int/lit8 p0, p0, 0x1c

    shr-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->valueOf-IgVj0fw(I)I

    move-result p0

    return p0
.end method

.method public final getTextDecoration$foundation()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 2

    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    const v1, 0x1c000

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0xe

    and-int/lit8 p0, p0, 0x3

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->valueOf(I)Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    return-object p0
.end method

.method public final getTextDirection-s_7X-co$foundation()I
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    and-int/lit8 p0, p0, 0x70

    shr-int/lit8 p0, p0, 0x4

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->valueOf-E8nx0Ws(I)I

    move-result p0

    return p0
.end method

.method public final getTextEnums$foundation()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return p0
.end method

.method public final getTextIndent$foundation()Landroidx/compose/ui/text/style/TextIndent;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    return-object p0
.end method

.method public final getTop$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->top:F

    return p0
.end method

.method public final getTransformOrigin-SzJe1aQ$foundation()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    return-wide v0
.end method

.method public final getTranslationX$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    return p0
.end method

.method public final getTranslationY$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    return p0
.end method

.method public final getWidth$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    return p0
.end method

.method public final getWidthFraction$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    return p0
.end method

.method public final getZIndex$foundation()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->zIndex:F

    return p0
.end method

.method public height(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    return-void
.end method

.method public height-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    return-void
.end method

.method public hyphens--3fSNIE(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    and-int/lit16 v0, v0, -0x301

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0x300

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public innerShadow(Landroidx/compose/ui/graphics/shadow/Shadow;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->innerShadow:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    return-void
.end method

.method public varargs innerShadow([Landroidx/compose/ui/graphics/shadow/Shadow;)V
    .locals 0

    .line 9
    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->innerShadow:Ljava/lang/Object;

    .line 10
    iget p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    return-void
.end method

.method public final isFontWeightSpecified$foundation()Z
    .locals 1

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    const/high16 v0, 0x7fe0000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x11

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public left-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->left:F

    return-void
.end method

.method public letterSpacing--R2X_6o(J)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    return-void
.end method

.method public lineBreak-CZqVlQI(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    return-void
.end method

.method public lineHeight--R2X_6o(J)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    return-void
.end method

.method public maxHeight-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight:F

    return-void
.end method

.method public maxSize-EaSLcWc(J)V
    .locals 1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth-0680j_4(F)V

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight-0680j_4(F)V

    return-void
.end method

.method public maxSize-YgX7TsA(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth-0680j_4(F)V

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight-0680j_4(F)V

    return-void
.end method

.method public maxWidth-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth:F

    return-void
.end method

.method public minHeight-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight:F

    return-void
.end method

.method public minSize-EaSLcWc(J)V
    .locals 1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth-0680j_4(F)V

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight-0680j_4(F)V

    return-void
.end method

.method public minSize-YgX7TsA(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth-0680j_4(F)V

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight-0680j_4(F)V

    return-void
.end method

.method public minWidth-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth:F

    return-void
.end method

.method public final resolve$foundation(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Z)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroidx/compose/foundation/style/ResolvedStyle;->startResolve$foundation(Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Z)V

    invoke-interface {p1, p0}, Landroidx/compose/foundation/style/Style;->applyStyle(Landroidx/compose/foundation/style/StyleScope;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->doneResolve$foundation()V

    return-void
.end method

.method public final resolveForTesting$foundation(Landroidx/compose/foundation/style/Style;Landroidx/compose/ui/unit/Density;ZLandroidx/compose/foundation/style/StyleState;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    new-instance v0, Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-direct {v0, p4, p1}, Landroidx/compose/foundation/style/StyleOuterNode;-><init>(Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)V

    iput-object v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->node:Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-interface {p2}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    iput-boolean p3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->animating:Z

    invoke-interface {p1, p0}, Landroidx/compose/foundation/style/Style;->applyStyle(Landroidx/compose/foundation/style/StyleScope;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->doneResolve$foundation()V

    return-void
.end method

.method public right-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->right:F

    return-void
.end method

.method public rotationX(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationX:F

    return-void
.end method

.method public rotationY(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationY:F

    return-void
.end method

.method public rotationZ(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationZ:F

    return-void
.end method

.method public scale(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    return-void
.end method

.method public scaleX(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    return-void
.end method

.method public scaleY(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    return-void
.end method

.method public final setAlpha$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->alpha:F

    return-void
.end method

.method public final setBackgroundBrush$foundation(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundBrush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public final setBackgroundColor-8_81llA$foundation(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->backgroundColor:J

    return-void
.end method

.method public final setBaselineShift-4Dl_Bck$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    return-void
.end method

.method public final setBorderBrush$foundation(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderBrush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public final setBorderColor-8_81llA$foundation(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderColor:J

    return-void
.end method

.method public final setBorderWidth$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->borderWidth:F

    return-void
.end method

.method public final setBottom$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->bottom:F

    return-void
.end method

.method public final setCameraDistance$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->cameraDistance:F

    return-void
.end method

.method public final setClip$foundation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->clip:Z

    return-void
.end method

.method public final setContentBrush$foundation(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public final setContentColor-8_81llA$foundation(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    return-void
.end method

.method public final setContentPaddingBottom$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingBottom:F

    return-void
.end method

.method public final setContentPaddingEnd$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingEnd:F

    return-void
.end method

.method public final setContentPaddingStart$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingStart:F

    return-void
.end method

.method public final setContentPaddingTop$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->contentPaddingTop:F

    return-void
.end method

.method public final setDropShadow$foundation(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->dropShadow:Ljava/lang/Object;

    return-void
.end method

.method public final setExternalPaddingBottom$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingBottom:F

    return-void
.end method

.method public final setExternalPaddingEnd$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingEnd:F

    return-void
.end method

.method public final setExternalPaddingStart$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingStart:F

    return-void
.end method

.method public final setExternalPaddingTop$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->externalPaddingTop:F

    return-void
.end method

.method public final setFontFamily$foundation(Landroidx/compose/ui/text/font/FontFamily;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    return-void
.end method

.method public final setFontSize--R2X_6o$foundation(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    return-void
.end method

.method public final setForegroundBrush$foundation(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundBrush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public final setForegroundColor-8_81llA$foundation(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->foregroundColor:J

    return-void
.end method

.method public final setHeight$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    return-void
.end method

.method public final setHeightFraction$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    return-void
.end method

.method public final setInnerShadow$foundation(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->innerShadow:Ljava/lang/Object;

    return-void
.end method

.method public final setLeft$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->left:F

    return-void
.end method

.method public final setLetterSpacing--R2X_6o$foundation(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    return-void
.end method

.method public final setLineBreak-CZqVlQI$foundation(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    return-void
.end method

.method public final setLineHeight--R2X_6o$foundation(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    return-void
.end method

.method public final setMaxHeight$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxHeight:F

    return-void
.end method

.method public final setMaxWidth$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->maxWidth:F

    return-void
.end method

.method public final setMinHeight$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minHeight:F

    return-void
.end method

.method public final setMinWidth$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->minWidth:F

    return-void
.end method

.method public final setRight$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->right:F

    return-void
.end method

.method public final setRotationX$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationX:F

    return-void
.end method

.method public final setRotationY$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationY:F

    return-void
.end method

.method public final setRotationZ$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->rotationZ:F

    return-void
.end method

.method public final setScaleX$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleX:F

    return-void
.end method

.method public final setScaleY$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->scaleY:F

    return-void
.end method

.method public final setShape$foundation(Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public final setTextEnums$foundation(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public final setTextIndent$foundation(Landroidx/compose/ui/text/style/TextIndent;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    return-void
.end method

.method public final setTop$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->top:F

    return-void
.end method

.method public final setTransformOrigin-__ExYCQ$foundation(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    return-void
.end method

.method public final setTranslationX$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    return-void
.end method

.method public final setTranslationY$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    return-void
.end method

.method public final setWidth$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    return-void
.end method

.method public final setWidthFraction$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    return-void
.end method

.method public final setZIndex$foundation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->zIndex:F

    return-void
.end method

.method public shape(Landroidx/compose/ui/graphics/Shape;)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public size-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    return-void
.end method

.method public size-EaSLcWc(J)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p1

    iget p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, p2

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    return-void
.end method

.method public size-YgX7TsA(FF)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    mul-float/2addr p2, v0

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->height:F

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->heightFraction:F

    return-void
.end method

.method public final startResolve$foundation(Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->currentIndex:I

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->compositeHash:I

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->node:Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-interface {p2}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    iput-boolean p3, p0, Landroidx/compose/foundation/style/ResolvedStyle;->animating:Z

    return-void
.end method

.method public state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "TT;>;",
            "Landroidx/compose/foundation/style/Style;",
            "Lbm3<",
            "-",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "TT;>;-",
            "Landroidx/compose/foundation/style/StyleState;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getState()Landroidx/compose/foundation/style/StyleState;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->group(IZLandroidx/compose/foundation/style/Style;)V

    return-void
.end method

.method public textAlign-aXe7zB0(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    and-int/lit8 v0, v0, -0x1d

    shl-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0x1c

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public textDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDecoration;->getMask()I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    shl-int/lit8 p1, p1, 0xe

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public textDirection-Hejc4pk(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    and-int/lit8 v0, v0, -0x71

    shl-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0x70

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textEnums:I

    return-void
.end method

.method public textIndent(Landroidx/compose/ui/text/style/TextIndent;)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-object p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    return-void
.end method

.method public textStyle(Landroidx/compose/ui/text/TextStyle;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextStyle;->toSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor-8_81llA(J)V

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize--R2X_6o(J)V

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-nez v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing--R2X_6o(J)V

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush(Landroidx/compose/ui/graphics/Brush;)V

    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->fontStyle-nzbMABs(I)V

    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift-4Dl_Bck(F)V

    :cond_7
    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->fontWeight(Landroidx/compose/ui/text/font/FontWeight;)V

    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->textDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->fontSynthesis-6p3vJLY(I)V

    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextStyle;->toParagraphStyle()Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getTextIndent()Landroidx/compose/ui/text/style/TextIndent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent(Landroidx/compose/ui/text/style/TextIndent;)V

    :cond_b
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getLineHeight-XSAIIZE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_c

    move v2, v5

    :cond_c
    if-nez v2, :cond_d

    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getLineHeight-XSAIIZE()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight--R2X_6o(J)V

    :cond_d
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getLineBreak-rAG3T2k()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/LineBreak$Companion;->getUnspecified-rAG3T2k()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/LineBreak;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getLineBreak-rAG3T2k()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak-CZqVlQI(I)V

    :cond_e
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getHyphens-vmbZdU8()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getHyphens-vmbZdU8()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->hyphens--3fSNIE(I)V

    :cond_f
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getTextDirection-s_7X-co()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getTextDirection-s_7X-co()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->textDirection-Hejc4pk(I)V

    :cond_10
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getTextAlign-e0LSkKk()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getTextAlign-e0LSkKk()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyle;->textAlign-aXe7zB0(I)V

    :cond_11
    return-void
.end method

.method public final toTextStyle$foundation(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;
    .locals 68

    move-object/from16 v0, p0

    invoke-static {}, Landroidx/compose/foundation/style/ResolvedStyleKt;->access$getEmptyResolvedStyle$p()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v1

    iget-wide v2, v0, Landroidx/compose/foundation/style/ResolvedStyle;->contentColor:J

    const-wide/16 v4, 0x10

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    :goto_0
    move-wide v5, v2

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    iget-wide v2, v0, Landroidx/compose/foundation/style/ResolvedStyle;->fontSize:J

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontSize-XSAIIZE()J

    move-result-wide v7

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_2

    move-wide v7, v2

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->isFontWeightSpecified$foundation()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontWeight$foundation()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    goto :goto_3

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    :goto_3
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontStyle-_-LCdwA$foundation()I

    move-result v3

    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontStyle-_-LCdwA$foundation()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontStyle-_-LCdwA$foundation()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v3

    goto :goto_4

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v3

    :goto_4
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSynthesis-GVVA2EU$foundation()I

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSynthesis-GVVA2EU$foundation()I

    move-result v13

    invoke-static {v4, v13}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSynthesis-GVVA2EU$foundation()I

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v4

    goto :goto_5

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v4

    :goto_5
    iget-object v13, v0, Landroidx/compose/foundation/style/ResolvedStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v13, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v13

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v14

    iget-wide v9, v0, Landroidx/compose/foundation/style/ResolvedStyle;->letterSpacing:J

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v17

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v19

    cmp-long v19, v19, v11

    if-nez v19, :cond_7

    const/16 v19, 0x1

    goto :goto_6

    :cond_7
    const/16 v19, 0x0

    :goto_6
    if-nez v19, :cond_8

    :goto_7
    move-wide/from16 v17, v11

    goto :goto_8

    :cond_8
    move-wide/from16 v9, v17

    goto :goto_7

    :goto_8
    iget v11, v0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_9

    iget v11, v0, Landroidx/compose/foundation/style/ResolvedStyle;->baselineShift:F

    invoke-static {v11}, Landroidx/compose/ui/text/style/BaselineShift;->box-impl(F)Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v11

    :goto_9
    move-wide/from16 v18, v17

    goto :goto_a

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v11

    goto :goto_9

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object v17

    move-wide/from16 v19, v18

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v18

    move-wide/from16 v21, v19

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getBackground-0d7_KjU()J

    move-result-wide v19

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDecoration$foundation()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v12

    invoke-virtual {v1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDecoration$foundation()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v15

    invoke-static {v12, v15}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDecoration$foundation()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v12

    :goto_b
    move-wide/from16 v24, v21

    goto :goto_c

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v12

    goto :goto_b

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v22

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getDrawStyle()Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-result-object v23

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextAlign-e0LSkKk$foundation()I

    move-result v15

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextAlign-e0LSkKk$foundation()I

    move-result v1

    invoke-static {v15, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextAlign-e0LSkKk$foundation()I

    move-result v1

    goto :goto_d

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-e0LSkKk()I

    move-result v1

    :goto_d
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDirection-s_7X-co$foundation()I

    move-result v15

    move/from16 v27, v1

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDirection-s_7X-co$foundation()I

    move-result v1

    invoke-static {v15, v1}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextDirection-s_7X-co$foundation()I

    move-result v1

    :goto_e
    move/from16 v28, v1

    move-object v15, v2

    goto :goto_f

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getTextDirection-s_7X-co()I

    move-result v1

    goto :goto_e

    :goto_f
    iget-wide v1, v0, Landroidx/compose/foundation/style/ResolvedStyle;->lineHeight:J

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getLineHeight-XSAIIZE()J

    move-result-wide v29

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v31

    cmp-long v24, v31, v24

    if-nez v24, :cond_d

    const/16 v16, 0x1

    goto :goto_10

    :cond_d
    const/16 v16, 0x0

    :goto_10
    if-nez v16, :cond_e

    move-wide/from16 v24, v1

    goto :goto_11

    :cond_e
    move-wide/from16 v24, v29

    :goto_11
    iget-object v1, v0, Landroidx/compose/foundation/style/ResolvedStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getTextIndent()Landroidx/compose/ui/text/style/TextIndent;

    move-result-object v1

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformTextStyle;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getLineHeightStyle()Landroidx/compose/ui/text/style/LineHeightStyle;

    move-result-object v30

    iget v2, v0, Landroidx/compose/foundation/style/ResolvedStyle;->lineBreak:I

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getLineBreak-rAG3T2k()I

    move-result v16

    sget-object v21, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    move-object/from16 v31, v1

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/style/LineBreak$Companion;->getUnspecified-rAG3T2k()I

    move-result v1

    invoke-static {v2, v1}, Landroidx/compose/ui/text/style/LineBreak;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    move/from16 v2, v16

    :goto_12
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHyphens-vmbZdU8$foundation()I

    move-result v1

    move/from16 v16, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/foundation/style/ResolvedStyle;->getHyphens-vmbZdU8$foundation()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHyphens-vmbZdU8$foundation()I

    move-result v1

    :goto_13
    move/from16 v32, v1

    goto :goto_14

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getHyphens-vmbZdU8()I

    move-result v1

    goto :goto_13

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getTextMotion()Landroidx/compose/ui/text/style/TextMotion;

    move-result-object v33

    new-instance v34, Landroidx/compose/ui/text/TextStyle;

    move-wide/from16 v66, v24

    move/from16 v24, v27

    move-wide/from16 v26, v66

    move/from16 v25, v28

    move-object/from16 v28, v31

    move/from16 v31, v16

    move-object/from16 v16, v11

    move-object v11, v4

    move-object/from16 v4, v34

    const/16 v34, 0x0

    move-object/from16 v21, v12

    move-object v12, v13

    move-object v13, v14

    move-wide/from16 v66, v9

    move-object v10, v3

    move-object v9, v15

    move-wide/from16 v14, v66

    invoke-direct/range {v4 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Ljh2;)V

    iget-object v0, v0, Landroidx/compose/foundation/style/ResolvedStyle;->contentBrush:Landroidx/compose/ui/graphics/Brush;

    if-eqz v0, :cond_12

    const v64, 0x1fffffe

    const/16 v65, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const-wide/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v35, v0

    move-object/from16 v34, v4

    invoke-static/range {v34 .. v65}, Landroidx/compose/ui/text/TextStyle;->copy-Ns73l9s$default(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/graphics/Brush;FJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILjava/lang/Object;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    return-object v0

    :cond_12
    return-object v4
.end method

.method public top-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->top:F

    return-void
.end method

.method public transformOrigin-__ExYCQ(J)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput-wide p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->transformOrigin:J

    return-void
.end method

.method public translation(FF)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    iput p2, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    return-void
.end method

.method public translation-k-4lQ0M(J)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    return-void
.end method

.method public translationX(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationX:F

    return-void
.end method

.method public translationY(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->translationY:F

    return-void
.end method

.method public width(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    return-void
.end method

.method public width-0680j_4(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->_density:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->width:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->widthFraction:F

    return-void
.end method

.method public zIndex(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/ResolvedStyle;->zIndex:F

    return-void
.end method
