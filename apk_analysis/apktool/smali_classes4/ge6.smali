.class public final Lge6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac6;


# static fields
.field public static volatile e:Z


# instance fields
.field public final b:Lta6;

.field public final c:Lee6;

.field public final d:Lfe6;


# direct methods
.method public constructor <init>(Lta6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lge6;->b:Lta6;

    new-instance p1, Lee6;

    invoke-direct {p1, p0}, Lee6;-><init>(Lge6;)V

    iput-object p1, p0, Lge6;->c:Lee6;

    new-instance p1, Lfe6;

    invoke-direct {p1, p0}, Lfe6;-><init>(Lge6;)V

    iput-object p1, p0, Lge6;->d:Lfe6;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b(Lbc6;)V
    .locals 3

    sget-boolean p1, Lge6;->e:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    sput-boolean p1, Lge6;->e:Z

    :try_start_0
    sget-object p1, Lw62;->a:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly77;

    iget-object p1, p1, Ly77;->b:Ly77$a;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lti9;->a(Landroid/view/View;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lji9;->e:Lcl4;

    invoke-static {v0}, Lji9$c;->a(Landroid/view/Window;)Lwl7;

    move-result-object v1

    iget-object v1, v1, Lwl7;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lge6;->c:Lee6;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lji9$c;->a(Landroid/view/Window;)Lwl7;

    move-result-object v0

    iget-object v0, v0, Lwl7;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lge6;->c:Lee6;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object p1, Lw62;->a:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly77;

    iget-object p1, p1, Ly77;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lge6;->d:Lfe6;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    iget-object p0, p0, Lge6;->b:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v0, "PostHogTouchActivityIntegration install failed: "

    const/16 v1, 0x2e

    invoke-static {v0, p1, v1, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :cond_2
    return-void
.end method
