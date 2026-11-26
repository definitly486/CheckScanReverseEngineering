.class public final Landroidx/compose/foundation/text/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/TextToolbar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/BasicSecureTextFieldKt;->DisableCutCopy(Lbm3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/ui/platform/TextToolbar;

.field final synthetic $currentToolbar:Landroidx/compose/ui/platform/TextToolbar;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/TextToolbar;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;->$currentToolbar:Landroidx/compose/ui/platform/TextToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;->$$delegate_0:Landroidx/compose/ui/platform/TextToolbar;

    return-void
.end method


# virtual methods
.method public getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;->$$delegate_0:Landroidx/compose/ui/platform/TextToolbar;

    invoke-interface {p0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;->$$delegate_0:Landroidx/compose/ui/platform/TextToolbar;

    invoke-interface {p0}, Landroidx/compose/ui/platform/TextToolbar;->hide()V

    return-void
.end method

.method public showMenu(Landroidx/compose/ui/geometry/Rect;Lll3;Lll3;Lll3;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Landroidx/compose/foundation/text/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;->$$delegate_0:Landroidx/compose/ui/platform/TextToolbar;

    invoke-interface/range {p0 .. p5}, Landroidx/compose/ui/platform/TextToolbar;->showMenu(Landroidx/compose/ui/geometry/Rect;Lll3;Lll3;Lll3;Lll3;)V

    return-void
.end method

.method public showMenu(Landroidx/compose/ui/geometry/Rect;Lll3;Lll3;Lll3;Lll3;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;->$currentToolbar:Landroidx/compose/ui/platform/TextToolbar;

    const/4 p2, 0x0

    const/4 p4, 0x0

    invoke-interface/range {p0 .. p6}, Landroidx/compose/ui/platform/TextToolbar;->showMenu(Landroidx/compose/ui/geometry/Rect;Lll3;Lll3;Lll3;Lll3;Lll3;)V

    return-void
.end method
