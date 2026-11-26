.class public final Lyads/un1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/db1;

.field public final b:Lyads/kn1;

.field public final c:Lyads/c81;

.field public final d:Lyads/q84;

.field public final e:Ljava/lang/String;

.field public final f:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Lyads/db1;Lyads/kn1;Lyads/c81;Lyads/q84;Landroidx/lifecycle/LifecycleOwner;I)V
    .locals 0

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const-string p6, ""

    goto :goto_0

    :cond_0
    const-string p6, "rootDivkitView"

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/un1;->a:Lyads/db1;

    iput-object p2, p0, Lyads/un1;->b:Lyads/kn1;

    iput-object p3, p0, Lyads/un1;->c:Lyads/c81;

    iput-object p4, p0, Lyads/un1;->d:Lyads/q84;

    iput-object p6, p0, Lyads/un1;->e:Ljava/lang/String;

    iput-object p5, p0, Lyads/un1;->f:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 4

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lyads/un1;->c:Lyads/c81;

    iget-object v2, p0, Lyads/un1;->f:Landroidx/lifecycle/LifecycleOwner;

    iget-object v3, p0, Lyads/un1;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lyads/rh2;->a(Landroid/content/Context;Lyads/c81;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lyads/vq0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lyads/qb1;

    invoke-direct {v1, p1}, Lyads/qb1;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lyads/un1;->a:Lyads/db1;

    invoke-virtual {v0, p1, v1}, Lyads/vq0;->a(Lyads/db1;Lyads/qb1;)V

    invoke-static {v0}, Lyads/xq0;->a(Lyads/vq0;)Lyads/ak5;

    move-result-object p1

    iget-object v0, p0, Lyads/un1;->b:Lyads/kn1;

    invoke-virtual {p1, v0}, Lyads/ak5;->a(Lyads/kn1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lyads/un1;->d:Lyads/q84;

    const-string v0, "Failed to bind DivKit"

    invoke-virtual {p0, v0, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
