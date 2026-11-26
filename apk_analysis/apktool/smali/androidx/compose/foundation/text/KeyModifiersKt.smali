.class public final Landroidx/compose/foundation/text/KeyModifiersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I
    .locals 3

    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isAltPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isCtrlPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isMetaPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isShiftPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroidx/compose/foundation/text/KeyModifiers;->constructor-impl(ZZZZ)I

    move-result p0

    return p0
.end method
