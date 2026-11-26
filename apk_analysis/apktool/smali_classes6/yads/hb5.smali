.class public final Lyads/hb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/i2;

.field public final b:Lyads/ux5;

.field public final c:Lyads/kk4;

.field public final d:Lyads/gb5;


# direct methods
.method public constructor <init>(Lyads/i2;Lyads/ux5;Lyads/sj4;Lyads/bx5;)V
    .locals 1

    new-instance v0, Lyads/kk4;

    invoke-direct {v0, p2, p3, p4}, Lyads/kk4;-><init>(Lyads/ux5;Lyads/sj4;Lyads/bx5;)V

    new-instance p3, Lyads/gb5;

    invoke-direct {p3, v0}, Lyads/gb5;-><init>(Lyads/kk4;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hb5;->a:Lyads/i2;

    iput-object p2, p0, Lyads/hb5;->b:Lyads/ux5;

    iput-object v0, p0, Lyads/hb5;->c:Lyads/kk4;

    iput-object p3, p0, Lyads/hb5;->d:Lyads/gb5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lyads/hb5;->a:Lyads/i2;

    iget-object v1, p0, Lyads/hb5;->d:Lyads/gb5;

    iget-object v0, v0, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lyads/hb5;->b:Lyads/ux5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "timer_container"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lyads/hb5;->c:Lyads/kk4;

    iput-object p1, p0, Lyads/kk4;->c:Landroid/view/View;

    iget-object p0, p0, Lyads/kk4;->b:Lyads/n03;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/n03;->start()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lyads/hb5;->a:Lyads/i2;

    iget-object v1, p0, Lyads/hb5;->d:Lyads/gb5;

    iget-object v0, v0, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lyads/hb5;->c:Lyads/kk4;

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/kk4;->c:Landroid/view/View;

    iget-object p0, p0, Lyads/kk4;->b:Lyads/n03;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/n03;->invalidate()V

    :cond_0
    return-void
.end method
