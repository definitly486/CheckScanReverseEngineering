.class public interface abstract Landroidx/compose/ui/node/RootForTest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;
    }
.end annotation


# direct methods
.method public static synthetic getTextInputService$annotations()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method


# virtual methods
.method public forceAccessibilityForTesting(Z)V
    .locals 0

    return-void
.end method

.method public abstract getDensity()Landroidx/compose/ui/unit/Density;
.end method

.method public abstract getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;
.end method

.method public abstract getTextInputService()Landroidx/compose/ui/text/input/TextInputService;
.end method

.method public measureAndLayoutForTest()V
    .locals 0

    return-void
.end method

.method public sendIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract sendKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
.end method

.method public setAccessibilityEventBatchIntervalMillis(J)V
    .locals 0

    return-void
.end method

.method public setUncaughtExceptionHandler(Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;)V
    .locals 0

    return-void
.end method
