.class public final Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/viewfinder/core/impl/ContentScale;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/viewfinder/core/ScaleTypeKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeScaleFactor-ho9e9VQ(Landroid/util/SizeF;Landroid/util/SizeF;)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$computeFillMaxDimension(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result p0

    invoke-static {p0, p0}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->ScaleFactorF(FF)J

    move-result-wide p0

    return-wide p0
.end method
