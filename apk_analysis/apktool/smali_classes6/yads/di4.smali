.class public final Lyads/di4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/h80;


# instance fields
.field public final a:Lyads/yn;


# direct methods
.method public constructor <init>(Lyads/yn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/di4;->a:Lyads/yn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object p0, p0, Lyads/di4;->a:Lyads/yn;

    iget-object v0, p0, Lyads/yn;->K:Lyads/qo1;

    iget-object v1, p0, Lyads/yn;->E:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "rootDivkitView"

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lyads/vq0;

    if-eqz v1, :cond_0

    check-cast v0, Lyads/vq0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lyads/vq0;->z:Lyads/ub5;

    invoke-static {v1}, Lyads/vq0;->a(Lyads/ub5;)Lyads/fs2;

    move-result-object v1

    const-string v2, "is_banner_closed"

    const-string v3, "closed"

    invoke-static {v0, v2, v3, v1}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Lyads/k76;

    :cond_1
    iget-object p0, p0, Lyads/yn;->F:Lyads/wn;

    invoke-virtual {p0}, Lyads/wn;->a()V

    return-void
.end method

.method public final onAdClicked()V
    .locals 0

    return-void
.end method

.method public final onImpression(Lyads/j5;)V
    .locals 0

    iget-object p0, p0, Lyads/di4;->a:Lyads/yn;

    iget-object p0, p0, Lyads/yn;->F:Lyads/wn;

    invoke-virtual {p0, p1}, Lyads/wn;->a(Lyads/j5;)V

    return-void
.end method

.method public final onLeftApplication()V
    .locals 0

    iget-object p0, p0, Lyads/di4;->a:Lyads/yn;

    iget-object p0, p0, Lyads/yn;->F:Lyads/wn;

    invoke-virtual {p0}, Lyads/wn;->c()V

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 0

    iget-object p0, p0, Lyads/di4;->a:Lyads/yn;

    iget-object p0, p0, Lyads/yn;->F:Lyads/wn;

    invoke-virtual {p0}, Lyads/wn;->d()V

    return-void
.end method
