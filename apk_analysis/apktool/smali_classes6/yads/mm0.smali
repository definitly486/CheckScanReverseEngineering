.class public final Lyads/mm0;
.super Lyads/o06;
.source "SourceFile"


# static fields
.field public static final R:Lyads/mm0;


# instance fields
.field public final C:Z

.field public final D:Z

.field public final E:Z

.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public final I:Z

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final M:Z

.field public final N:Z

.field public final O:Z

.field public final P:Landroid/util/SparseArray;

.field public final Q:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/lm0;

    invoke-direct {v0}, Lyads/lm0;-><init>()V

    new-instance v1, Lyads/mm0;

    invoke-direct {v1, v0}, Lyads/mm0;-><init>(Lyads/lm0;)V

    sput-object v1, Lyads/mm0;->R:Lyads/mm0;

    return-void
.end method

.method public constructor <init>(Lyads/lm0;)V
    .locals 1

    invoke-direct {p0, p1}, Lyads/o06;-><init>(Lyads/n06;)V

    iget-boolean v0, p1, Lyads/lm0;->A:Z

    iput-boolean v0, p0, Lyads/mm0;->C:Z

    iget-boolean v0, p1, Lyads/lm0;->B:Z

    iput-boolean v0, p0, Lyads/mm0;->D:Z

    iget-boolean v0, p1, Lyads/lm0;->C:Z

    iput-boolean v0, p0, Lyads/mm0;->E:Z

    iget-boolean v0, p1, Lyads/lm0;->D:Z

    iput-boolean v0, p0, Lyads/mm0;->F:Z

    iget-boolean v0, p1, Lyads/lm0;->E:Z

    iput-boolean v0, p0, Lyads/mm0;->G:Z

    iget-boolean v0, p1, Lyads/lm0;->F:Z

    iput-boolean v0, p0, Lyads/mm0;->H:Z

    iget-boolean v0, p1, Lyads/lm0;->G:Z

    iput-boolean v0, p0, Lyads/mm0;->I:Z

    iget-boolean v0, p1, Lyads/lm0;->H:Z

    iput-boolean v0, p0, Lyads/mm0;->J:Z

    iget-boolean v0, p1, Lyads/lm0;->I:Z

    iput-boolean v0, p0, Lyads/mm0;->K:Z

    iget-boolean v0, p1, Lyads/lm0;->J:Z

    iput-boolean v0, p0, Lyads/mm0;->L:Z

    iget-boolean v0, p1, Lyads/lm0;->K:Z

    iput-boolean v0, p0, Lyads/mm0;->M:Z

    iget-boolean v0, p1, Lyads/lm0;->L:Z

    iput-boolean v0, p0, Lyads/mm0;->N:Z

    iget-boolean v0, p1, Lyads/lm0;->M:Z

    iput-boolean v0, p0, Lyads/mm0;->O:Z

    iget-object v0, p1, Lyads/lm0;->N:Landroid/util/SparseArray;

    iput-object v0, p0, Lyads/mm0;->P:Landroid/util/SparseArray;

    iget-object p1, p1, Lyads/lm0;->O:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lyads/mm0;->Q:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/mm0;

    if-eq v3, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lyads/mm0;

    invoke-super {p0, p1}, Lyads/o06;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->C:Z

    iget-boolean v3, p1, Lyads/mm0;->C:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->D:Z

    iget-boolean v3, p1, Lyads/mm0;->D:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->E:Z

    iget-boolean v3, p1, Lyads/mm0;->E:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->F:Z

    iget-boolean v3, p1, Lyads/mm0;->F:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->G:Z

    iget-boolean v3, p1, Lyads/mm0;->G:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->H:Z

    iget-boolean v3, p1, Lyads/mm0;->H:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->I:Z

    iget-boolean v3, p1, Lyads/mm0;->I:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->J:Z

    iget-boolean v3, p1, Lyads/mm0;->J:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->K:Z

    iget-boolean v3, p1, Lyads/mm0;->K:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->L:Z

    iget-boolean v3, p1, Lyads/mm0;->L:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->M:Z

    iget-boolean v3, p1, Lyads/mm0;->M:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->N:Z

    iget-boolean v3, p1, Lyads/mm0;->N:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lyads/mm0;->O:Z

    iget-boolean v3, p1, Lyads/mm0;->O:Z

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lyads/mm0;->Q:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lyads/mm0;->Q:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-eq v5, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lyads/mm0;->P:Landroid/util/SparseArray;

    iget-object p1, p1, Lyads/mm0;->P:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v3, v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_9

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_a

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v7, v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/g06;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lyads/o06;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->C:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->D:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->E:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->F:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->G:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->H:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->I:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->J:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->K:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->L:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->M:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/mm0;->N:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lyads/mm0;->O:Z

    add-int/2addr v0, p0

    return v0
.end method
