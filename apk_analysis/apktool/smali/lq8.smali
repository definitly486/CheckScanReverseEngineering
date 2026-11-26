.class public final synthetic Llq8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic c:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic d:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic e:Landroidx/compose/ui/text/input/OffsetMapping;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llq8;->b:Landroidx/compose/ui/graphics/Brush;

    iput-object p2, p0, Llq8;->c:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p3, p0, Llq8;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p4, p0, Llq8;->e:Landroidx/compose/ui/text/input/OffsetMapping;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Llq8;->b:Landroidx/compose/ui/graphics/Brush;

    iget-object v1, p0, Llq8;->c:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v2, p0, Llq8;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v3, p0, Llq8;->e:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextFieldCursorKt;->b(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
