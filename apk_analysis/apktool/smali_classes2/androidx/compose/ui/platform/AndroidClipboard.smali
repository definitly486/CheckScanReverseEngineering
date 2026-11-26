.class public final Landroidx/compose/ui/platform/AndroidClipboard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/Clipboard;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final androidClipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/AndroidClipboardManager;

    invoke-direct {v0, p1}, Landroidx/compose/ui/platform/AndroidClipboardManager;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidClipboard;-><init>(Landroidx/compose/ui/platform/AndroidClipboardManager;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidClipboardManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidClipboard;->androidClipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    return-void
.end method


# virtual methods
.method public getClipEntry(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/compose/ui/platform/ClipEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidClipboard;->androidClipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClip()Landroidx/compose/ui/platform/ClipEntry;

    move-result-object p0

    return-object p0
.end method

.method public getNativeClipboard()Landroid/content/ClipboardManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidClipboard;->androidClipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getNativeClipboard()Landroid/content/ClipboardManager;

    move-result-object p0

    return-object p0
.end method

.method public setClipEntry(Landroidx/compose/ui/platform/ClipEntry;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/ClipEntry;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidClipboard;->androidClipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidClipboardManager;->setClip(Landroidx/compose/ui/platform/ClipEntry;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
