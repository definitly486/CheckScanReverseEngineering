.class public abstract Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;,
        Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b;,
        Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$c;,
        Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field public static final synthetic p0:I


# instance fields
.field public final A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public final O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public final a0:I

.field public final b:Landroid/content/res/TypedArray;

.field public b0:Z

.field public c:Lm92;

.field public c0:Z

.field public final d:Landroid/os/Handler;

.field public d0:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public e0:Z

.field public f:I

.field public f0:Z

.field public g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a<",
            "TV;>;"
        }
    .end annotation
.end field

.field public g0:Z

.field public final h:Landroid/graphics/Paint;

.field public h0:Z

.field public final i:Landroid/widget/Scroller;

.field public i0:Z

.field public j:Landroid/view/VelocityTracker;

.field public j0:Z

.field public final k:Landroid/graphics/Rect;

.field public final k0:Ljava/util/Locale;

.field public final l:Landroid/graphics/Rect;

.field public final l0:Lfh8;

.field public final m:Landroid/graphics/Rect;

.field public m0:I

.field public final n:Landroid/graphics/Rect;

.field public final n0:Lfh8;

.field public final o:Landroid/graphics/Camera;

.field public final o0:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$f;

.field public final p:Landroid/graphics/Matrix;

.field public final q:Landroid/graphics/Matrix;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lzw6;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->b:Landroid/content/res/TypedArray;

    new-instance v0, Lm92;

    invoke-direct {v0}, Lm92;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c:Lm92;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d:Landroid/os/Handler;

    new-instance v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;-><init>(I)V

    iput-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    new-instance v0, Landroid/graphics/Paint;

    const/16 v2, 0x45

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h:Landroid/graphics/Paint;

    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->i:Landroid/widget/Scroller;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->l:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->n:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->o:Landroid/graphics/Camera;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->p:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->q:Landroid/graphics/Matrix;

    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->r:Ljava/lang/String;

    const/16 p1, 0x12

    const/4 v2, 0x7

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->s:I

    const/16 p1, 0xb

    const v3, -0x777778

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->x:I

    const/16 p1, 0x11

    const/4 v3, -0x1

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f070002

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 v4, 0xc

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f060492

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v4, 0x7f070000

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 v4, 0x8

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->B:I

    const p1, -0x11cccd

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->C:I

    const/4 p1, 0x2

    const v2, -0x77000001

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->D:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070001

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 v2, 0xa

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->E:I

    const/16 p1, 0x5a

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->F:I

    const/16 p1, 0x9

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->G:I

    const/16 p1, 0x10

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    const/16 p1, 0x32

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->O:I

    const/16 p1, 0xe

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->U:I

    iput v4, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->a0:I

    const/16 p1, 0xf

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->b0:Z

    const/4 p1, 0x6

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c0:Z

    const/4 p1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d0:Z

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e0:Z

    const/4 p1, 0x4

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f0:Z

    const/4 p1, 0x3

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g0:Z

    new-instance p1, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {p1, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k0:Ljava/util/Locale;

    new-instance p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$h;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$h;-><init>(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->l0:Lfh8;

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m0:I

    new-instance p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$e;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$e;-><init>(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->n0:Lfh8;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->p()V

    iget p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->z:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e:Ljava/lang/Object;

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h0:Z

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h(Z)Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    sget-object p2, Lkx2;->b:Lkx2;

    :cond_1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e:Ljava/lang/Object;

    iget-object p1, p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :cond_3
    iput v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    iput v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    new-instance p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$f;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$f;-><init>(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;)V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->o0:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$f;

    return-void
.end method

.method private final getDefaultItemPosition()I
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final getLocalizedToday()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->n0:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getToday()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->l0:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getTodayItemPosition()I
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Loc2;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Loc2;

    iget-object v4, v4, Loc2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getLocalizedToday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final setAdapter(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    iget p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->G:I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h:Landroid/graphics/Paint;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m()V

    return-void
.end method

.method private final setDefault(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDefaultItemPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setSelectedItemPosition(I)V

    return-void
.end method

.method private final setSelectedItemPosition(I)V
    .locals 4

    int-to-double v0, p1

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-double v0, p1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-boolean v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d0:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->y:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->Q:I

    iget v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->I:I

    sub-int v4, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final b(I)I
    .locals 4

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->I:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    if-gez v0, :cond_0

    neg-int p0, p0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    sub-int/2addr p0, p1

    return p0

    :cond_1
    neg-int p0, p1

    return p0
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->G:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k:Landroid/graphics/Rect;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->P:I

    goto :goto_0

    :cond_0
    iget v0, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    :goto_0
    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->R:I

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->Q:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->S:I

    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    iget v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f0:Z

    if-eqz v2, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    neg-int v1, v1

    iget-object v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v1

    add-int v1, v2, v0

    :goto_0
    iput v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->M:I

    iget-boolean v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f0:Z

    if-eqz v1, :cond_1

    const v0, 0x7fffffff

    :cond_1
    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->N:I

    return-void
.end method

.method public final e()V
    .locals 8

    iget-boolean v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->B:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->Q:I

    iget v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->I:I

    add-int v3, v1, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v0

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iget-object v7, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->l:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final f()V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->w:I

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->v:I

    iget-boolean v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->b0:Z

    iget-object v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->v:I

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->U:I

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->l(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->U:I

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->v:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->v:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->v:I

    int-to-double v4, v4

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->v:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->w:I

    return-void
.end method

.method public g(Ljava/util/Date;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->i(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c:Lm92;

    invoke-virtual {p0}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v2

    return p0

    :cond_0
    instance-of v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getToday()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getTodayItemPosition()I

    move-result p0

    return p0

    :cond_1
    instance-of v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c:Lm92;

    invoke-virtual {p0}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_2
    instance-of v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;

    if-eqz v1, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c:Lm92;

    invoke-virtual {p0}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->getMinimumYear()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_3
    const/high16 p1, -0x80000000

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move v1, p1

    :catchall_1
    :goto_0
    iget-object v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_6

    iget-object v5, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v3}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->c(I)Ljava/lang/String;

    move-result-object v5

    if-eq v1, p1, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v1, :cond_5

    move v4, v3

    goto :goto_2

    :cond_4
    invoke-static {v0, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v3

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v4
.end method

.method public final getA()Landroid/content/res/TypedArray;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->b:Landroid/content/res/TypedArray;

    return-object p0
.end method

.method public final getCurrentItemPosition()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    return p0
.end method

.method public final getCurrentLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k0:Ljava/util/Locale;

    return-object p0
.end method

.method public final getCurtainColor()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->D:I

    return p0
.end method

.method public final getDateHelper()Lm92;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c:Lm92;

    return-object p0
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final getIndicatorColor()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->C:I

    return p0
.end method

.method public final getIndicatorSize()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->B:I

    return p0
.end method

.method public final getItemAlign()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->G:I

    return p0
.end method

.method public getItemSpace()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->E:I

    return p0
.end method

.method public final getItemTextColor()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->x:I

    return p0
.end method

.method public final getItemTextSize()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->z:I

    return p0
.end method

.method public getLastScrollPosition()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f:I

    return p0
.end method

.method public getListener()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b<",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
            "TV;>;TV;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMaximumWidthText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaximumWidthTextPosition()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->U:I

    return p0
.end method

.method public final getSelectedItemPosition()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    return p0
.end method

.method public final getSelectedItemTextColor()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->y:I

    return p0
.end method

.method public final getShowOnlyFutureDate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h0:Z

    return p0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h:Landroid/graphics/Paint;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVisibleItemCount()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->s:I

    return p0
.end method

.method public final getWheelAdapter()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    return-object p0
.end method

.method public abstract h(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end method

.method public i(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k0:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public abstract k()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public final l(I)Z
    .locals 0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m()V
    .locals 2

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public n(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getListener()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b;

    return-void
.end method

.method public final o(I)V
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    if-eq p1, v0, :cond_0

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    iget v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Ljs6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljs6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$g;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$g;-><init>(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setAdapter(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;)V

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setDefault(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->u:I

    sub-int v4, v2, v3

    if-gtz v4, :cond_0

    goto/16 :goto_c

    :cond_0
    iget v4, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    neg-int v4, v4

    div-int/2addr v4, v2

    sub-int/2addr v4, v3

    iget v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    add-int/2addr v2, v4

    neg-int v3, v3

    :goto_0
    iget v5, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    add-int/2addr v5, v4

    iget v6, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->t:I

    add-int/2addr v5, v6

    iget-object v6, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->n:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h:Landroid/graphics/Paint;

    if-ge v2, v5, :cond_15

    iget-boolean v5, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f0:Z

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v5

    rem-int v8, v2, v5

    if-gez v8, :cond_1

    add-int/2addr v8, v5

    :cond_1
    iget-object v5, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->c(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->l(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->c(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string v5, ""

    :goto_1
    iget v8, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->x:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v8, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->S:I

    iget v9, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    mul-int v10, v3, v9

    add-int/2addr v10, v8

    iget v11, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    rem-int/2addr v11, v9

    add-int/2addr v11, v10

    iget-boolean v9, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g0:Z

    iget-object v12, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k:Landroid/graphics/Rect;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    iget-object v13, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->p:Landroid/graphics/Matrix;

    if-eqz v9, :cond_a

    move v9, v11

    int-to-double v10, v8

    sub-int/2addr v8, v9

    int-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    sub-double/2addr v10, v14

    iget v8, v12, Landroid/graphics/Rect;->top:I

    int-to-double v14, v8

    sub-double/2addr v10, v14

    mul-double v10, v10, v16

    iget v14, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->S:I

    sub-int v8, v14, v8

    move v15, v2

    move/from16 v18, v3

    int-to-double v2, v8

    div-double/2addr v10, v2

    double-to-float v2, v10

    if-le v9, v14, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    if-ge v9, v14, :cond_5

    const/4 v8, -0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v2

    neg-float v2, v10

    iget v10, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->F:I

    int-to-float v10, v10

    mul-float/2addr v2, v10

    int-to-float v8, v8

    mul-float/2addr v2, v8

    neg-float v8, v10

    cmpg-float v11, v2, v8

    if-gez v11, :cond_6

    move v2, v4

    move v10, v8

    goto :goto_4

    :cond_6
    cmpl-float v8, v2, v10

    if-lez v8, :cond_7

    :goto_3
    move v2, v4

    goto :goto_4

    :cond_7
    move v10, v2

    goto :goto_3

    :goto_4
    float-to-double v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->F:I

    int-to-float v4, v4

    move v11, v9

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    div-float/2addr v3, v4

    iget v4, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->J:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->P:I

    int-to-float v4, v4

    iget v8, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->G:I

    const/4 v14, 0x1

    if-eq v8, v14, :cond_9

    const/4 v9, 0x2

    if-eq v8, v9, :cond_8

    goto :goto_6

    :cond_8
    iget v4, v12, Landroid/graphics/Rect;->right:I

    :goto_5
    int-to-float v4, v4

    goto :goto_6

    :cond_9
    iget v4, v12, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :goto_6
    iget v8, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->Q:I

    int-to-float v8, v8

    sub-float/2addr v8, v3

    iget-object v9, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->o:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v9, v13}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    neg-float v14, v4

    move/from16 v19, v2

    neg-float v2, v8

    invoke-virtual {v13, v14, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v13, v4, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    float-to-int v10, v10

    int-to-float v10, v10

    move/from16 v20, v3

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->J:I

    move/from16 v22, v11

    move-object/from16 v21, v12

    int-to-double v11, v3

    move-wide/from16 v23, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->J:I

    move-wide/from16 v25, v10

    int-to-double v10, v3

    mul-double v10, v10, v25

    sub-double v11, v23, v10

    double-to-float v3, v11

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v3}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->q:Landroid/graphics/Matrix;

    invoke-virtual {v9, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    invoke-virtual {v3, v14, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v13, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_7

    :cond_a
    move v15, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v22, v11

    move-object/from16 v21, v12

    const/4 v10, 0x0

    move/from16 v20, v10

    :goto_7
    iget-boolean v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e0:Z

    if-eqz v2, :cond_c

    iget v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->S:I

    int-to-double v3, v2

    sub-int v2, v2, v22

    int-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v3, v8

    mul-double v3, v3, v16

    iget v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->S:I

    int-to-double v8, v2

    div-double/2addr v3, v8

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v8

    double-to-int v2, v3

    if-gez v2, :cond_b

    const/4 v12, 0x0

    goto :goto_8

    :cond_b
    move v12, v2

    :goto_8
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_c
    iget-boolean v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g0:Z

    if-eqz v2, :cond_d

    iget v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->S:I

    int-to-float v2, v2

    sub-float v2, v2, v20

    goto :goto_9

    :cond_d
    move/from16 v9, v22

    int-to-float v2, v9

    :goto_9
    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m0:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_10

    iget-object v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v3

    rem-int v4, v15, v3

    if-gez v4, :cond_e

    add-int/2addr v4, v3

    :cond_e
    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m0:I

    if-le v4, v3, :cond_f

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->A:I

    goto :goto_a

    :cond_f
    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->x:I

    :goto_a
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_10
    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->y:I

    const/4 v14, -0x1

    if-eq v3, v14, :cond_13

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g0:Z

    if-eqz v3, :cond_11

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_11
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->R:I

    int-to-float v3, v3

    invoke-virtual {v1, v5, v3, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->y:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g0:Z

    if-eqz v3, :cond_12

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_12
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->R:I

    int-to-float v3, v3

    invoke-virtual {v1, v5, v3, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :cond_13
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-boolean v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g0:Z

    if-eqz v3, :cond_14

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_14
    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->R:I

    int-to-float v3, v3

    invoke-virtual {v1, v5, v3, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_b
    add-int/lit8 v2, v15, 0x1

    add-int/lit8 v3, v18, 0x1

    move/from16 v4, v19

    goto/16 :goto_0

    :cond_15
    iget-boolean v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d0:Z

    if-eqz v2, :cond_16

    iget v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->D:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_16
    iget-boolean v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c0:Z

    if-eqz v2, :cond_17

    iget v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->C:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_17
    :goto_c
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->v:I

    iget v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->w:I

    iget v4, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->s:I

    mul-int/2addr v3, v4

    iget v5, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->E:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-boolean v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g0:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->F:I

    int-to-float v3, v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    float-to-double v5, v3

    iget v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->F:I

    int-to-double v7, v3

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    const-wide v9, 0x4056800000000000L    # 90.0

    div-double/2addr v7, v9

    div-double/2addr v5, v7

    int-to-double v3, v4

    mul-double/2addr v5, v3

    double-to-int v4, v5

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    const/high16 v2, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    int-to-double v5, v5

    int-to-double v7, p1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    double-to-int p1, v5

    goto :goto_0

    :cond_2
    move p1, v5

    :goto_0
    if-ne v1, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    int-to-double v0, v3

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p2, v0

    goto :goto_1

    :cond_4
    move p2, v3

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, v0

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->P:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->Q:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->J:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->s:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->I:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->a()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->i:Landroid/widget/Scroller;

    if-eqz v0, :cond_b

    const/4 v11, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v11, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    return v1

    :cond_2
    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->W:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->a0:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_3

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    rem-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->b(I)I

    move-result v0

    if-lez v0, :cond_3

    iput-boolean v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->i0:Z

    return v3

    :cond_3
    iput-boolean v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->i0:Z

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->V:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_4

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->V:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    iget-boolean v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->i0:Z

    if-eqz v0, :cond_7

    :goto_0
    return v3

    :cond_7
    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iput-boolean v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j0:Z

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int v6, p1

    int-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->O:I

    int-to-double v7, p1

    cmpl-double p1, v4, v7

    iget v4, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    if-lez p1, :cond_8

    iget v9, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->M:I

    iget v10, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->N:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget v3, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    rem-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->b(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_1

    :cond_8
    iget p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    rem-int p1, v4, p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->b(I)I

    move-result p1

    invoke-virtual {v2, v3, v4, v3, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    :goto_1
    iget-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f0:Z

    if-nez p1, :cond_a

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->N:I

    if-le p1, v0, :cond_9

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->M:I

    if-ge p1, v0, :cond_a

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->o0:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v11, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    return v1

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_c
    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    goto :goto_3

    :cond_d
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_3
    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j0:Z

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->V:I

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->W:I

    :cond_f
    :goto_4
    return v1
.end method

.method public final p()V
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->s:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->s:I

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->t:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->u:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Wheel\'s visible item count can not be less than 2!"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAtmospheric(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e0:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setCurtain(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d0:Z

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->a()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setCurtainColor(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->D:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setCurved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g0:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setCurvedMaxAngle(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->F:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f0:Z

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setDateHelper(Lm92;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c:Lm92;

    return-void
.end method

.method public final setDefaultDate(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lkx2;->b:Lkx2;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setSelectedItemPosition(I)V

    :cond_1
    iget p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->n(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e:Ljava/lang/Object;

    return-void
.end method

.method public final setIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c0:Z

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setIndicatorColor(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->C:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setIndicatorSize(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->B:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->e()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setItemAlign(I)V
    .locals 2

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->G:I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h:Landroid/graphics/Paint;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->c()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setItemSpace(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->E:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setItemTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->x:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setItemTextSize(I)V
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->z:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->z:I

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->z:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setLastScrollPosition(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f:I

    return-void
.end method

.method public setListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b<",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
            "TV;>;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final setMaxAvailableItemPosition(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m0:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaximumWidthText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_0
    const-string p0, "Maximum width text can not be null!"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final setMaximumWidthTextPosition(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->U:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result p0

    const-string v1, "Maximum width text Position must in [0, "

    const-string v2, "), but current is "

    invoke-static {p0, p1, v1, v2}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOnItemSelectedListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$c;)V
    .locals 0

    return-void
.end method

.method public final setOnWheelChangeListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$d;)V
    .locals 0

    return-void
.end method

.method public final setSameWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->b0:Z

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setSelectedItemTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->y:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->a()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setShowOnlyFutureDate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h0:Z

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->f()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setVisibleItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->s:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->p()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setWheelAdapter(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    return-void
.end method
