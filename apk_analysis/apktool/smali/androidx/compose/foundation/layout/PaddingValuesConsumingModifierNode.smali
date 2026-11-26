.class final Landroidx/compose/foundation/layout/PaddingValuesConsumingModifierNode;
.super Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;
.source "SourceFile"


# instance fields
.field private paddingValues:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/PaddingValuesConsumingModifierNode;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method


# virtual methods
.method public calculateInsets(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/PaddingValuesConsumingModifierNode;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsKt;->asInsets(Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/WindowInsetsKt;->add(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/foundation/layout/PaddingValues;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesConsumingModifierNode;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/layout/PaddingValuesConsumingModifierNode;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->insetsInvalidated()V

    :cond_0
    return-void
.end method
