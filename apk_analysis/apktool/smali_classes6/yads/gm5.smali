.class public final Lyads/gm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;
.implements Lyads/j2;


# instance fields
.field public final a:Lyads/u6;

.field public final b:Lyads/i2;

.field public final c:Lyads/ve4;

.field public final d:Lyads/wl5;

.field public e:Lyads/fm0;


# direct methods
.method public constructor <init>(Lyads/u6;Lyads/i2;Lyads/ve4;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lyads/u6;->b:Lyads/v6;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lyads/v6;->b:Lyads/hm5;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    sget-object v3, Lyads/xl5;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_1
    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lme0;->e()V

    throw v0

    :cond_3
    new-instance v0, Lyads/wh6;

    invoke-direct {v0}, Lyads/wh6;-><init>()V

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v0, Lyads/dm0;

    invoke-direct {v0}, Lyads/dm0;-><init>()V

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gm5;->a:Lyads/u6;

    iput-object p2, p0, Lyads/gm5;->b:Lyads/i2;

    iput-object p3, p0, Lyads/gm5;->c:Lyads/ve4;

    iput-object v0, p0, Lyads/gm5;->d:Lyads/wl5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 106
    iget-object p0, p0, Lyads/gm5;->e:Lyads/fm0;

    if-eqz p0, :cond_0

    .line 107
    iget-object p0, p0, Lyads/fm0;->c:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->c()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 8

    iget-object v0, p0, Lyads/gm5;->c:Lyads/ve4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "skip_button"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lyads/gm5;->b:Lyads/i2;

    iget-object v1, v1, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lyads/fm0;

    iget-object v2, p0, Lyads/gm5;->d:Lyads/wl5;

    iget-object v3, p0, Lyads/gm5;->a:Lyads/u6;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lyads/u6;->b:Lyads/v6;

    if-eqz v3, :cond_0

    iget-wide v3, v3, Lyads/v6;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    invoke-direct {v1, p1, v2, v6, v7}, Lyads/fm0;-><init>(Landroid/view/View;Lyads/wl5;J)V

    iput-object v1, p0, Lyads/gm5;->e:Lyads/fm0;

    iget-object p0, v1, Lyads/fm0;->d:Lyads/e55;

    sget-object v2, Lyads/fm0;->e:[Lze4;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_3

    new-instance v2, Lyads/em0;

    iget-object v3, v1, Lyads/fm0;->a:Lyads/wl5;

    invoke-direct {v2, p0, v3}, Lyads/em0;-><init>(Landroid/view/View;Lyads/wl5;)V

    iget-wide v6, v1, Lyads/fm0;->b:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    iget-object v1, v1, Lyads/fm0;->a:Lyads/wl5;

    invoke-interface {v1, p0}, Lyads/wl5;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object p0, v1, Lyads/fm0;->c:Lyads/tt4;

    invoke-virtual {p0, v6, v7, v2}, Lyads/tt4;->a(JLyads/ut4;)V

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lyads/gm5;->e:Lyads/fm0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/fm0;->c:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lyads/gm5;->b:Lyads/i2;

    iget-object v0, v0, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lyads/gm5;->e:Lyads/fm0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/fm0;->c:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->a()V

    :cond_0
    return-void
.end method
