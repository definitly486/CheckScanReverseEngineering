.class public interface abstract Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Horizontal;
.implements Landroidx/compose/foundation/layout/Arrangement$Vertical;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/Arrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HorizontalOrVertical"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$getSpacing-D9Ej5fM$jd(Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;)F
    .locals 0

    invoke-super {p0}, Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;->getSpacing-D9Ej5fM()F

    move-result p0

    return p0
.end method


# virtual methods
.method public getSpacing-D9Ej5fM()F
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method
