.class public final Lyads/a62;
.super Lyads/oq;
.source "SourceFile"


# instance fields
.field public final A:Lyads/cs4;

.field public final o:Lyads/m62;

.field public final p:Z

.field public q:Lyads/tt;

.field public final r:Lyads/qh2;

.field public final s:Lyads/w41;

.field public final t:Lyads/e62;

.field public final u:Lyads/z52;

.field public v:Lyads/n32;

.field public final w:Lyads/rt1;

.field public final x:Ljava/util/LinkedHashMap;

.field public final y:Ljava/util/LinkedHashMap;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/qg6;Lyads/m62;Lyads/nq;Lyads/a93;ZLyads/tt;Lyads/pu5;Lyads/qh2;Lyads/w41;Lyads/e62;Lyads/z52;Lyads/n32;Lyads/rt1;)V
    .locals 9

    move-object/from16 v7, p10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lyads/oq;-><init>(Lyads/qg6;Lyads/m62;Lyads/nq;Lyads/a93;Lyads/pu5;Lyads/e62;Lyads/e62;Lyads/z52;)V

    iput-object p2, p0, Lyads/a62;->o:Lyads/m62;

    iput-boolean p5, p0, Lyads/a62;->p:Z

    iput-object p6, p0, Lyads/a62;->q:Lyads/tt;

    move-object/from16 p1, p8

    iput-object p1, p0, Lyads/a62;->r:Lyads/qh2;

    move-object/from16 p1, p9

    iput-object p1, p0, Lyads/a62;->s:Lyads/w41;

    iput-object v6, p0, Lyads/a62;->t:Lyads/e62;

    iput-object v8, p0, Lyads/a62;->u:Lyads/z52;

    move-object/from16 p1, p12

    iput-object p1, p0, Lyads/a62;->v:Lyads/n32;

    move-object/from16 p1, p13

    iput-object p1, p0, Lyads/a62;->w:Lyads/rt1;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/a62;->x:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/a62;->y:Ljava/util/LinkedHashMap;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lyads/a62;->z:Ljava/util/List;

    new-instance p1, Lyads/cs4;

    iget-object p2, p0, Lyads/oq;->c:Lyads/ld5;

    invoke-direct {p1, p2}, Lyads/cs4;-><init>(Lyads/ld5;)V

    iput-object p1, p0, Lyads/a62;->A:Lyads/cs4;

    return-void
.end method

.method public static final a(Lyads/t02;)Lyads/br0;
    .locals 0

    .line 43
    iget-object p0, p0, Lyads/t02;->a:Lyads/t52;

    .line 44
    iget-object p0, p0, Lyads/t52;->a:Lyads/br0;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/lq;I)V
    .locals 4

    sget-object v0, Lyads/du1;->a:Lyads/du1;

    invoke-interface {p1}, Lyads/lq;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lo44;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lo44;-><init>(I)V

    invoke-static {v0, v1, v2}, Lyads/du1;->a(Lyads/du1;Ljava/util/List;Lnl3;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lyads/a62;->z:Ljava/util/List;

    iget-object v0, p0, Lyads/a62;->q:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->b:Lyads/fs2;

    iget-object v1, p0, Lyads/a62;->o:Lyads/m62;

    invoke-static {v1}, Lyads/s55;->a(Landroid/view/View;)Lyads/hs2;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lyads/oq;->a(Lyads/lq;Lyads/fs2;Lyads/hs2;)V

    iget-object p1, p0, Lyads/a62;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p0, p0, Lyads/oq;->c:Lyads/ld5;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lyads/pb5;->setCurrentItem(IZ)V

    return-void
.end method

.method public final c()Lyads/cs4;
    .locals 0

    iget-object p0, p0, Lyads/a62;->A:Lyads/cs4;

    return-object p0
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Lyads/a62;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ou5;

    iget v3, v1, Lyads/ou5;->a:I

    iget-object v4, p0, Lyads/a62;->y:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lyads/a62;->z:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lyads/a62;->v:Lyads/n32;

    iget-object v7, p0, Lyads/a62;->z:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lyads/n32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v6, Lyads/n32;

    iget-object v3, p0, Lyads/a62;->s:Lyads/w41;

    iget-object v4, p0, Lyads/a62;->q:Lyads/tt;

    iget-object v5, v1, Lyads/ou5;->c:Landroid/view/View;

    iget-object v1, v1, Lyads/ou5;->b:Lyads/br0;

    invoke-virtual {v3, v4, v5, v1, v6}, Lyads/w41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/n32;)V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_1
    return-void
.end method
