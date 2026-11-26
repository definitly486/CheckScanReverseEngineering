.class public abstract Lyads/f;
.super Lyads/kx5;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Lyads/ik5;


# direct methods
.method public constructor <init>(Lyads/ik5;)V
    .locals 0

    invoke-direct {p0}, Lyads/kx5;-><init>()V

    iput-object p1, p0, Lyads/f;->d:Lyads/ik5;

    iget-object p1, p1, Lyads/ik5;->b:[I

    array-length p1, p1

    iput p1, p0, Lyads/f;->c:I

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(II)I
    .locals 7

    move-object v0, p0

    check-cast v0, Lyads/hx4;

    iget-object v1, v0, Lyads/hx4;->h:[I

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lyads/u56;->a([IIZZ)I

    move-result v1

    iget-object v2, v0, Lyads/hx4;->h:[I

    aget v2, v2, v1

    iget-object v4, v0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v4, v4, v1

    sub-int/2addr p1, v2

    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, p2

    :goto_0
    invoke-virtual {v4, p1, v6}, Lyads/kx5;->a(II)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    add-int/2addr v2, p1

    return v2

    :cond_1
    invoke-virtual {p0, v1, v3}, Lyads/f;->b(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v4, :cond_2

    iget-object v1, v0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v3}, Lyads/f;->b(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v4, :cond_3

    iget-object p0, v0, Lyads/hx4;->h:[I

    aget p0, p0, p1

    iget-object p2, v0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object p1, p2, p1

    invoke-virtual {p1, v3}, Lyads/kx5;->b(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_3
    if-ne p2, v5, :cond_4

    invoke-virtual {p0, v3}, Lyads/f;->b(Z)I

    move-result p0

    return p0

    :cond_4
    return v4
.end method

.method public final a(IIZ)I
    .locals 6

    .line 82
    move-object v0, p0

    check-cast v0, Lyads/hx4;

    .line 83
    iget-object v1, v0, Lyads/hx4;->h:[I

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lyads/u56;->a([IIZZ)I

    move-result v1

    .line 84
    iget-object v2, v0, Lyads/hx4;->h:[I

    aget v2, v2, v1

    .line 85
    iget-object v4, v0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v4, v4, v1

    sub-int/2addr p1, v2

    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, p2

    .line 86
    :goto_0
    invoke-virtual {v4, p1, v3, p3}, Lyads/kx5;->a(IIZ)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    add-int/2addr v2, p1

    return v2

    .line 87
    :cond_1
    invoke-virtual {p0, v1, p3}, Lyads/f;->a(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v3, :cond_2

    .line 88
    iget-object v1, v0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v1, v1, p1

    .line 89
    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p0, p1, p3}, Lyads/f;->a(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v3, :cond_3

    .line 91
    iget-object p0, v0, Lyads/hx4;->h:[I

    aget p0, p0, p1

    .line 92
    iget-object p2, v0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object p1, p2, p1

    .line 93
    invoke-virtual {p1, p3}, Lyads/kx5;->a(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_3
    if-ne p2, v5, :cond_4

    .line 94
    invoke-virtual {p0, p3}, Lyads/f;->a(Z)I

    move-result p0

    return p0

    :cond_4
    return v3
.end method

.method public final a(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 157
    iget-object p0, p0, Lyads/f;->d:Lyads/ik5;

    .line 158
    iget-object p2, p0, Lyads/ik5;->c:[I

    .line 159
    aget p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    .line 160
    iget-object p0, p0, Lyads/ik5;->b:[I

    array-length p2, p0

    if-ge p1, p2, :cond_1

    aget p0, p0, p1

    return p0

    .line 161
    :cond_0
    iget p0, p0, Lyads/f;->c:I

    add-int/lit8 p0, p0, -0x1

    if-ge p1, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 3

    .line 141
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 143
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 144
    check-cast p0, Lyads/hx4;

    .line 145
    iget-object v2, p0, Lyads/hx4;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    return v1

    .line 147
    :cond_2
    iget-object v2, p0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v2, v2, v0

    .line 148
    invoke-virtual {v2, p1}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_3

    return v1

    .line 149
    :cond_3
    iget-object p0, p0, Lyads/hx4;->g:[I

    aget p0, p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public final a(Z)I
    .locals 4

    .line 105
    iget v0, p0, Lyads/f;->c:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 106
    iget-object v2, p0, Lyads/f;->d:Lyads/ik5;

    .line 107
    iget-object v2, v2, Lyads/ik5;->b:[I

    .line 108
    array-length v3, v2

    if-lez v3, :cond_1

    aget v0, v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 109
    :cond_2
    :goto_0
    move-object v2, p0

    check-cast v2, Lyads/hx4;

    .line 110
    iget-object v3, v2, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v3, v3, v0

    .line 111
    invoke-virtual {v3}, Lyads/kx5;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {p0, v0, p1}, Lyads/f;->a(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 113
    :cond_3
    iget-object p0, v2, Lyads/hx4;->h:[I

    aget p0, p0, v0

    .line 114
    iget-object v1, v2, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v0, v1, v0

    .line 115
    invoke-virtual {v0, p1}, Lyads/kx5;->a(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 3

    .line 150
    check-cast p0, Lyads/hx4;

    .line 151
    iget-object v0, p0, Lyads/hx4;->g:[I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lyads/u56;->a([IIZZ)I

    move-result v0

    .line 152
    iget-object v1, p0, Lyads/hx4;->g:[I

    aget v1, v1, v0

    .line 153
    iget-object v2, p0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v2, v2, v0

    sub-int/2addr p1, v1

    .line 154
    invoke-virtual {v2, p1}, Lyads/kx5;->a(I)Ljava/lang/Object;

    move-result-object p1

    .line 155
    iget-object p0, p0, Lyads/hx4;->j:[Ljava/lang/Object;

    aget-object p0, p0, v0

    .line 156
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final a(ILyads/hx5;Z)Lyads/hx5;
    .locals 4

    .line 129
    check-cast p0, Lyads/hx4;

    .line 130
    iget-object v0, p0, Lyads/hx4;->g:[I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lyads/u56;->a([IIZZ)I

    move-result v0

    .line 131
    iget-object v1, p0, Lyads/hx4;->h:[I

    aget v1, v1, v0

    .line 132
    iget-object v2, p0, Lyads/hx4;->g:[I

    aget v2, v2, v0

    .line 133
    iget-object v3, p0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v3, v3, v0

    sub-int/2addr p1, v2

    .line 134
    invoke-virtual {v3, p1, p2, p3}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    .line 135
    iget p1, p2, Lyads/hx5;->d:I

    add-int/2addr p1, v1

    iput p1, p2, Lyads/hx5;->d:I

    if-eqz p3, :cond_0

    .line 136
    iget-object p0, p0, Lyads/hx4;->j:[Ljava/lang/Object;

    aget-object p0, p0, v0

    .line 137
    iget-object p1, p2, Lyads/hx5;->c:Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 140
    iput-object p0, p2, Lyads/hx5;->c:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;
    .locals 3

    .line 95
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 96
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 97
    check-cast p0, Lyads/hx4;

    .line 98
    iget-object v2, p0, Lyads/hx4;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    :goto_0
    iget-object v2, p0, Lyads/hx4;->h:[I

    aget v2, v2, v1

    .line 101
    iget-object p0, p0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object p0, p0, v1

    .line 102
    invoke-virtual {p0, v0, p2}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 103
    iget p0, p2, Lyads/hx5;->d:I

    add-int/2addr p0, v2

    iput p0, p2, Lyads/hx5;->d:I

    .line 104
    iput-object p1, p2, Lyads/hx5;->c:Ljava/lang/Object;

    return-object p2
.end method

.method public final a(ILyads/jx5;J)Lyads/jx5;
    .locals 4

    .line 116
    check-cast p0, Lyads/hx4;

    .line 117
    iget-object v0, p0, Lyads/hx4;->h:[I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lyads/u56;->a([IIZZ)I

    move-result v0

    .line 118
    iget-object v1, p0, Lyads/hx4;->h:[I

    aget v1, v1, v0

    .line 119
    iget-object v2, p0, Lyads/hx4;->g:[I

    aget v2, v2, v0

    .line 120
    iget-object v3, p0, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v3, v3, v0

    sub-int/2addr p1, v1

    .line 121
    invoke-virtual {v3, p1, p2, p3, p4}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    .line 122
    iget-object p0, p0, Lyads/hx4;->j:[Ljava/lang/Object;

    aget-object p0, p0, v0

    .line 123
    sget-object p1, Lyads/jx5;->s:Ljava/lang/Object;

    iget-object p3, p2, Lyads/jx5;->b:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p2, Lyads/jx5;->b:Ljava/lang/Object;

    .line 125
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 126
    :goto_0
    iput-object p0, p2, Lyads/jx5;->b:Ljava/lang/Object;

    .line 127
    iget p0, p2, Lyads/jx5;->p:I

    add-int/2addr p0, v2

    iput p0, p2, Lyads/jx5;->p:I

    .line 128
    iget p0, p2, Lyads/jx5;->q:I

    add-int/2addr p0, v2

    iput p0, p2, Lyads/jx5;->q:I

    return-object p2
.end method

.method public final b(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 60
    iget-object p0, p0, Lyads/f;->d:Lyads/ik5;

    .line 61
    iget-object p2, p0, Lyads/ik5;->c:[I

    .line 62
    aget p1, p2, p1

    add-int/2addr p1, v0

    if-ltz p1, :cond_1

    .line 63
    iget-object p0, p0, Lyads/ik5;->b:[I

    aget p0, p0, p1

    return p0

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    return v0
.end method

.method public final b(Z)I
    .locals 4

    iget v0, p0, Lyads/f;->c:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lyads/f;->d:Lyads/ik5;

    iget-object v0, v0, Lyads/ik5;->b:[I

    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :cond_3
    :goto_0
    move-object v2, p0

    check-cast v2, Lyads/hx4;

    iget-object v3, v2, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lyads/kx5;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0, p1}, Lyads/f;->b(IZ)I

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    :cond_4
    iget-object p0, v2, Lyads/hx4;->h:[I

    aget p0, p0, v0

    iget-object v1, v2, Lyads/hx4;->i:[Lyads/kx5;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lyads/kx5;->b(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method
