.class public final Landroidx/compose/ui/platform/AndroidClipboardManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/ClipboardManager;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private _clipboardManager:Landroid/content/ClipboardManager;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidClipboardManager;->context:Landroid/content/Context;

    return-void
.end method

.method private final getClipboardManager()Landroid/content/ClipboardManager;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidClipboardManager;->_clipboardManager:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidClipboardManager;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidClipboardManager;->_clipboardManager:Landroid/content/ClipboardManager;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getClip()Landroidx/compose/ui/platform/ClipEntry;
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/compose/ui/platform/ClipEntry;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/ClipEntry;-><init>(Landroid/content/ClipData;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNativeClipboard()Landroid/content/ClipboardManager;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    return-object p0
.end method

.method public getText()Landroidx/compose/ui/text/AnnotatedString;
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidClipboardManager_androidKt;->convertToAnnotatedString(Ljava/lang/CharSequence;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public hasText()Z
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "text/*"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setClip(Landroidx/compose/ui/platform/ClipEntry;)V
    .locals 1

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/platform/Api28ClipboardManagerClipClear;->clearPrimaryClip(Landroid/content/ClipboardManager;)V

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void

    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/ui/platform/ClipEntry;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public setText(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    const-string v0, "plain text"

    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidClipboardManager_androidKt;->convertToCharSequence(Landroidx/compose/ui/text/AnnotatedString;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
