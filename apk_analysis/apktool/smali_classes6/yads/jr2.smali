.class public final Lyads/jr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nt5;


# instance fields
.field public final a:Lyads/qt5;

.field public final b:Ljava/util/ArrayDeque;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/qt5;

    invoke-direct {v0}, Lyads/qt5;-><init>()V

    iput-object v0, p0, Lyads/jr2;->a:Lyads/qt5;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lyads/jr2;->b:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lyads/jr2;->b:Ljava/util/ArrayDeque;

    new-instance v3, Lyads/hr2;

    invoke-direct {v3, p0}, Lyads/hr2;-><init>(Lyads/jr2;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lyads/jr2;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lyads/rt5;
    .locals 8

    iget-boolean v0, p0, Lyads/jr2;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget v0, p0, Lyads/jr2;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lyads/jr2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lyads/jr2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/rt5;

    iget-object v1, p0, Lyads/jr2;->a:Lyads/qt5;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lyads/ev;->b(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v1, v0, Lyads/ev;->b:I

    or-int/2addr v1, v2

    iput v1, v0, Lyads/ev;->b:I

    goto :goto_0

    :cond_1
    new-instance v1, Lyads/ir2;

    iget-object v2, p0, Lyads/jr2;->a:Lyads/qt5;

    iget-wide v4, v2, Lyads/mi0;->f:J

    iget-object v2, v2, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    const-string v6, "c"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lyads/sb0;->t:Lyads/jv;

    invoke-static {v6, v2}, Lyads/lv;->a(Lyads/jv;Ljava/util/ArrayList;)Lyads/k55;

    move-result-object v2

    invoke-direct {v1, v4, v5, v2}, Lyads/ir2;-><init>(JLyads/k55;)V

    iget-object v2, p0, Lyads/jr2;->a:Lyads/qt5;

    iget-wide v4, v2, Lyads/mi0;->f:J

    iput-wide v4, v0, Lyads/rt5;->c:J

    iput-object v1, v0, Lyads/rt5;->d:Lyads/mt5;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lyads/rt5;->e:J

    :goto_0
    iget-object v1, p0, Lyads/jr2;->a:Lyads/qt5;

    invoke-virtual {v1}, Lyads/mi0;->b()V

    iput v3, p0, Lyads/jr2;->c:I

    return-object v0

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    invoke-static {}, Lud;->g()V

    return-object v1
.end method

.method public final a(J)V
    .locals 0

    .line 132
    return-void
.end method

.method public final a(Lyads/qt5;)V
    .locals 2

    .line 125
    iget-boolean v0, p0, Lyads/jr2;->d:Z

    if-nez v0, :cond_2

    .line 126
    iget v0, p0, Lyads/jr2;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lyads/jr2;->a:Lyads/qt5;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x2

    .line 128
    iput p1, p0, Lyads/jr2;->c:I

    return-void

    .line 129
    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-void

    .line 130
    :cond_1
    invoke-static {}, Lud;->g()V

    return-void

    .line 131
    :cond_2
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/rt5;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lyads/jr2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lyads/jr2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 135
    iput v0, p1, Lyads/ev;->b:I

    const/4 v0, 0x0

    .line 136
    iput-object v0, p1, Lyads/rt5;->d:Lyads/mt5;

    .line 137
    iget-object p0, p0, Lyads/jr2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void

    .line 138
    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-void

    .line 139
    :cond_1
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lyads/jr2;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lyads/jr2;->c:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lyads/jr2;->c:I

    iget-object p0, p0, Lyads/jr2;->a:Lyads/qt5;

    return-object p0

    :cond_1
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lyads/jr2;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/jr2;->a:Lyads/qt5;

    invoke-virtual {v0}, Lyads/mi0;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/jr2;->c:I

    return-void

    :cond_0
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/jr2;->d:Z

    return-void
.end method
