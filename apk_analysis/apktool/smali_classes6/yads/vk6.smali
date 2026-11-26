.class public final Lyads/vk6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mt5;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:[J

.field public final d:[J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyads/vk6;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lyads/vk6;->c:[J

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/nk6;

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lyads/vk6;->c:[J

    iget-wide v4, v1, Lyads/nk6;->b:J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v1, Lyads/nk6;->c:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/vk6;->c:[J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lyads/vk6;->d:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method public static synthetic a(Lyads/nk6;Lyads/nk6;)I
    .locals 2

    .line 23
    iget-wide v0, p0, Lyads/nk6;->b:J

    iget-wide p0, p1, Lyads/nk6;->b:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 20
    iget-object p0, p0, Lyads/vk6;->d:[J

    array-length p0, p0

    return p0
.end method

.method public final a(J)I
    .locals 2

    .line 21
    iget-object v0, p0, Lyads/vk6;->d:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lyads/u56;->a([JJZ)I

    move-result p1

    .line 22
    iget-object p0, p0, Lyads/vk6;->d:[J

    array-length p0, p0

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)J
    .locals 3

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_1

    iget-object p0, p0, Lyads/vk6;->d:[J

    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-wide v0, p0, p1

    return-wide v0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-wide v0

    :cond_1
    invoke-static {}, Lmi2;->b()V

    return-wide v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v0, Lyads/vk6;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, v0, Lyads/vk6;->c:[J

    mul-int/lit8 v6, v4, 0x2

    aget-wide v7, v5, v6

    cmp-long v7, v7, p1

    if-gtz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    cmp-long v5, p1, v6

    if-gez v5, :cond_1

    iget-object v5, v0, Lyads/vk6;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/nk6;

    iget-object v6, v5, Lyads/nk6;->a:Lyads/sb0;

    iget v7, v6, Lyads/sb0;->f:F

    const v8, -0x800001

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lmfa;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/nk6;

    iget-object v0, v0, Lyads/nk6;->a:Lyads/sb0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lyads/sb0;->b:Ljava/lang/CharSequence;

    iget-object v8, v0, Lyads/sb0;->e:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lyads/sb0;->c:Landroid/text/Layout$Alignment;

    iget-object v7, v0, Lyads/sb0;->d:Landroid/text/Layout$Alignment;

    iget v11, v0, Lyads/sb0;->h:I

    iget v12, v0, Lyads/sb0;->i:F

    iget v13, v0, Lyads/sb0;->j:I

    iget v14, v0, Lyads/sb0;->o:I

    iget v15, v0, Lyads/sb0;->p:F

    iget v4, v0, Lyads/sb0;->k:F

    iget v9, v0, Lyads/sb0;->l:F

    iget-boolean v10, v0, Lyads/sb0;->m:Z

    move-object/from16 v22, v2

    iget v2, v0, Lyads/sb0;->n:I

    move/from16 v19, v2

    iget v2, v0, Lyads/sb0;->q:I

    iget v0, v0, Lyads/sb0;->r:F

    move/from16 v21, v0

    rsub-int/lit8 v0, v3, -0x1

    int-to-float v0, v0

    move/from16 v16, v4

    new-instance v4, Lyads/sb0;

    move/from16 v18, v10

    const/4 v10, 0x1

    move/from16 v20, v2

    move/from16 v17, v9

    move v9, v0

    invoke-direct/range {v4 .. v21}, Lyads/sb0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v22

    goto :goto_2

    :cond_3
    return-object v1
.end method
