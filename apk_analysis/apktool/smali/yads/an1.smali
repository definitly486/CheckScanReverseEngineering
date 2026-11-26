.class public final Lyads/an1;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/bn1;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lyads/bn1;)V
    .locals 0

    iput-object p2, p0, Lyads/an1;->a:Lyads/bn1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public final commitText(Ljava/lang/CharSequence;I)Z
    .locals 3

    const-string v0, "\n"

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/an1;->a:Lyads/bn1;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lyads/an1;->a:Lyads/bn1;

    iget-object v2, v1, Lyads/bn1;->l:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    invoke-interface {v2, v1, v0, p0}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/an1;->a:Lyads/bn1;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lyads/an1;->a:Lyads/bn1;

    iget-object v2, v1, Lyads/bn1;->l:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1, v0, p1}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
