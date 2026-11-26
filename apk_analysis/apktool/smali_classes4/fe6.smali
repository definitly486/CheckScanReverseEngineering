.class public final synthetic Lfe6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhw5;


# instance fields
.field public final synthetic a:Lge6;


# direct methods
.method public synthetic constructor <init>(Lge6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfe6;->a:Lge6;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 1

    iget-object p0, p0, Lfe6;->a:Lge6;

    iget-object v0, p0, Lge6;->c:Lee6;

    :try_start_0
    invoke-static {p1}, Lti9;->a(Landroid/view/View;)Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    sget-object p2, Lji9;->e:Lcl4;

    invoke-static {p1}, Lji9$c;->a(Landroid/view/Window;)Lwl7;

    move-result-object p2

    iget-object p2, p2, Lwl7;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lji9$c;->a(Landroid/view/Window;)Lwl7;

    move-result-object p1

    iget-object p1, p1, Lwl7;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object p2, Lji9;->e:Lcl4;

    invoke-static {p1}, Lji9$c;->a(Landroid/view/Window;)Lwl7;

    move-result-object p1

    iget-object p1, p1, Lwl7;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    iget-object p0, p0, Lge6;->b:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string p2, "PostHogTouchActivityIntegration root view changed failed: "

    const/16 v0, 0x2e

    invoke-static {p2, p1, v0, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    return-void
.end method
