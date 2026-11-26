.class public Lru/tinkoff/decoro/MaskImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/tinkoff/decoro/Mask;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/tinkoff/decoro/MaskImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Z

.field public c:Ljava/lang/Character;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lru/tinkoff/decoro/SlotsList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/tinkoff/decoro/MaskImpl$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lru/tinkoff/decoro/MaskImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lru/tinkoff/decoro/MaskImpl;)V
    .locals 4

    iget-boolean v0, p1, Lru/tinkoff/decoro/MaskImpl;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lru/tinkoff/decoro/MaskImpl;->g:Z

    iput-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->b:Z

    iget-object v0, p1, Lru/tinkoff/decoro/MaskImpl;->c:Ljava/lang/Character;

    iput-object v0, p0, Lru/tinkoff/decoro/MaskImpl;->c:Ljava/lang/Character;

    iget-boolean v0, p1, Lru/tinkoff/decoro/MaskImpl;->d:Z

    iput-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->d:Z

    iget-boolean v0, p1, Lru/tinkoff/decoro/MaskImpl;->e:Z

    iput-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->e:Z

    iget-boolean v0, p1, Lru/tinkoff/decoro/MaskImpl;->f:Z

    iput-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->f:Z

    iget-boolean v0, p1, Lru/tinkoff/decoro/MaskImpl;->g:Z

    iput-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->g:Z

    new-instance v0, Lru/tinkoff/decoro/SlotsList;

    iget-object p1, p1, Lru/tinkoff/decoro/MaskImpl;->h:Lru/tinkoff/decoro/SlotsList;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lru/tinkoff/decoro/SlotsList;->b:I

    iget v1, p1, Lru/tinkoff/decoro/SlotsList;->b:I

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lru/tinkoff/decoro/SlotsList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    move-object v2, p1

    check-cast v2, Lru/tinkoff/decoro/SlotsList$b;

    invoke-virtual {v2}, Lru/tinkoff/decoro/SlotsList$b;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lru/tinkoff/decoro/SlotsList$b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/tinkoff/decoro/slots/Slot;

    new-instance v3, Lru/tinkoff/decoro/slots/Slot;

    invoke-direct {v3, v2}, Lru/tinkoff/decoro/slots/Slot;-><init>(Lru/tinkoff/decoro/slots/Slot;)V

    iget v2, v0, Lru/tinkoff/decoro/SlotsList;->b:I

    if-nez v2, :cond_1

    iput-object v3, v0, Lru/tinkoff/decoro/SlotsList;->c:Lru/tinkoff/decoro/slots/Slot;

    goto :goto_1

    :cond_1
    iput-object v3, v1, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    iput-object v1, v3, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lru/tinkoff/decoro/SlotsList;->b:I

    move-object v1, v3

    goto :goto_0

    :cond_2
    iput-object v1, v0, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    :goto_2
    iput-object v0, p0, Lru/tinkoff/decoro/MaskImpl;->h:Lru/tinkoff/decoro/SlotsList;

    return-void
.end method

