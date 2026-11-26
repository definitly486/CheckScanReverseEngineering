.class public final synthetic Landroidx/compose/foundation/text/input/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

.field public final synthetic c:Lp07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;Lp07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/h;->b:Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/h;->c:Lp07;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/h;->b:Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/h;->c:Lp07;

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode$startCursorJob$1;->g(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;Lp07;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
