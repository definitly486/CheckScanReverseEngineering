.class public final Landroidx/compose/foundation/text/TextFieldCursor_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DefaultCursorThickness:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/text/TextFieldCursor_androidKt;->DefaultCursorThickness:F

    return-void
.end method

.method public static final getDefaultCursorThickness()F
    .locals 1

    sget v0, Landroidx/compose/foundation/text/TextFieldCursor_androidKt;->DefaultCursorThickness:F

    return v0
.end method
