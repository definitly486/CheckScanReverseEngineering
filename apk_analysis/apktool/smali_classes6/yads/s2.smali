.class public final Lyads/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n2;


# instance fields
.field public final a:Lcom/yandex/mobile/ads/common/AdActivity;

.field public final b:Lyads/f2;

.field public final c:Lyads/x1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/common/AdActivity;Lyads/f2;Lyads/bf5;)V
    .locals 1

    new-instance v0, Lyads/x1;

    check-cast p3, Lyads/do6;

    iget-object p3, p3, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p3, p3}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object p3

    invoke-direct {v0, p3}, Lyads/x1;-><init>(Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/s2;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    iput-object p2, p0, Lyads/s2;->b:Lyads/f2;

    iput-object v0, p0, Lyads/s2;->c:Lyads/x1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Lyads/s2;->c:Lyads/x1;

    iget-object v1, p0, Lyads/s2;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    iget-object p0, p0, Lyads/s2;->b:Lyads/f2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lyads/f2;->g:Lyads/en0;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v3, v2, Lyads/en0;->a:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v3, Lj59;->a:Lj59;

    iget-object v4, v0, Lyads/x1;->a:Lyads/y1;

    iget-object v5, v4, Lyads/y1;->b:Lyads/e40;

    iget-object v6, p0, Lyads/f2;->a:Lyads/d9;

    iget-object p0, p0, Lyads/f2;->b:Lyads/e4;

    invoke-virtual {v5, p0, v6}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object p0

    new-instance v5, Lyads/g75;

    sget-object v6, Lyads/e75;->c:Lyads/e75;

    iget-object v6, p0, Lyads/h75;->a:Ljava/util/Map;

    iget-object p0, p0, Lyads/h75;->b:Lyads/c;

    const-string v7, "activity_result_opened"

    invoke-static {v6}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-direct {v5, v7, v6, p0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, v4, Lyads/y1;->a:Lyads/q84;

    invoke-virtual {p0, v5}, Lyads/q84;->a(Lyads/g75;)V

    iget-object p0, v2, Lyads/en0;->b:Lyads/gn0;

    invoke-virtual {p0}, Lyads/gn0;->invoke()Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v3, Lk57$a;

    invoke-direct {v3, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v3}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v0, v0, Lyads/x1;->a:Lyads/y1;

    iget-object v0, v0, Lyads/y1;->a:Lyads/q84;

    const-string v1, "Failed to register ActivityResult"

    invoke-virtual {v0, v1, p0}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v2, Lyads/en0;->c:Lyads/hn0;

    invoke-virtual {v0, p0}, Lyads/hn0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final onAdClosed()V
    .locals 0

    return-void
.end method
