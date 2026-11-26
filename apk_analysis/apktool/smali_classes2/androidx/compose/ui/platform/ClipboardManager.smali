.class public interface abstract Landroidx/compose/ui/platform/ClipboardManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lul2;
.end annotation


# virtual methods
.method public getClip()Landroidx/compose/ui/platform/ClipEntry;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNativeClipboard()Landroid/content/ClipboardManager;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This platform does not offer a native Clipboard"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getText()Landroidx/compose/ui/text/AnnotatedString;
.end method

.method public hasText()Z
    .locals 1

    invoke-interface {p0}, Landroidx/compose/ui/platform/ClipboardManager;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public setClip(Landroidx/compose/ui/platform/ClipEntry;)V
    .locals 0

    return-void
.end method

.method public abstract setText(Landroidx/compose/ui/text/AnnotatedString;)V
.end method
