.class final Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;
.super Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;
.source "SourceFile"


# instance fields
.field private block:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;->block:Lnl3;

    return-void
.end method


# virtual methods
.method public calculateInsets(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;->block:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final update(Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;->block:Lnl3;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;->block:Lnl3;

    :cond_0
    return-void
.end method
