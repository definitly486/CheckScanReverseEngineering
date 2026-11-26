.class public Lyads/o06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final B:Lyads/o06;


# instance fields
.field public final A:Lyads/te3;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Lyads/k55;

.field public final n:I

.field public final o:Lyads/k55;

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:Lyads/k55;

.field public final t:Lyads/k55;

.field public final u:I

.field public final v:I

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Lyads/re3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/n06;

    invoke-direct {v0}, Lyads/n06;-><init>()V

    new-instance v1, Lyads/o06;

    invoke-direct {v1, v0}, Lyads/o06;-><init>(Lyads/n06;)V

    sput-object v1, Lyads/o06;->B:Lyads/o06;

    return-void
.end method

.method public constructor <init>(Lyads/n06;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lyads/n06;->a:I

    iput v0, p0, Lyads/o06;->b:I

    iget v0, p1, Lyads/n06;->b:I

    iput v0, p0, Lyads/o06;->c:I

    iget v0, p1, Lyads/n06;->c:I

    iput v0, p0, Lyads/o06;->d:I

    iget v0, p1, Lyads/n06;->d:I

    iput v0, p0, Lyads/o06;->e:I

    iget v0, p1, Lyads/n06;->e:I

    iput v0, p0, Lyads/o06;->f:I

    iget v0, p1, Lyads/n06;->f:I

    iput v0, p0, Lyads/o06;->g:I

    iget v0, p1, Lyads/n06;->g:I

    iput v0, p0, Lyads/o06;->h:I

    iget v0, p1, Lyads/n06;->h:I

    iput v0, p0, Lyads/o06;->i:I

    iget v0, p1, Lyads/n06;->i:I

    iput v0, p0, Lyads/o06;->j:I

    iget v0, p1, Lyads/n06;->j:I

    iput v0, p0, Lyads/o06;->k:I

    iget-boolean v0, p1, Lyads/n06;->k:Z

    iput-boolean v0, p0, Lyads/o06;->l:Z

    iget-object v0, p1, Lyads/n06;->l:Lyads/k55;

    iput-object v0, p0, Lyads/o06;->m:Lyads/k55;

    iget v0, p1, Lyads/n06;->m:I

    iput v0, p0, Lyads/o06;->n:I

    iget-object v0, p1, Lyads/n06;->n:Lyads/k55;

    iput-object v0, p0, Lyads/o06;->o:Lyads/k55;

    iget v0, p1, Lyads/n06;->o:I

    iput v0, p0, Lyads/o06;->p:I

    iget v0, p1, Lyads/n06;->p:I

    iput v0, p0, Lyads/o06;->q:I

    iget v0, p1, Lyads/n06;->q:I

    iput v0, p0, Lyads/o06;->r:I

    iget-object v0, p1, Lyads/n06;->r:Lyads/k55;

    iput-object v0, p0, Lyads/o06;->s:Lyads/k55;

    iget-object v0, p1, Lyads/n06;->s:Lyads/k55;

    iput-object v0, p0, Lyads/o06;->t:Lyads/k55;

    iget v0, p1, Lyads/n06;->t:I

    iput v0, p0, Lyads/o06;->u:I

    iget v0, p1, Lyads/n06;->u:I

    iput v0, p0, Lyads/o06;->v:I

    iget-boolean v0, p1, Lyads/n06;->v:Z

    iput-boolean v0, p0, Lyads/o06;->w:Z

    iget-boolean v0, p1, Lyads/n06;->w:Z

    iput-boolean v0, p0, Lyads/o06;->x:Z

    iget-boolean v0, p1, Lyads/n06;->x:Z

    iput-boolean v0, p0, Lyads/o06;->y:Z

    iget-object v0, p1, Lyads/n06;->y:Ljava/util/HashMap;

    invoke-static {v0}, Lyads/re3;->a(Ljava/util/HashMap;)Lyads/re3;

    move-result-object v0

    iput-object v0, p0, Lyads/o06;->z:Lyads/re3;

    iget-object p1, p1, Lyads/n06;->z:Ljava/util/HashSet;

    invoke-static {p1}, Lyads/te3;->a(Ljava/util/Collection;)Lyads/te3;

    move-result-object p1

    iput-object p1, p0, Lyads/o06;->A:Lyads/te3;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lyads/o06;

    iget v2, p0, Lyads/o06;->b:I

    iget v3, p1, Lyads/o06;->b:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->c:I

    iget v3, p1, Lyads/o06;->c:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->d:I

    iget v3, p1, Lyads/o06;->d:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->e:I

    iget v3, p1, Lyads/o06;->e:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->f:I

    iget v3, p1, Lyads/o06;->f:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->g:I

    iget v3, p1, Lyads/o06;->g:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->h:I

    iget v3, p1, Lyads/o06;->h:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->i:I

    iget v3, p1, Lyads/o06;->i:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lyads/o06;->l:Z

    iget-boolean v3, p1, Lyads/o06;->l:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->j:I

    iget v3, p1, Lyads/o06;->j:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->k:I

    iget v3, p1, Lyads/o06;->k:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lyads/o06;->m:Lyads/k55;

    iget-object v3, p1, Lyads/o06;->m:Lyads/k55;

    invoke-virtual {v2, v3}, Lyads/oe3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lyads/o06;->n:I

    iget v3, p1, Lyads/o06;->n:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lyads/o06;->o:Lyads/k55;

    iget-object v3, p1, Lyads/o06;->o:Lyads/k55;

    invoke-virtual {v2, v3}, Lyads/oe3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lyads/o06;->p:I

    iget v3, p1, Lyads/o06;->p:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->q:I

    iget v3, p1, Lyads/o06;->q:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->r:I

    iget v3, p1, Lyads/o06;->r:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lyads/o06;->s:Lyads/k55;

    iget-object v3, p1, Lyads/o06;->s:Lyads/k55;

    invoke-virtual {v2, v3}, Lyads/oe3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lyads/o06;->t:Lyads/k55;

    iget-object v3, p1, Lyads/o06;->t:Lyads/k55;

    invoke-virtual {v2, v3}, Lyads/oe3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lyads/o06;->u:I

    iget v3, p1, Lyads/o06;->u:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lyads/o06;->v:I

    iget v3, p1, Lyads/o06;->v:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lyads/o06;->w:Z

    iget-boolean v3, p1, Lyads/o06;->w:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lyads/o06;->x:Z

    iget-boolean v3, p1, Lyads/o06;->x:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lyads/o06;->y:Z

    iget-boolean v3, p1, Lyads/o06;->y:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lyads/o06;->z:Lyads/re3;

    iget-object v3, p1, Lyads/o06;->z:Lyads/re3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lyads/re3;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    check-cast v2, Lyads/te3;

    invoke-virtual {v2, v3}, Lyads/te3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    iget-object p0, p0, Lyads/o06;->A:Lyads/te3;

    iget-object p1, p1, Lyads/o06;->A:Lyads/te3;

    invoke-virtual {p0, p1}, Lyads/te3;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lyads/o06;->b:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/o06;->l:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/o06;->m:Lyads/k55;

    invoke-virtual {v1}, Lyads/oe3;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lyads/o06;->n:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lyads/o06;->o:Lyads/k55;

    invoke-virtual {v0}, Lyads/oe3;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/o06;->s:Lyads/k55;

    invoke-virtual {v1}, Lyads/oe3;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lyads/o06;->t:Lyads/k55;

    invoke-virtual {v0}, Lyads/oe3;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->u:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/o06;->v:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/o06;->w:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/o06;->x:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/o06;->y:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/o06;->z:Lyads/re3;

    invoke-virtual {v1}, Lyads/re3;->a()Lyads/te3;

    move-result-object v1

    invoke-static {v1}, Lyads/tj5;->a(Ljava/util/Set;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lyads/o06;->A:Lyads/te3;

    invoke-virtual {p0}, Lyads/te3;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
