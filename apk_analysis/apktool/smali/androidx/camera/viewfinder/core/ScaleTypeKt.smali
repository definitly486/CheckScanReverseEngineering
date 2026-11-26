.class public final Landroidx/camera/viewfinder/core/ScaleTypeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Center:Landroidx/camera/viewfinder/core/impl/Alignment;

.field private static final End:Landroidx/camera/viewfinder/core/impl/Alignment;

.field private static final Fill:Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;

.field private static final Fit:Landroidx/camera/viewfinder/core/ScaleTypeKt$Fit$1;

.field private static final Start:Landroidx/camera/viewfinder/core/impl/Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/viewfinder/core/ScaleTypeKt$Fit$1;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ScaleTypeKt$Fit$1;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->Fit:Landroidx/camera/viewfinder/core/ScaleTypeKt$Fit$1;

    new-instance v0, Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->Fill:Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;

    new-instance v0, Landroidx/camera/viewfinder/core/BiasAlignment;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroidx/camera/viewfinder/core/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->Start:Landroidx/camera/viewfinder/core/impl/Alignment;

    new-instance v0, Landroidx/camera/viewfinder/core/BiasAlignment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/camera/viewfinder/core/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->Center:Landroidx/camera/viewfinder/core/impl/Alignment;

    new-instance v0, Landroidx/camera/viewfinder/core/BiasAlignment;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroidx/camera/viewfinder/core/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->End:Landroidx/camera/viewfinder/core/impl/Alignment;

    return-void
.end method

.method public static final synthetic access$computeFillMaxDimension(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->computeFillMaxDimension(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeFillMinDimension(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->computeFillMinDimension(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCenter$p()Landroidx/camera/viewfinder/core/impl/Alignment;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->Center:Landroidx/camera/viewfinder/core/impl/Alignment;

    return-object v0
.end method

.method public static final synthetic access$getEnd$p()Landroidx/camera/viewfinder/core/impl/Alignment;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->End:Landroidx/camera/viewfinder/core/impl/Alignment;

    return-object v0
.end method

.method public static final synthetic access$getFill$p()Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->Fill:Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;

    return-object v0
.end method

.method public static final synthetic access$getFit$p()Landroidx/camera/viewfinder/core/ScaleTypeKt$Fit$1;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->Fit:Landroidx/camera/viewfinder/core/ScaleTypeKt$Fit$1;

    return-object v0
.end method

.method public static final synthetic access$getStart$p()Landroidx/camera/viewfinder/core/impl/Alignment;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/ScaleTypeKt;->Start:Landroidx/camera/viewfinder/core/impl/Alignment;

    return-object v0
.end method

.method private static final computeFillHeight(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .locals 0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static final computeFillMaxDimension(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .locals 1

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->computeFillWidth(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->computeFillHeight(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static final computeFillMinDimension(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .locals 1

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->computeFillWidth(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->computeFillHeight(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private static final computeFillWidth(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .locals 0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method