.method public static a([Lru/tinkoff/decoro/slots/Slot;)Lru/tinkoff/decoro/MaskImpl;
    .locals 3

    new-instance v0, Lru/tinkoff/decoro/MaskImpl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lru/tinkoff/decoro/MaskImpl;->g:Z

    iput-boolean v1, v0, Lru/tinkoff/decoro/MaskImpl;->b:Z

    new-instance v1, Lru/tinkoff/decoro/SlotsList;

    invoke-direct {v1}, Lru/tinkoff/decoro/SlotsList;-><init>()V

    array-length v2, p0

    iput v2, v1, Lru/tinkoff/decoro/SlotsList;->b:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lru/tinkoff/decoro/SlotsList;->c([Lru/tinkoff/decoro/slots/Slot;Lru/tinkoff/decoro/SlotsList;)V

    :goto_0
    iput-object v1, v0, Lru/tinkoff/decoro/MaskImpl;->h:Lru/tinkoff/decoro/SlotsList;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 2

    iget-object p0, p0, Lru/tinkoff/decoro/MaskImpl;->h:Lru/tinkoff/decoro/SlotsList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    iget-object v1, p0, Lru/tinkoff/decoro/slots/Slot;->c:Ljava/lang/Character;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final d(ILjava/lang/CharSequence;)I
    .locals 13

    iget-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->b:Z

    const v1, -0x24883

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lru/tinkoff/decoro/MaskImpl;->h:Lru/tinkoff/decoro/SlotsList;

    iget v3, v2, Lru/tinkoff/decoro/SlotsList;->b:I

    if-nez v3, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-virtual {v2, p1}, Lru/tinkoff/decoro/SlotsList;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz p2, :cond_1c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_e

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lru/tinkoff/decoro/MaskImpl;->g:Z

    invoke-virtual {v2, p1}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object v4

    iget-boolean v5, p0, Lru/tinkoff/decoro/MaskImpl;->e:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    if-eqz v4, :cond_4

    move-object v5, v4

    :cond_2
    iget-object v7, v5, Lru/tinkoff/decoro/slots/Slot;->e:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5}, Lru/tinkoff/decoro/slots/Slot;->f()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v5, Lru/tinkoff/decoro/slots/Slot;->c:Ljava/lang/Character;

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, v5, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    if-nez v5, :cond_2

    goto/16 :goto_e

    :cond_4
    const-string p0, "first slot is null"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v6

    :cond_5
    :goto_0
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayDeque;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_1
    if-ltz v7, :cond_6

    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v7

    move-object v8, v4

    move v9, v6

    move v10, v9

    :goto_3
    if-eqz v8, :cond_c

    iget-object v11, v8, Lru/tinkoff/decoro/slots/Slot;->d:Lbc9;

    if-nez v11, :cond_7

    move v11, v7

    goto :goto_4

    :cond_7
    invoke-interface {v11}, Lbc9;->h()Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v11

    :goto_4
    invoke-virtual {v8}, Lru/tinkoff/decoro/slots/Slot;->f()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v8, Lru/tinkoff/decoro/slots/Slot;->c:Ljava/lang/Character;

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_6

    :cond_8
    iget-object v12, v8, Lru/tinkoff/decoro/slots/Slot;->f:Lru/tinkoff/decoro/slots/b;

    if-eqz v12, :cond_a

    invoke-virtual {v12, v11}, Lru/tinkoff/decoro/slots/b;->l(C)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_5

    :cond_9
    move v11, v6

    goto :goto_6

    :cond_a
    :goto_5
    move v11, v3

    :goto_6
    if-nez v11, :cond_c

    if-nez v9, :cond_b

    invoke-virtual {v8}, Lru/tinkoff/decoro/slots/Slot;->f()Z

    move-result v11

    if-nez v11, :cond_b

    move v9, v3

    :cond_b
    iget-object v8, v8, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_c
    iget-boolean v7, p0, Lru/tinkoff/decoro/MaskImpl;->d:Z

    if-nez v7, :cond_d

    if-eqz v9, :cond_d

    goto :goto_2

    :cond_d
    add-int/2addr p1, v10

    invoke-virtual {v2, p1}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object v7

    if-eqz v7, :cond_6

    if-lez v10, :cond_e

    move v4, v3

    goto :goto_7

    :cond_e
    move v4, v6

    :goto_7
    invoke-virtual {v7, v6, p2, v4}, Lru/tinkoff/decoro/slots/Slot;->m(ILjava/lang/Character;Z)I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {v2, p2}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object p1

    if-nez v0, :cond_16

    iget-object v4, v2, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    move v7, v6

    :goto_8
    if-eqz v4, :cond_f

    iget-object v8, v4, Lru/tinkoff/decoro/slots/Slot;->c:Ljava/lang/Character;

    if-nez v8, :cond_f

    add-int/lit8 v7, v7, 0x1

    iget-object v4, v4, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    goto :goto_8

    :cond_f
    if-ge v7, v3, :cond_16

    if-nez v0, :cond_16

    move v4, v3

    :goto_9
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_16

    iget v7, v2, Lru/tinkoff/decoro/SlotsList;->b:I

    iget-object v8, v2, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    if-ltz v7, :cond_15

    new-instance v9, Lru/tinkoff/decoro/slots/Slot;

    invoke-direct {v9, v8}, Lru/tinkoff/decoro/slots/Slot;-><init>(Lru/tinkoff/decoro/slots/Slot;)V

    invoke-virtual {v2, v7}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object v8

    const/4 v10, 0x0

    if-nez v8, :cond_10

    iget-object v8, v2, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    move-object v11, v8

    move-object v8, v10

    goto :goto_a

    :cond_10
    iget-object v11, v8, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    :goto_a
    iput-object v8, v9, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    iput-object v11, v9, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    if-eqz v8, :cond_11

    iput-object v9, v8, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    :cond_11
    if-eqz v11, :cond_12

    iput-object v9, v11, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    :cond_12
    if-nez v7, :cond_13

    iput-object v9, v2, Lru/tinkoff/decoro/SlotsList;->c:Lru/tinkoff/decoro/slots/Slot;

    goto :goto_b

    :cond_13
    iget v8, v2, Lru/tinkoff/decoro/SlotsList;->b:I

    if-ne v7, v8, :cond_14

    iput-object v9, v2, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    :cond_14
    :goto_b
    iget v7, v2, Lru/tinkoff/decoro/SlotsList;->b:I

    add-int/2addr v7, v3

    iput v7, v2, Lru/tinkoff/decoro/SlotsList;->b:I

    invoke-virtual {v9, v6, v10, v6}, Lru/tinkoff/decoro/slots/Slot;->m(ILjava/lang/Character;Z)I

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Lru/tinkoff/decoro/slots/Slot;->n([Ljava/lang/Integer;)V

    goto :goto_9

    :cond_15
    const-string p0, "New slot position should be inside the slots list. Or on the tail (position = size)"

    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)V

    return v6

    :cond_16
    move-object v4, p1

    move p1, p2

    goto/16 :goto_2

    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4, v6}, Lru/tinkoff/decoro/slots/Slot;->i(I)I

    move-result p2

    goto :goto_c

    :cond_18
    move p2, v6

    :goto_c
    if-lez p2, :cond_19

    add-int/2addr p1, p2

    :cond_19
    invoke-virtual {v2, p1}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object p2

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Lru/tinkoff/decoro/slots/Slot;->d()Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_d

    :cond_1a
    move v3, v6

    :cond_1b
    :goto_d
    iput-boolean v3, p0, Lru/tinkoff/decoro/MaskImpl;->g:Z

    :cond_1c
    :goto_e
    return p1
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f(IIZ)I
    .locals 9

    iget-object v0, p0, Lru/tinkoff/decoro/MaskImpl;->h:Lru/tinkoff/decoro/SlotsList;

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v2, p2, :cond_2

    invoke-virtual {v0, v3}, Lru/tinkoff/decoro/SlotsList;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lru/tinkoff/decoro/slots/Slot;->f()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p3, :cond_1

    if-ne p2, v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v5, v1, v4, v1}, Lru/tinkoff/decoro/slots/Slot;->m(ILjava/lang/Character;Z)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v3, v4

    iget-boolean p3, p0, Lru/tinkoff/decoro/MaskImpl;->b:Z

    if-nez p3, :cond_9

    iget p3, v0, Lru/tinkoff/decoro/SlotsList;->b:I

    if-nez p3, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p3, v0, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    iget-object v2, p3, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    :goto_1
    const v5, -0x24883

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p3, Lru/tinkoff/decoro/slots/Slot;->e:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v2, Lru/tinkoff/decoro/slots/Slot;->e:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object p3, p3, Lru/tinkoff/decoro/slots/Slot;->c:Ljava/lang/Character;

    if-nez p3, :cond_9

    iget-object p3, v2, Lru/tinkoff/decoro/slots/Slot;->c:Ljava/lang/Character;

    if-nez p3, :cond_9

    iget p3, v0, Lru/tinkoff/decoro/SlotsList;->b:I

    sub-int/2addr p3, v4

    invoke-virtual {v0, p3}, Lru/tinkoff/decoro/SlotsList;->a(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0, p3}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {v0}, Lru/tinkoff/decoro/SlotsList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    move-object v6, v5

    check-cast v6, Lru/tinkoff/decoro/SlotsList$b;

    invoke-virtual {v6}, Lru/tinkoff/decoro/SlotsList$b;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lru/tinkoff/decoro/SlotsList$b;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/tinkoff/decoro/slots/Slot;

    if-ne v6, p3, :cond_4

    iget-object v5, p3, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    iget-object p3, p3, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    if-eqz v5, :cond_5

    iput-object p3, v5, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    goto :goto_2

    :cond_5
    iput-object p3, v0, Lru/tinkoff/decoro/SlotsList;->c:Lru/tinkoff/decoro/slots/Slot;

    :goto_2
    if-eqz p3, :cond_6

    iput-object v5, p3, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    goto :goto_3

    :cond_6
    iput-object v5, v0, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    :goto_3
    iget p3, v0, Lru/tinkoff/decoro/SlotsList;->b:I

    sub-int/2addr p3, v4

    iput p3, v0, Lru/tinkoff/decoro/SlotsList;->b:I

    :cond_7
    iget-object p3, v2, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    move-object v8, v2

    move-object v2, p3

    move-object p3, v8

    goto :goto_1

    :cond_8
    const-string p0, "Slot position should be inside the slots list"

    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)V

    return v1

    :cond_9
    :goto_4
    move p3, v3

    :goto_5
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lru/tinkoff/decoro/slots/Slot;->f()Z

    move-result v5

    if-eqz v5, :cond_b

    if-gtz v2, :cond_a

    goto :goto_6

    :cond_a
    move p3, v2

    goto :goto_5

    :cond_b
    :goto_6
    if-gtz v2, :cond_c

    iget-boolean v5, p0, Lru/tinkoff/decoro/MaskImpl;->f:Z

    if-nez v5, :cond_c

    move v5, v4

    goto :goto_7

    :cond_c
    move v5, v1

    :goto_7
    iput-boolean v5, p0, Lru/tinkoff/decoro/MaskImpl;->g:Z

    if-lez v2, :cond_e

    invoke-virtual {v0, p1}, Lru/tinkoff/decoro/SlotsList;->a(I)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v0, p1}, Lru/tinkoff/decoro/SlotsList;->b(I)Lru/tinkoff/decoro/slots/Slot;

    move-result-object p0

    invoke-virtual {p0}, Lru/tinkoff/decoro/slots/Slot;->f()Z

    move-result p0

    if-eqz p0, :cond_d

    if-ne p2, v4, :cond_d

    move v3, v2

    goto :goto_8

    :cond_d
    move v3, p3

    :cond_e
    :goto_8
    if-ltz v3, :cond_f

    iget p0, v0, Lru/tinkoff/decoro/SlotsList;->b:I

    if-gt v3, p0, :cond_f

    return v3

    :cond_f
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lru/tinkoff/decoro/slots/Slot;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lru/tinkoff/decoro/MaskImpl;->h:Lru/tinkoff/decoro/SlotsList;

    invoke-virtual {p0}, Lru/tinkoff/decoro/SlotsList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lru/tinkoff/decoro/MaskImpl;->h:Lru/tinkoff/decoro/SlotsList;

    iget v1, v0, Lru/tinkoff/decoro/SlotsList;->b:I

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v1, v0, Lru/tinkoff/decoro/SlotsList;->c:Lru/tinkoff/decoro/slots/Slot;

    iget-boolean v2, p0, Lru/tinkoff/decoro/MaskImpl;->d:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-eqz v1, :cond_6

    iget-object v6, v1, Lru/tinkoff/decoro/slots/Slot;->c:Ljava/lang/Character;

    invoke-virtual {v1}, Lru/tinkoff/decoro/slots/Slot;->d()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v2, :cond_1

    iget-boolean v8, p0, Lru/tinkoff/decoro/MaskImpl;->g:Z

    if-eqz v8, :cond_6

    invoke-virtual {v1, v4}, Lru/tinkoff/decoro/slots/Slot;->i(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v5

    invoke-virtual {v0, v8}, Lru/tinkoff/decoro/SlotsList;->a(I)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    if-nez v6, :cond_4

    if-nez v2, :cond_2

    if-eqz v7, :cond_4

    :cond_2
    iget-object v6, p0, Lru/tinkoff/decoro/MaskImpl;->c:Ljava/lang/Character;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    goto :goto_1

    :cond_3
    const/16 v6, 0x5f

    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->b:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lru/tinkoff/decoro/MaskImpl;->c:Ljava/lang/Character;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->d:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->e:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->f:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lru/tinkoff/decoro/MaskImpl;->g:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Lru/tinkoff/decoro/MaskImpl;->h:Lru/tinkoff/decoro/SlotsList;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
