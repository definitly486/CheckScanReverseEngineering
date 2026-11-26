.class public interface abstract Landroidx/compose/ui/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/PathMeasure$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic getSegment$default(Landroidx/compose/ui/graphics/PathMeasure;FFLandroidx/compose/ui/graphics/Path;ZILjava/lang/Object;)Z
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: getSegment"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract getLength()F
.end method

.method public abstract getPosition-tuRUvjQ(F)J
.end method

.method public abstract getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z
.end method

.method public abstract getTangent-tuRUvjQ(F)J
.end method

.method public abstract setPath(Landroidx/compose/ui/graphics/Path;Z)V
.end method
