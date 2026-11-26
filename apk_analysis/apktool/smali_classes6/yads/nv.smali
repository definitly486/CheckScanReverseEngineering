.class public final Lyads/nv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zs2;
.implements Lyads/ez;


# static fields
.field public static final k:Lyads/dz;

.field public static final l:Lyads/qx4;


# instance fields
.field public final b:Lyads/ws2;

.field public final c:I

.field public final d:Lyads/vz2;

.field public final e:Landroid/util/SparseArray;

.field public f:Z

.field public g:Lyads/bs;

.field public h:J

.field public i:Lyads/sh5;

.field public j:[Lyads/vz2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lch;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/nv;->k:Lyads/dz;

    new-instance v0, Lyads/qx4;

    invoke-direct {v0}, Lyads/qx4;-><init>()V

    sput-object v0, Lyads/nv;->l:Lyads/qx4;

    return-void
.end method

.method public constructor <init>(Lyads/ws2;ILyads/vz2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nv;->b:Lyads/ws2;

    iput p2, p0, Lyads/nv;->c:I

    iput-object p3, p0, Lyads/nv;->d:Lyads/vz2;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lyads/nv;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(ILyads/vz2;ZLjava/util/List;Lyads/k06;Lyads/rw4;)Lyads/ez;
    .locals 1

    .line 125
    iget-object p5, p1, Lyads/vz2;->l:Ljava/lang/String;

    .line 126
    invoke-static {p5}, Lyads/z84;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p5, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    const-string v0, "video/webm"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    const-string v0, "audio/webm"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 129
    const-string v0, "application/webm"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    const-string v0, "video/x-matroska"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 131
    const-string v0, "audio/x-matroska"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 132
    const-string v0, "application/x-matroska"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const/4 p2, 0x4

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 133
    :goto_1
    new-instance p5, Lyads/f03;

    invoke-direct {p5, p2, p3, p4}, Lyads/f03;-><init>(ILjava/util/List;Lyads/k06;)V

    goto :goto_3

    .line 134
    :cond_4
    :goto_2
    new-instance p5, Lyads/mx3;

    const/4 p2, 0x1

    invoke-direct {p5, p2}, Lyads/mx3;-><init>(I)V

    .line 135
    :goto_3
    new-instance p2, Lyads/nv;

    invoke-direct {p2, p5, p0, p1}, Lyads/nv;-><init>(Lyads/ws2;ILyads/vz2;)V

    return-object p2
.end method


# virtual methods
.method public final a(II)Lyads/k06;
    .locals 5

    .line 136
    iget-object v0, p0, Lyads/nv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/mv;

    if-nez v0, :cond_6

    .line 137
    iget-object v0, p0, Lyads/nv;->j:[Lyads/vz2;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 138
    new-instance v0, Lyads/mv;

    .line 139
    iget v2, p0, Lyads/nv;->c:I

    if-ne p2, v2, :cond_0

    iget-object v1, p0, Lyads/nv;->d:Lyads/vz2;

    :cond_0
    invoke-direct {v0, p1, p2, v1}, Lyads/mv;-><init>(IILyads/vz2;)V

    .line 140
    iget-object v1, p0, Lyads/nv;->g:Lyads/bs;

    iget-wide v2, p0, Lyads/nv;->h:J

    if-nez v1, :cond_1

    .line 141
    iget-object p2, v0, Lyads/mv;->c:Lyads/cm2;

    iput-object p2, v0, Lyads/mv;->e:Lyads/k06;

    goto :goto_2

    .line 142
    :cond_1
    iput-wide v2, v0, Lyads/mv;->f:J

    const/4 v2, 0x0

    .line 143
    :goto_0
    iget-object v3, v1, Lyads/bs;->a:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 144
    aget v3, v3, v2

    if-ne p2, v3, :cond_2

    .line 145
    iget-object p2, v1, Lyads/bs;->b:[Lyads/lc5;

    aget-object p2, p2, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched track of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "BaseMediaChunkOutput"

    invoke-static {v1, p2}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance p2, Lyads/cm2;

    invoke-direct {p2}, Lyads/cm2;-><init>()V

    .line 148
    :goto_1
    iput-object p2, v0, Lyads/mv;->e:Lyads/k06;

    .line 149
    iget-object v1, v0, Lyads/mv;->d:Lyads/vz2;

    if-eqz v1, :cond_4

    .line 150
    invoke-interface {p2, v1}, Lyads/k06;->a(Lyads/vz2;)V

    .line 151
    :cond_4
    :goto_2
    iget-object p0, p0, Lyads/nv;->e:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 152
    :cond_5
    invoke-static {}, Lud;->g()V

    return-object v1

    :cond_6
    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 153
    iget-object v0, p0, Lyads/nv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lyads/vz2;

    const/4 v1, 0x0

    .line 154
    :goto_0
    iget-object v2, p0, Lyads/nv;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 155
    iget-object v2, p0, Lyads/nv;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/mv;

    iget-object v2, v2, Lyads/mv;->d:Lyads/vz2;

    if-eqz v2, :cond_0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    .line 157
    :cond_1
    iput-object v0, p0, Lyads/nv;->j:[Lyads/vz2;

    return-void
.end method

.method public final a(Lyads/bs;JJ)V
    .locals 6

    iput-object p1, p0, Lyads/nv;->g:Lyads/bs;

    iput-wide p4, p0, Lyads/nv;->h:J

    iget-boolean v0, p0, Lyads/nv;->f:Z

    iget-object v1, p0, Lyads/nv;->b:Lyads/ws2;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    if-nez v0, :cond_1

    invoke-interface {v1, p0}, Lyads/ws2;->a(Lyads/zs2;)V

    cmp-long p1, p2, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/nv;->b:Lyads/ws2;

    invoke-interface {p1, v4, v5, p2, p3}, Lyads/ws2;->a(JJ)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/nv;->f:Z

    return-void

    :cond_1
    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    move-wide p2, v4

    :cond_2
    invoke-interface {v1, v4, v5, p2, p3}, Lyads/ws2;->a(JJ)V

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    iget-object v0, p0, Lyads/nv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    iget-object v0, p0, Lyads/nv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/mv;

    if-nez p1, :cond_3

    iget-object v1, v0, Lyads/mv;->c:Lyads/cm2;

    iput-object v1, v0, Lyads/mv;->e:Lyads/k06;

    goto :goto_3

    :cond_3
    iput-wide p4, v0, Lyads/mv;->f:J

    iget v1, v0, Lyads/mv;->a:I

    move v2, p2

    :goto_1
    iget-object v3, p1, Lyads/bs;->a:[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    aget v3, v3, v2

    if-ne v1, v3, :cond_4

    iget-object v1, p1, Lyads/bs;->b:[Lyads/lc5;

    aget-object v1, v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unmatched track of type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMediaChunkOutput"

    invoke-static {v2, v1}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lyads/cm2;

    invoke-direct {v1}, Lyads/cm2;-><init>()V

    :goto_2
    iput-object v1, v0, Lyads/mv;->e:Lyads/k06;

    iget-object v0, v0, Lyads/mv;->d:Lyads/vz2;

    if-eqz v0, :cond_6

    invoke-interface {v1, v0}, Lyads/k06;->a(Lyads/vz2;)V

    :cond_6
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final a(Lyads/sh5;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lyads/nv;->i:Lyads/sh5;

    return-void
.end method

.method public final b()Lyads/gz;
    .locals 1

    iget-object p0, p0, Lyads/nv;->i:Lyads/sh5;

    instance-of v0, p0, Lyads/gz;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/gz;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lyads/nv;->b:Lyads/ws2;

    invoke-interface {p0}, Lyads/ws2;->release()V

    return-void
.end method
