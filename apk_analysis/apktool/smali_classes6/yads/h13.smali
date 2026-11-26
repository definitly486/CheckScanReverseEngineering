.class public final Lyads/h13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/pg4;

.field public final b:Lyads/m2;

.field public final c:Lyads/h80;

.field public final d:Lyads/q84;

.field public final e:Lyads/xk;

.field public final f:Lyads/wd4;


# direct methods
.method public constructor <init>(Lyads/pg4;Lyads/m2;Lyads/h80;Lyads/q84;)V
    .locals 3

    new-instance v0, Lyads/xk;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lyads/xk;-><init>(Ljava/util/Set;I)V

    new-instance v1, Lyads/wd4;

    invoke-direct {v1}, Lyads/wd4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/h13;->a:Lyads/pg4;

    iput-object p2, p0, Lyads/h13;->b:Lyads/m2;

    iput-object p3, p0, Lyads/h13;->c:Lyads/h80;

    iput-object p4, p0, Lyads/h13;->d:Lyads/q84;

    iput-object v0, p0, Lyads/h13;->e:Lyads/xk;

    iput-object v1, p0, Lyads/h13;->f:Lyads/wd4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    iget-object v0, p0, Lyads/h13;->e:Lyads/xk;

    iget-object v1, p0, Lyads/h13;->f:Lyads/wd4;

    invoke-virtual {v0, p1, v1}, Lyads/xk;->a(Landroid/view/View;Lyads/vd4;)Lyads/ih4;

    move-result-object p1

    iget-object v0, p0, Lyads/h13;->a:Lyads/pg4;

    invoke-interface {v0, p1}, Lyads/pg4;->a(Lyads/ih4;)Lyads/g70;

    move-result-object p1

    instance-of v0, p1, Lyads/f70;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lyads/h13;->a:Lyads/pg4;

    iget-object p0, p0, Lyads/h13;->c:Lyads/h80;

    invoke-interface {p1, p0}, Lyads/pg4;->a(Lyads/h80;)V

    return-void

    :cond_0
    instance-of v0, p1, Lyads/e70;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/h13;->b:Lyads/m2;

    invoke-virtual {v0}, Lyads/m2;->e()V

    iget-object p0, p0, Lyads/h13;->d:Lyads/q84;

    check-cast p1, Lyads/e70;

    iget-object p1, p1, Lyads/e70;->b:Ljava/lang/Throwable;

    const-string v0, "Failed to bind DivKit Fullscreen Native Ad"

    invoke-virtual {p0, v0, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lyads/h13;->a:Lyads/pg4;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lyads/pg4;->a(Lyads/h80;)V

    return-void
.end method
