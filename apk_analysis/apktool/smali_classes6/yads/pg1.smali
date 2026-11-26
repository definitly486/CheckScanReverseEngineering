.class public final Lyads/pg1;
.super Lyads/e71;
.source "SourceFile"


# instance fields
.field public final j:Lyads/tt;

.field public final k:Lyads/w41;

.field public final l:Lyads/qh2;

.field public final m:Ljava/util/WeakHashMap;

.field public n:J


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/tt;Lyads/w41;Lyads/qh2;Lyads/n32;)V
    .locals 0

    invoke-direct {p0, p2, p5, p1}, Lyads/e71;-><init>(Lyads/tt;Lyads/n32;Ljava/util/List;)V

    iput-object p2, p0, Lyads/pg1;->j:Lyads/tt;

    iput-object p3, p0, Lyads/pg1;->k:Lyads/w41;

    iput-object p4, p0, Lyads/pg1;->l:Lyads/qh2;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/pg1;->m:Ljava/util/WeakHashMap;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 4

    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/cn1;

    iget-object v0, p0, Lyads/pg1;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lyads/pg1;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lyads/pg1;->n:J

    iget-object p0, p0, Lyads/pg1;->m:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    new-instance p1, Lyads/ug1;

    iget-object p2, p0, Lyads/pg1;->j:Lyads/tt;

    iget-object p2, p2, Lyads/tt;->a:Lyads/vq0;

    iget-object p2, p2, Lyads/vq0;->l:Lyads/pq0;

    invoke-direct {p1, p2}, Lyads/ug1;-><init>(Landroid/content/Context;)V

    new-instance p2, Lyads/ch1;

    iget-object v0, p0, Lyads/pg1;->j:Lyads/tt;

    iget-object v1, p0, Lyads/pg1;->k:Lyads/w41;

    iget-object p0, p0, Lyads/pg1;->l:Lyads/qh2;

    invoke-direct {p2, v0, p1, v1, p0}, Lyads/ch1;-><init>(Lyads/tt;Lyads/ug1;Lyads/w41;Lyads/qh2;)V

    return-object p2
.end method
