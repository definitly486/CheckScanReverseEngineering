.class public final Lyads/hf4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/pg4;

.field public final b:Lyads/c60;

.field public final c:Lyads/h80;

.field public final d:Lyads/pz;

.field public final e:Lyads/q84;

.field public final f:Lyads/xd4;

.field public final g:Lyads/xk;


# direct methods
.method public constructor <init>(Lyads/pg4;Lyads/c60;Lyads/h80;Lyads/pz;Lyads/q84;)V
    .locals 4

    new-instance v0, Lyads/xd4;

    invoke-direct {v0}, Lyads/xd4;-><init>()V

    new-instance v1, Lyads/xk;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lyads/qg4;->a(Lyads/pg4;Lyads/tn1;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lyads/xk;-><init>(Ljava/util/Set;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hf4;->a:Lyads/pg4;

    iput-object p2, p0, Lyads/hf4;->b:Lyads/c60;

    iput-object p3, p0, Lyads/hf4;->c:Lyads/h80;

    iput-object p4, p0, Lyads/hf4;->d:Lyads/pz;

    iput-object p5, p0, Lyads/hf4;->e:Lyads/q84;

    iput-object v0, p0, Lyads/hf4;->f:Lyads/xd4;

    iput-object v1, p0, Lyads/hf4;->g:Lyads/xk;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    iget-object v0, p0, Lyads/hf4;->g:Lyads/xk;

    iget-object v1, p0, Lyads/hf4;->f:Lyads/xd4;

    invoke-virtual {v0, p1, v1}, Lyads/xk;->a(Landroid/view/View;Lyads/vd4;)Lyads/ih4;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lyads/hf4;->a:Lyads/pg4;

    iget-object v1, p0, Lyads/hf4;->d:Lyads/pz;

    invoke-interface {v0, p1, v1}, Lyads/pg4;->a(Lyads/ih4;Lyads/pz;)V

    iget-object p1, p0, Lyads/hf4;->a:Lyads/pg4;

    iget-object v0, p0, Lyads/hf4;->c:Lyads/h80;

    invoke-interface {p1, v0}, Lyads/pg4;->a(Lyads/h80;)V
    :try_end_0
    .catch Lyads/yf4; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lyads/hf4;->b:Lyads/c60;

    invoke-interface {v0}, Lyads/c60;->e()V

    iget-object p0, p0, Lyads/hf4;->e:Lyads/q84;

    const-string v0, "Failed to bind DivKit Native Ad"

    invoke-virtual {p0, v0, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lyads/hf4;->a:Lyads/pg4;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lyads/pg4;->a(Lyads/h80;)V

    return-void
.end method
