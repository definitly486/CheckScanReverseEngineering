.class public final Landroidx/camera/view/transform/OutputTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mMatrix:Landroid/graphics/Matrix;

.field final mViewPortSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/graphics/Matrix;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/transform/OutputTransform;->mMatrix:Landroid/graphics/Matrix;

    iput-object p2, p0, Landroidx/camera/view/transform/OutputTransform;->mViewPortSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Landroidx/camera/view/transform/OutputTransform;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getViewPortSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/view/transform/OutputTransform;->mViewPortSize:Landroid/util/Size;

    return-object p0
.end method
