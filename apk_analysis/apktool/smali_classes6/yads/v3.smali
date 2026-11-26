.class public final Lyads/v3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lze4;


# instance fields
.field public final a:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/v3;

    const-string v1, "context"

    const-string v2, "getContext()Landroid/content/Context;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/v3;->b:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Lyads/e55;

    invoke-direct {v0, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/v3;->a:Lyads/e55;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object p0, p0, Lyads/v3;->a:Lyads/e55;

    sget-object v0, Lyads/v3;->b:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    instance-of v0, p0, Lyads/x3;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/x3;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    check-cast p0, Lyads/a2;

    iget-object v0, p0, Lyads/a2;->k:Landroid/widget/ProgressBar;

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x2710

    if-le v0, p2, :cond_1

    invoke-virtual {p0, v1}, Lyads/a2;->a(I)V

    return-void

    :cond_1
    iget-object p2, p0, Lyads/a2;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lyads/a2;->a(I)V

    :cond_2
    return-void
.end method
