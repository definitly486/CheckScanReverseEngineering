.class public final Lyads/uc;
.super Lyads/ls4;
.source "SourceFile"


# instance fields
.field public final k:Lyads/yc;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lyads/yb;)V
    .locals 2

    new-instance v0, Lyads/bo0;

    invoke-direct {v0}, Lyads/bo0;-><init>()V

    new-instance v0, Lyads/fv3;

    invoke-direct {v0}, Lyads/fv3;-><init>()V

    new-instance v0, Lyads/lc;

    invoke-direct {v0, p1}, Lyads/lc;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lyads/yc;

    invoke-direct {v1, v0, p2}, Lyads/yc;-><init>(Lyads/lc;Lyads/yb;)V

    const/16 p2, 0x3e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lyads/ls4;-><init>(Landroid/content/Context;Lyads/xj6;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lyads/uc;->k:Lyads/yc;

    const-string p1, "Xiaomi"

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lyads/ls4;->setHtmlWebViewErrorListener(Lyads/ga3;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lyads/uc;->k:Lyads/yc;

    invoke-virtual {p0, p2}, Lyads/yc;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final setAdtuneWebViewListener(Lyads/ad;)V
    .locals 0

    iget-object p0, p0, Lyads/uc;->k:Lyads/yc;

    iput-object p1, p0, Lyads/yc;->e:Lyads/ad;

    return-void
.end method
