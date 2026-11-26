.class public final Lyads/mc;
.super Lyads/ls4;
.source "SourceFile"


# instance fields
.field public final k:Lyads/oc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lyads/bo0;

    invoke-direct {v0}, Lyads/bo0;-><init>()V

    new-instance v0, Lyads/fv3;

    invoke-direct {v0}, Lyads/fv3;-><init>()V

    new-instance v0, Lyads/uq4;

    invoke-direct {v0, p1}, Lyads/uq4;-><init>(Landroid/content/Context;)V

    new-instance v1, Lyads/oc;

    invoke-direct {v1, v0}, Lyads/oc;-><init>(Lyads/uq4;)V

    const/16 v0, 0x3e

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2, v0}, Lyads/ls4;-><init>(Landroid/content/Context;Lyads/xj6;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lyads/mc;->k:Lyads/oc;

    const-string p1, "Xiaomi"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lyads/ls4;->setHtmlWebViewErrorListener(Lyads/ga3;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lyads/mc;->k:Lyads/oc;

    invoke-virtual {p0, p2}, Lyads/oc;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final setAdtuneWebViewListener(Lyads/pc;)V
    .locals 0

    iget-object p0, p0, Lyads/mc;->k:Lyads/oc;

    iput-object p1, p0, Lyads/oc;->d:Lyads/pc;

    return-void
.end method
