.class public final Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private _hasClip:Z

.field private _hasText:Z

.field private final clipboard:Landroidx/compose/ui/platform/Clipboard;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/Clipboard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    return-void
.end method


# virtual methods
.method public final getHasClip()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->_hasClip:Z

    return p0
.end method

.method public final getHasText()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->_hasText:Z

    return p0
.end method

.method public final update(Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    invoke-interface {p1}, Landroidx/compose/ui/platform/Clipboard;->getNativeClipboard()Landroid/content/ClipboardManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->_hasClip:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    invoke-interface {p1}, Landroidx/compose/ui/platform/Clipboard;->getNativeClipboard()Landroid/content/ClipboardManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "text/*"

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->_hasText:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
