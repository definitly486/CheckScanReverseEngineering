.class public final Lyads/a21;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vq0;

.field public final b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lyads/vq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/a21;->a:Lyads/vq0;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/a21;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;)Lyads/w11;
    .locals 5

    instance-of v0, p1, Lyads/wh1;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lyads/wh1;

    invoke-interface {v0}, Lyads/wh1;->a()Lyads/br0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/p41;->t()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyads/w11;

    invoke-virtual {v4}, Lyads/w11;->a()Lyads/x11;

    move-result-object v4

    invoke-interface {v4}, Lyads/x11;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/w11;

    goto :goto_3

    :cond_5
    :goto_2
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/view/View;

    goto :goto_4

    :cond_6
    move-object p1, v1

    :goto_4
    if-eqz p1, :cond_b

    invoke-virtual {p0, p1, p2}, Lyads/a21;->a(Landroid/view/View;Ljava/lang/String;)Lyads/w11;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0

    :cond_8
    instance-of v0, p1, Lyads/vq0;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lyads/a21;->a:Lyads/vq0;

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to find animator with id \'"

    const-string v2, "\'"

    invoke-static {v0, p2, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lyads/o01;->b(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object v1

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_a

    check-cast p1, Landroid/view/View;

    goto :goto_5

    :cond_a
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_b

    invoke-virtual {p0, p1, p2}, Lyads/a21;->a(Landroid/view/View;Ljava/lang/String;)Lyads/w11;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v1
.end method

.method public final a()V
    .locals 2

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lyads/a21;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 183
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 184
    :cond_0
    iget-object p0, p0, Lyads/a21;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Lyads/yr0;Lyads/fs2;)V
    .locals 2

    .line 156
    iget-object v0, p3, Lyads/yr0;->a:Ljava/lang/String;

    .line 157
    invoke-virtual {p0, p2, v0}, Lyads/a21;->a(Landroid/view/View;Ljava/lang/String;)Lyads/w11;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    new-instance v1, Lb36;

    invoke-direct {v1, p1, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    iget-object p1, p0, Lyads/a21;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lyads/a21;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 161
    :cond_1
    iget-object p1, p0, Lyads/a21;->a:Lyads/vq0;

    .line 162
    instance-of v0, p2, Lyads/v11;

    if-eqz v0, :cond_2

    .line 163
    check-cast p2, Lyads/v11;

    .line 164
    iget-object p2, p2, Lyads/v11;->a:Lyads/fq1;

    .line 165
    invoke-static {p1, p2, p3, p4}, Lyads/xf2;->a(Lyads/vq0;Lyads/fq1;Lyads/yr0;Lyads/fs2;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 166
    :cond_2
    instance-of v0, p2, Lyads/u11;

    if-eqz v0, :cond_4

    .line 167
    check-cast p2, Lyads/u11;

    .line 168
    iget-object p2, p2, Lyads/u11;->a:Lyads/v71;

    .line 169
    invoke-static {p1, p2, p3, p4}, Lyads/xf2;->a(Lyads/vq0;Lyads/v71;Lyads/yr0;Lyads/fs2;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    :goto_1
    return-void

    .line 170
    :cond_3
    new-instance p2, Lyads/z11;

    invoke-direct {p2, p0, v1}, Lyads/z11;-><init>(Lyads/a21;Lb36;)V

    .line 171
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    new-instance p2, Lyads/y11;

    invoke-direct {p2, p0, v1}, Lyads/y11;-><init>(Lyads/a21;Lb36;)V

    .line 173
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    iget-object p0, p0, Lyads/a21;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 176
    :cond_4
    invoke-static {}, Lme0;->e()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object p0, p0, Lyads/a21;->b:Ljava/util/LinkedHashMap;

    .line 178
    new-instance v0, Lb36;

    invoke-direct {v0, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-nez p0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
