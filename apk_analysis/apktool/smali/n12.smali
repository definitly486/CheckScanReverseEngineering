.class public final synthetic Ln12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic c:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic d:Landroidx/compose/ui/text/input/OffsetMapping;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p2, p0, Ln12;->c:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p3, p0, Ln12;->d:Landroidx/compose/ui/text/input/OffsetMapping;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ln12;->d:Landroidx/compose/ui/text/input/OffsetMapping;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v1, p0, Ln12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object p0, p0, Ln12;->c:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
