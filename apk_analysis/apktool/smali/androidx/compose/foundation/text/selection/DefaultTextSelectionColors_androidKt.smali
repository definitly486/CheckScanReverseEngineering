.class public final Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DefaultSelectionColor:J

.field private static final DefaultTextSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide v0, 0xff4286f4L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    sput-wide v2, Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;->DefaultSelectionColor:J

    new-instance v0, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v5

    const/4 v7, 0x0

    move-wide v3, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJLjh2;)V

    sput-object v2, Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;->DefaultTextSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    return-void
.end method

.method public static final getDefaultTextSelectionColors()Landroidx/compose/foundation/text/selection/TextSelectionColors;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;->DefaultTextSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    return-object v0
.end method

.method public static synthetic getDefaultTextSelectionColors$annotations()V
    .locals 0

    return-void
.end method
