.class public final Lyads/um5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/ni4;

.field public final b:Lyads/c60;

.field public final c:Lyads/h80;

.field public final d:Lyads/pz;

.field public final e:Lyads/q84;

.field public final f:Lyads/xd4;

.field public final g:Lyads/xk;


# direct methods
.method public constructor <init>(Lyads/ni4;Lyads/c60;Lyads/h80;Lyads/pz;Lyads/q84;)V
    .locals 4

    new-instance v0, Lyads/xd4;

    invoke-direct {v0}, Lyads/xd4;-><init>()V

    new-instance v1, Lyads/xk;

    sget-object v2, Lyads/tn1;->b:Lyads/tn1;

    invoke-static {p1, v2}, Lyads/qg4;->a(Lyads/pg4;Lyads/tn1;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lyads/xk;-><init>(Ljava/util/Set;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/um5;->a:Lyads/ni4;

    iput-object p2, p0, Lyads/um5;->b:Lyads/c60;

    iput-object p3, p0, Lyads/um5;->c:Lyads/h80;

    iput-object p4, p0, Lyads/um5;->d:Lyads/pz;

    iput-object p5, p0, Lyads/um5;->e:Lyads/q84;

    iput-object v0, p0, Lyads/um5;->f:Lyads/xd4;

    iput-object v1, p0, Lyads/um5;->g:Lyads/xk;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 4

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    :try_start_0
    iget-object v0, p0, Lyads/um5;->g:Lyads/xk;

    iget-object v1, p0, Lyads/um5;->f:Lyads/xd4;

    invoke-virtual {v0, p1, v1}, Lyads/xk;->a(Landroid/view/View;Lyads/vd4;)Lyads/ih4;

    move-result-object p1

    iget-object v0, p0, Lyads/um5;->a:Lyads/ni4;

    iget-object v1, p0, Lyads/um5;->d:Lyads/pz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lyads/ih4;->c:Landroid/view/View;

    new-instance v3, Lyads/rh4;

    invoke-direct {v3, p1}, Lyads/rh4;-><init>(Lyads/ih4;)V

    iget-object p1, v0, Lyads/ni4;->R:Lyads/b05;

    invoke-virtual {v0, v2, p1, v3, v1}, Lyads/ij4;->a(Landroid/view/View;Lyads/b05;Lyads/rh4;Lyads/pz;)V

    new-instance p1, Lyads/jt5;

    iget-object v0, p0, Lyads/um5;->c:Lyads/h80;

    invoke-direct {p1, v0}, Lyads/jt5;-><init>(Lyads/h80;)V

    iget-object v0, p0, Lyads/um5;->a:Lyads/ni4;

    invoke-virtual {v0}, Lyads/ni4;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/pg4;

    invoke-interface {v1, p1}, Lyads/pg4;->a(Lyads/h80;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lyads/um5;->a:Lyads/ni4;

    iget-object v0, p0, Lyads/um5;->c:Lyads/h80;

    invoke-virtual {p1, v0}, Lyads/ni4;->b(Lyads/h80;)V
    :try_end_0
    .catch Lyads/yf4; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v0, p0, Lyads/um5;->b:Lyads/c60;

    invoke-interface {v0}, Lyads/c60;->e()V

    iget-object p0, p0, Lyads/um5;->e:Lyads/q84;

    const-string v0, "Failed to bind DivKit Slider Ad"

    invoke-virtual {p0, v0, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lyads/um5;->a:Lyads/ni4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyads/ni4;->b(Lyads/h80;)V

    iget-object p0, p0, Lyads/um5;->a:Lyads/ni4;

    invoke-virtual {p0}, Lyads/ni4;->k()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/pg4;

    invoke-interface {v0, v1}, Lyads/pg4;->a(Lyads/h80;)V

    goto :goto_0

    :cond_0
    return-void
.end method
