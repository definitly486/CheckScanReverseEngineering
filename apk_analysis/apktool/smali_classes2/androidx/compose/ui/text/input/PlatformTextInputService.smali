.class public interface abstract Landroidx/compose/ui/text/input/PlatformTextInputService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lul2;
.end annotation


# virtual methods
.method public abstract hideSoftwareKeyboard()V
.end method

.method public notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    return-void
.end method

.method public abstract showSoftwareKeyboard()V
.end method

.method public startInput()V
    .locals 0

    return-void
.end method

.method public abstract startInput(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lnl3;Lnl3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/ImeOptions;",
            "Lnl3<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lj59;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopInput()V
.end method

.method public abstract updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V
.end method

.method public updateTextLayoutResult(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Lnl3;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/OffsetMapping;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/graphics/Matrix;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/ui/geometry/Rect;",
            ")V"
        }
    .end annotation

    return-void
.end method
