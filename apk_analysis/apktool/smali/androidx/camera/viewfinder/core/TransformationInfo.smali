.class public final Landroidx/camera/viewfinder/core/TransformationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/viewfinder/core/TransformationInfo$Companion;
    }
.end annotation


# static fields
.field public static final CROP_NONE:F = NaNf

.field public static final Companion:Landroidx/camera/viewfinder/core/TransformationInfo$Companion;

.field public static final DEFAULT:Landroidx/camera/viewfinder/core/TransformationInfo;


# instance fields
.field private final cropRectBottom:F

.field private final cropRectLeft:F

.field private final cropRectRight:F

.field private final cropRectTop:F

.field private final isSourceMirroredHorizontally:Z

.field private final isSourceMirroredVertically:Z

.field private final sourceRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroidx/camera/viewfinder/core/TransformationInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/viewfinder/core/TransformationInfo$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/viewfinder/core/TransformationInfo;->Companion:Landroidx/camera/viewfinder/core/TransformationInfo$Companion;

    new-instance v2, Landroidx/camera/viewfinder/core/TransformationInfo;

    const/16 v10, 0x7f

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Landroidx/camera/viewfinder/core/TransformationInfo;-><init>(IZZFFFFILjh2;)V

    sput-object v2, Landroidx/camera/viewfinder/core/TransformationInfo;->DEFAULT:Landroidx/camera/viewfinder/core/TransformationInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 56
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroidx/camera/viewfinder/core/TransformationInfo;-><init>(IZZFFFFILjh2;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 10

    .line 42
    const/16 v8, 0x7e

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v9}, Landroidx/camera/viewfinder/core/TransformationInfo;-><init>(IZZFFFFILjh2;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 10

    .line 43
    const/16 v8, 0x7c

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v9}, Landroidx/camera/viewfinder/core/TransformationInfo;-><init>(IZZFFFFILjh2;)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 10

    .line 44
    const/16 v8, 0x78

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v9}, Landroidx/camera/viewfinder/core/TransformationInfo;-><init>(IZZFFFFILjh2;)V

    return-void
.end method

.method public constructor <init>(IZZF)V
    .locals 10

    .line 45
    const/16 v8, 0x70

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v9}, Landroidx/camera/viewfinder/core/TransformationInfo;-><init>(IZZFFFFILjh2;)V

    return-void
.end method

.method public constructor <init>(IZZFF)V
    .locals 10

    .line 46
    const/16 v8, 0x60

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Landroidx/camera/viewfinder/core/TransformationInfo;-><init>(IZZFFFFILjh2;)V

    return-void
.end method

.method public constructor <init>(IZZFFF)V
    .locals 10

    .line 47
    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Landroidx/camera/viewfinder/core/TransformationInfo;-><init>(IZZFFFFILjh2;)V

    return-void
.end method

.method public constructor <init>(IZZFFFF)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->sourceRotation:I

    .line 50
    iput-boolean p2, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredHorizontally:Z

    .line 51
    iput-boolean p3, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredVertically:Z

    .line 52
    iput p4, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectLeft:F

    .line 53
    iput p5, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectTop:F

    .line 54
    iput p6, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectRight:F

    .line 55
    iput p7, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectBottom:F

    return-void
.end method

.method public synthetic constructor <init>(IZZFFFFILjh2;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    const/high16 v0, 0x7fc00000    # Float.NaN

    if-eqz p9, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move p7, v0

    :cond_6
    invoke-direct/range {p0 .. p7}, Landroidx/camera/viewfinder/core/TransformationInfo;-><init>(IZZFFFF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/viewfinder/core/TransformationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->sourceRotation:I

    check-cast p1, Landroidx/camera/viewfinder/core/TransformationInfo;

    iget v3, p1, Landroidx/camera/viewfinder/core/TransformationInfo;->sourceRotation:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredHorizontally:Z

    iget-boolean v3, p1, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredHorizontally:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredVertically:Z

    iget-boolean v3, p1, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredVertically:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectLeft:F

    iget v3, p1, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectLeft:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_5

    iget v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectTop:F

    iget v3, p1, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectTop:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_5

    iget v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectRight:F

    iget v3, p1, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectRight:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_5

    iget p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectBottom:F

    iget p1, p1, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectBottom:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public final getCropRectBottom()F
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectBottom:F

    return p0
.end method

.method public final getCropRectLeft()F
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectLeft:F

    return p0
.end method

.method public final getCropRectRight()F
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectRight:F

    return p0
.end method

.method public final getCropRectTop()F
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectTop:F

    return p0
.end method

.method public final getSourceRotation()I
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->sourceRotation:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->sourceRotation:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredHorizontally:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredVertically:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget v2, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectLeft:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectTop:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectRight:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectBottom:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isSourceMirroredHorizontally()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredHorizontally:Z

    return p0
.end method

.method public final isSourceMirroredVertically()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredVertically:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransformationInfo(sourceRotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->sourceRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSourceMirroredHorizontally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredHorizontally:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSourceMirroredVertically="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->isSourceMirroredVertically:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cropRectLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cropRectTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cropRectRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectRight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cropRectBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/viewfinder/core/TransformationInfo;->cropRectBottom:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
