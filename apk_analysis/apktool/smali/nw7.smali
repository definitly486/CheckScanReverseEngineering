.class public final Lnw7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Lqw7;

.field public final c:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Llw7;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final e:F

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lsw7;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public final i:Landroid/graphics/Rect;

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/Long;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Lhq;

.field public final o:Lnw7$b;

.field public final p:Lmw7;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lqw7;Lnl3;Lnl3;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lqw7;",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Llw7;",
            "Lj59;",
            ">;F)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnw7;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lnw7;->b:Lqw7;

    iput-object p3, p0, Lnw7;->c:Lnl3;

    iput-object p4, p0, Lnw7;->d:Lnl3;

    iput p5, p0, Lnw7;->e:F

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lnw7;->f:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnw7;->g:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lnw7;->i:Landroid/graphics/Rect;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lnw7;->m:Ljava/util/LinkedHashMap;

    new-instance p2, Lhq;

    invoke-direct {p2, p0, p1}, Lhq;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lnw7;->n:Lhq;

    new-instance p1, Lnw7$b;

    invoke-direct {p1, p0}, Lnw7$b;-><init>(Lnw7;)V

    iput-object p1, p0, Lnw7;->o:Lnw7$b;

    new-instance p1, Lmw7;

    invoke-direct {p1, p0}, Lmw7;-><init>(Lnw7;)V

    iput-object p1, p0, Lnw7;->p:Lmw7;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-object v0, p0, Lnw7;->o:Lnw7$b;

    iget-object v1, p0, Lnw7;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnw7;->p:Lmw7;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lnw7$a;

    invoke-direct {v0, p0}, Lnw7$a;-><init>(Lnw7;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final b()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lnw7;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lnw7;->n:Lhq;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-boolean v5, v0, Lnw7;->j:Z

    iget-object v6, v0, Lnw7;->m:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lnw7;->k:Z

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-wide/from16 v19, v3

    goto/16 :goto_9

    :cond_1
    iget-object v5, v0, Lnw7;->l:Ljava/lang/Long;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lnw7;->b:Lqw7;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    sub-long v10, v3, v10

    const-wide/16 v12, 0x1f4

    cmp-long v5, v10, v12

    if-ltz v5, :cond_2

    iget-boolean v5, v0, Lnw7;->h:Z

    if-nez v5, :cond_2

    invoke-interface {v9}, Lqw7;->c()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v8}, Lnw7;->c(Z)V

    :cond_2
    iput-object v7, v0, Lnw7;->l:Ljava/lang/Long;

    :cond_3
    iput-boolean v8, v0, Lnw7;->h:Z

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v9}, Lqw7;->c()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v12, v8

    :goto_0
    if-ge v12, v11, :cond_c

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_5

    :cond_4
    :goto_1
    move-wide/from16 v19, v3

    move-object/from16 v16, v7

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    iget-object v15, v0, Lnw7;->f:Ljava/util/List;

    invoke-static {v14, v15}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-nez v15, :cond_6

    sget-object v15, Lkx2;->b:Lkx2;

    :cond_6
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v16

    if-lez v16, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v16

    if-gtz v16, :cond_7

    goto :goto_1

    :cond_7
    move-object/from16 v16, v7

    iget-object v7, v0, Lnw7;->i:Landroid/graphics/Rect;

    invoke-virtual {v13, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v8, v7

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v7, v13

    div-float/2addr v8, v7

    iget v7, v0, Lnw7;->e:F

    cmpg-float v7, v8, v7

    if-ltz v7, :cond_b

    iget-object v7, v0, Lnw7;->f:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v14}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v8, v13

    goto :goto_2

    :cond_8
    add-int/lit8 v8, v8, 0x1

    check-cast v15, Ljava/lang/Iterable;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v13, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    if-ltz v13, :cond_a

    check-cast v14, Lsw7;

    add-int/2addr v13, v8

    invoke-interface {v14}, Lsw7;->a()Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_9

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v14}, Lsw7;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    move-wide/from16 v19, v3

    move-object/from16 v18, v7

    invoke-interface {v14}, Lsw7;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-instance v4, Llw7;

    invoke-interface {v14}, Lsw7;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14}, Lsw7;->a()Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v4, v14, v7, v13, v10}, Llw7;-><init>(Ljava/lang/Integer;Ljava/lang/String;II)V

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v13, v15

    move-object/from16 v7, v18

    move-wide/from16 v3, v19

    goto :goto_3

    :cond_a
    invoke-static {}, Lu96;->o()V

    throw v16

    :cond_b
    move-wide/from16 v19, v3

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v16

    move-wide/from16 v3, v19

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_c
    move-wide/from16 v19, v3

    move-object/from16 v16, v7

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v9, v7}, Lqw7;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v7, v16

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llw7;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_f

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    sub-long v10, v19, v10

    const-wide/16 v12, 0x3e8

    cmp-long v8, v10, v12

    if-ltz v8, :cond_10

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v5}, Lqw7;->a(Ljava/lang/String;)V

    iget-object v5, v0, Lnw7;->d:Lnl3;

    invoke-interface {v5, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_10
    sub-long/2addr v12, v10

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_8

    :cond_11
    move-wide v4, v12

    :goto_8
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v7, v4

    goto :goto_7

    :cond_12
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void

    :goto_9
    iget-object v1, v0, Lnw7;->l:Ljava/lang/Long;

    if-nez v1, :cond_14

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lnw7;->l:Ljava/lang/Long;

    :cond_14
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnw7;->b:Lqw7;

    invoke-interface {v0}, Lqw7;->d()V

    iget-object v0, p0, Lnw7;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnw7;->h:Z

    iget-object p0, p0, Lnw7;->c:Lnl3;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lsw7;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lnw7;->f:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkn1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsw7;

    invoke-interface {v1}, Lsw7;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lsw7;->a()Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lb36;

    invoke-direct {v3, v2, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnw7;->b()V

    return-void

    :cond_1
    iget-object p1, p0, Lnw7;->b:Lqw7;

    invoke-interface {p1}, Lqw7;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p1, v0}, Lqw7;->e(Ljava/util/List;)V

    const/4 p1, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnw7;->c(Z)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lnw7;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lnw7;->c(Z)V

    :cond_3
    :goto_1
    iput-boolean p1, p0, Lnw7;->g:Z

    invoke-virtual {p0}, Lnw7;->b()V

    return-void
.end method
