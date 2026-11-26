.class public final Lyads/lm0;
.super Lyads/n06;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public final N:Landroid/util/SparseArray;

.field public final O:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lyads/n06;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lyads/lm0;->N:Landroid/util/SparseArray;

    .line 41
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lyads/lm0;->O:Landroid/util/SparseBooleanArray;

    .line 42
    invoke-virtual {p0}, Lyads/lm0;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lyads/n06;-><init>()V

    invoke-super {p0, p1}, Lyads/n06;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lyads/u56;->b(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lyads/n06;->i:I

    iput p1, p0, Lyads/n06;->j:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/n06;->k:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lyads/lm0;->N:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lyads/lm0;->O:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lyads/lm0;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/lm0;->A:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lyads/lm0;->B:Z

    iput-boolean v0, p0, Lyads/lm0;->C:Z

    iput-boolean v1, p0, Lyads/lm0;->D:Z

    iput-boolean v0, p0, Lyads/lm0;->E:Z

    iput-boolean v1, p0, Lyads/lm0;->F:Z

    iput-boolean v1, p0, Lyads/lm0;->G:Z

    iput-boolean v1, p0, Lyads/lm0;->H:Z

    iput-boolean v1, p0, Lyads/lm0;->I:Z

    iput-boolean v0, p0, Lyads/lm0;->J:Z

    iput-boolean v0, p0, Lyads/lm0;->K:Z

    iput-boolean v1, p0, Lyads/lm0;->L:Z

    iput-boolean v0, p0, Lyads/lm0;->M:Z

    return-void
.end method
