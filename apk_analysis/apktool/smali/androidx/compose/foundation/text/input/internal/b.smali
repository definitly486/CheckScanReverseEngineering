.class public final synthetic Landroidx/compose/foundation/text/input/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

.field public final synthetic b:Landroidx/compose/ui/text/input/ImeOptions;

.field public final synthetic c:Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

.field public final synthetic d:Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

.field public final synthetic e:Lnl3;

.field public final synthetic f:Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;

.field public final synthetic g:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

.field public final synthetic h:Lll3;

.field public final synthetic i:Landroidx/compose/ui/platform/ViewConfiguration;

.field public final synthetic j:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;Lnl3;Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Lll3;Landroidx/compose/ui/platform/ViewConfiguration;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/b;->a:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/b;->b:Landroidx/compose/ui/text/input/ImeOptions;

    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/b;->c:Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    iput-object p4, p0, Landroidx/compose/foundation/text/input/internal/b;->d:Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    iput-object p5, p0, Landroidx/compose/foundation/text/input/internal/b;->e:Lnl3;

    iput-object p6, p0, Landroidx/compose/foundation/text/input/internal/b;->f:Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;

    iput-object p7, p0, Landroidx/compose/foundation/text/input/internal/b;->g:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    iput-object p8, p0, Landroidx/compose/foundation/text/input/internal/b;->h:Lll3;

    iput-object p9, p0, Landroidx/compose/foundation/text/input/internal/b;->i:Landroidx/compose/ui/platform/ViewConfiguration;

    iput-object p10, p0, Landroidx/compose/foundation/text/input/internal/b;->j:Lnl3;

    return-void
.end method


# virtual methods
.method public final createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 11

    iget-object v8, p0, Landroidx/compose/foundation/text/input/internal/b;->i:Landroidx/compose/ui/platform/ViewConfiguration;

    iget-object v9, p0, Landroidx/compose/foundation/text/input/internal/b;->j:Lnl3;

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/b;->a:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/b;->b:Landroidx/compose/ui/text/input/ImeOptions;

    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/b;->c:Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/b;->d:Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/b;->e:Lnl3;

    iget-object v5, p0, Landroidx/compose/foundation/text/input/internal/b;->f:Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;

    iget-object v6, p0, Landroidx/compose/foundation/text/input/internal/b;->g:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    iget-object v7, p0, Landroidx/compose/foundation/text/input/internal/b;->h:Lll3;

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3;->g(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;Lnl3;Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Lll3;Landroidx/compose/ui/platform/ViewConfiguration;Lnl3;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method
