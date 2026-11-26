.class public final Lyads/q14;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/rw4;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Lyads/mq2;

.field public final f:Lyads/k14;

.field public final g:Lyads/tl2;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/HashSet;

.field public j:Lyads/ik5;

.field public k:Z

.field public l:Lyads/p16;


# direct methods
.method public constructor <init>(Lyads/mq2;Lyads/ge;Landroid/os/Handler;Lyads/rw4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lyads/q14;->a:Lyads/rw4;

    iput-object p1, p0, Lyads/q14;->e:Lyads/mq2;

    new-instance p1, Lyads/ik5;

    new-instance p4, Ljava/util/Random;

    invoke-direct {p4}, Ljava/util/Random;-><init>()V

    invoke-direct {p1, p4}, Lyads/ik5;-><init>(Ljava/util/Random;)V

    iput-object p1, p0, Lyads/q14;->j:Lyads/ik5;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lyads/q14;->c:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyads/q14;->d:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    new-instance p1, Lyads/k14;

    invoke-direct {p1}, Lyads/k14;-><init>()V

    iput-object p1, p0, Lyads/q14;->f:Lyads/k14;

    new-instance p4, Lyads/tl2;

    invoke-direct {p4}, Lyads/tl2;-><init>()V

    iput-object p4, p0, Lyads/q14;->g:Lyads/tl2;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyads/q14;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lyads/j14;

    invoke-direct {p1, p3, p2}, Lyads/j14;-><init>(Landroid/os/Handler;Lyads/l14;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p4, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lyads/sl2;

    invoke-direct {p1, p3, p2}, Lyads/sl2;-><init>(Landroid/os/Handler;Lyads/ul2;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lyads/kx5;
    .locals 3

    .line 161
    iget-object v0, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object p0, Lyads/kx5;->b:Lyads/gx5;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_0
    iget-object v2, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 164
    iget-object v2, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/p14;

    .line 165
    iput v1, v2, Lyads/p14;->d:I

    .line 166
    iget-object v2, v2, Lyads/p14;->a:Lyads/hx3;

    .line 167
    iget-object v2, v2, Lyads/hx3;->o:Lyads/fx3;

    .line 168
    iget-object v2, v2, Lyads/c03;->c:Lyads/kx5;

    .line 169
    invoke-virtual {v2}, Lyads/kx5;->b()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Lyads/hx4;

    iget-object v1, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Lyads/q14;->j:Lyads/ik5;

    invoke-direct {v0, v1, p0}, Lyads/hx4;-><init>(Ljava/util/ArrayList;Lyads/ik5;)V

    return-object v0
.end method

.method public final a(ILjava/util/ArrayList;Lyads/ik5;)Lyads/kx5;
    .locals 5

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p3, p0, Lyads/q14;->j:Lyads/ik5;

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_4

    sub-int v0, p3, p1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/p14;

    const/4 v1, 0x0

    if-lez p3, :cond_0

    iget-object v2, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/p14;

    iget-object v3, v2, Lyads/p14;->a:Lyads/hx3;

    iget-object v3, v3, Lyads/hx3;->o:Lyads/fx3;

    iget v2, v2, Lyads/p14;->d:I

    iget-object v3, v3, Lyads/c03;->c:Lyads/kx5;

    invoke-virtual {v3}, Lyads/kx5;->b()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Lyads/p14;->d:I

    iput-boolean v1, v0, Lyads/p14;->e:Z

    iget-object v1, v0, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    iput v1, v0, Lyads/p14;->d:I

    iput-boolean v1, v0, Lyads/p14;->e:Z

    iget-object v1, v0, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v1, v0, Lyads/p14;->a:Lyads/hx3;

    iget-object v1, v1, Lyads/hx3;->o:Lyads/fx3;

    iget-object v1, v1, Lyads/c03;->c:Lyads/kx5;

    invoke-virtual {v1}, Lyads/kx5;->b()I

    move-result v1

    move v2, p3

    :goto_2
    iget-object v3, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    if-ge v2, v3, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/p14;

    iget v4, v3, Lyads/p14;->d:I

    add-int/2addr v4, v1

    iput v4, v3, Lyads/p14;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lyads/q14;->d:Ljava/util/HashMap;

    iget-object v2, v0, Lyads/p14;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lyads/q14;->k:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lyads/q14;->a(Lyads/p14;)V

    iget-object v1, p0, Lyads/q14;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lyads/q14;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/o14;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lyads/o14;->a:Lyads/cs;

    iget-object v0, v0, Lyads/o14;->b:Lyads/i14;

    invoke-virtual {v1, v0}, Lyads/cs;->a(Lyads/i14;)V

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lyads/q14;->a()Lyads/kx5;

    move-result-object p0

    return-object p0
.end method

.method public final a(II)V
    .locals 6

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_2

    .line 171
    iget-object v1, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/p14;

    .line 172
    iget-object v2, p0, Lyads/q14;->d:Ljava/util/HashMap;

    iget-object v3, v1, Lyads/p14;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v2, v1, Lyads/p14;->a:Lyads/hx3;

    .line 174
    iget-object v2, v2, Lyads/hx3;->o:Lyads/fx3;

    .line 175
    iget-object v2, v2, Lyads/c03;->c:Lyads/kx5;

    .line 176
    invoke-virtual {v2}, Lyads/kx5;->b()I

    move-result v2

    neg-int v2, v2

    move v3, p2

    .line 177
    :goto_1
    iget-object v4, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 178
    iget-object v4, p0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/p14;

    .line 179
    iget v5, v4, Lyads/p14;->d:I

    add-int/2addr v5, v2

    iput v5, v4, Lyads/p14;->d:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    :cond_0
    iput-boolean v0, v1, Lyads/p14;->e:Z

    .line 181
    iget-boolean v2, p0, Lyads/q14;->k:Z

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, v1, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lyads/q14;->h:Ljava/util/HashMap;

    .line 184
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/o14;

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    iget-object v3, v2, Lyads/o14;->a:Lyads/cs;

    iget-object v4, v2, Lyads/o14;->b:Lyads/i14;

    invoke-virtual {v3, v4}, Lyads/cs;->c(Lyads/i14;)V

    .line 187
    iget-object v3, v2, Lyads/o14;->a:Lyads/cs;

    iget-object v4, v2, Lyads/o14;->c:Lyads/n14;

    invoke-virtual {v3, v4}, Lyads/cs;->a(Lyads/l14;)V

    .line 188
    iget-object v3, v2, Lyads/o14;->a:Lyads/cs;

    iget-object v2, v2, Lyads/o14;->c:Lyads/n14;

    invoke-virtual {v3, v2}, Lyads/cs;->a(Lyads/ul2;)V

    .line 189
    iget-object v2, p0, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lyads/cs;Lyads/kx5;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lyads/q14;->e:Lyads/mq2;

    .line 215
    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    const/16 p1, 0x16

    .line 216
    iget-object p0, p0, Lyads/gu5;->a:Landroid/os/Handler;

    .line 217
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Lyads/p14;)V
    .locals 6

    .line 190
    iget-object v0, p1, Lyads/p14;->a:Lyads/hx3;

    .line 191
    new-instance v1, Lb6a;

    invoke-direct {v1, p0}, Lb6a;-><init>(Lyads/q14;)V

    .line 192
    new-instance v2, Lyads/n14;

    invoke-direct {v2, p0, p1}, Lyads/n14;-><init>(Lyads/q14;Lyads/p14;)V

    .line 193
    iget-object v3, p0, Lyads/q14;->h:Ljava/util/HashMap;

    new-instance v4, Lyads/o14;

    invoke-direct {v4, v0, v1, v2}, Lyads/o14;-><init>(Lyads/cs;Lyads/i14;Lyads/n14;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 194
    invoke-static {p1}, Lyads/u56;->b(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    iget-object v4, v0, Lyads/cs;->c:Lyads/k14;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    iget-object v4, v4, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lyads/j14;

    invoke-direct {v5, v3, v2}, Lyads/j14;-><init>(Landroid/os/Handler;Lyads/l14;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static {p1}, Lyads/u56;->b(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 199
    iget-object v3, v0, Lyads/cs;->d:Lyads/tl2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    iget-object v3, v3, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lyads/sl2;

    invoke-direct {v4, p1, v2}, Lyads/sl2;-><init>(Landroid/os/Handler;Lyads/ul2;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object p1, p0, Lyads/q14;->l:Lyads/p16;

    iget-object p0, p0, Lyads/q14;->a:Lyads/rw4;

    .line 202
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 203
    iget-object v3, v0, Lyads/cs;->e:Landroid/os/Looper;

    if-eqz v3, :cond_1

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-void

    .line 205
    :cond_1
    :goto_0
    iput-object p0, v0, Lyads/cs;->g:Lyads/rw4;

    .line 206
    iget-object p0, v0, Lyads/cs;->f:Lyads/kx5;

    .line 207
    iget-object v3, v0, Lyads/cs;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v3, v0, Lyads/cs;->e:Landroid/os/Looper;

    if-nez v3, :cond_2

    .line 209
    iput-object v2, v0, Lyads/cs;->e:Landroid/os/Looper;

    .line 210
    iget-object p0, v0, Lyads/cs;->b:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v0, p1}, Lyads/hx3;->a(Lyads/p16;)V

    return-void

    :cond_2
    if-eqz p0, :cond_3

    .line 212
    invoke-virtual {v0, v1}, Lyads/cs;->b(Lyads/i14;)V

    .line 213
    invoke-virtual {v1, v0, p0}, Lb6a;->a(Lyads/cs;Lyads/kx5;)V

    :cond_3
    return-void
.end method
