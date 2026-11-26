.class public final Lcom/tapjoy/internal/z;
.super Lcom/tapjoy/internal/x;
.source "SourceFile"


# static fields
.field public static final n:Lcom/tapjoy/internal/y;


# instance fields
.field public final a:Lcom/tapjoy/internal/t0;

.field public final b:Ljava/io/StringReader;

.field public final c:[C

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:Ljava/util/ArrayList;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/y;

    invoke-direct {v0}, Lcom/tapjoy/internal/y;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/z;->n:Lcom/tapjoy/internal/y;

    return-void
.end method

.method public constructor <init>(Ljava/io/StringReader;)V
    .locals 2

    invoke-direct {p0}, Lcom/tapjoy/internal/x;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/t0;

    invoke-direct {v0}, Lcom/tapjoy/internal/t0;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/t0;

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tapjoy/internal/z;->c:[C

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/z;->d:I

    iput v0, p0, Lcom/tapjoy/internal/z;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/z;->f:I

    iput v0, p0, Lcom/tapjoy/internal/z;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/a0;->f:Lcom/tapjoy/internal/a0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/tapjoy/internal/z;->b:Ljava/io/StringReader;

    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 9

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    const/16 v1, 0x5d

    const/16 v2, 0x3b

    const/16 v3, 0x2c

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    .line 207
    sget-object v6, Lcom/tapjoy/internal/a0;->b:Lcom/tapjoy/internal/a0;

    .line 208
    iget-object v7, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->c()I

    move-result v6

    if-eq v6, v3, :cond_3

    if-eq v6, v2, :cond_2

    if-ne v6, v1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/a0;

    .line 211
    iput v5, p0, Lcom/tapjoy/internal/z;->i:I

    return v5

    .line 212
    :cond_1
    const-string p1, "Unterminated array"

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_2
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v4

    .line 214
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->c()I

    move-result v6

    if-eq v6, v3, :cond_5

    if-eq v6, v2, :cond_5

    if-eq v6, v1, :cond_4

    .line 215
    iget p1, p0, Lcom/tapjoy/internal/z;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/z;->d:I

    .line 216
    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->d()I

    move-result p0

    return p0

    :cond_4
    if-eqz p1, :cond_5

    .line 217
    iget-object p1, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/a0;

    .line 218
    iput v5, p0, Lcom/tapjoy/internal/z;->i:I

    return v5

    .line 219
    :cond_5
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v4
.end method

.method public final a(C)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/z;->d:I

    :cond_0
    :goto_1
    iget v3, p0, Lcom/tapjoy/internal/z;->d:I

    iget v4, p0, Lcom/tapjoy/internal/z;->e:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_e

    iget-object v4, p0, Lcom/tapjoy/internal/z;->c:[C

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/tapjoy/internal/z;->d:I

    aget-char v3, v4, v3

    if-ne v3, p1, :cond_2

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/t0;

    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    invoke-virtual {p0, v4, v2, v6}, Lcom/tapjoy/internal/t0;->a([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3
    iget-object v3, p0, Lcom/tapjoy/internal/z;->c:[C

    iget v4, p0, Lcom/tapjoy/internal/z;->d:I

    sub-int/2addr v4, v2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tapjoy/internal/z;->d:I

    iget v3, p0, Lcom/tapjoy/internal/z;->e:I

    const-string v4, "Unterminated escape sequence"

    if-ne v2, v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/z;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/tapjoy/internal/z;->c:[C

    iget v3, p0, Lcom/tapjoy/internal/z;->d:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/tapjoy/internal/z;->d:I

    aget-char v2, v2, v3

    const/16 v5, 0x62

    if-eq v2, v5, :cond_d

    const/16 v5, 0x66

    if-eq v2, v5, :cond_c

    const/16 v5, 0x6e

    if-eq v2, v5, :cond_b

    const/16 v5, 0x72

    if-eq v2, v5, :cond_a

    const/16 v5, 0x74

    if-eq v2, v5, :cond_9

    const/16 v5, 0x75

    if-eq v2, v5, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x5

    iget v2, p0, Lcom/tapjoy/internal/z;->e:I

    const/4 v5, 0x4

    if-le v3, v2, :cond_8

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/z;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/t0;

    iget-object v3, p0, Lcom/tapjoy/internal/z;->c:[C

    iget v4, p0, Lcom/tapjoy/internal/z;->d:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/tapjoy/internal/t0;->a([CII)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/tapjoy/internal/z;->d:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/tapjoy/internal/z;->d:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    goto :goto_4

    :cond_9
    const/16 v2, 0x9

    goto :goto_4

    :cond_a
    const/16 v2, 0xd

    goto :goto_4

    :cond_b
    const/16 v2, 0xa

    goto :goto_4

    :cond_c
    const/16 v2, 0xc

    goto :goto_4

    :cond_d
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tapjoy/internal/z;->d:I

    goto/16 :goto_1

    :cond_e
    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_f
    iget-object v3, p0, Lcom/tapjoy/internal/z;->c:[C

    iget v4, p0, Lcom/tapjoy/internal/z;->d:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/z;->b(I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->e()I

    .line 221
    iget v0, p0, Lcom/tapjoy/internal/z;->i:I

    if-ne v0, p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->e()I

    const/4 p1, 0x0

    .line 223
    iput p1, p0, Lcom/tapjoy/internal/z;->i:I

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    .line 225
    iput-object p1, p0, Lcom/tapjoy/internal/z;->j:Ljava/lang/String;

    return-void

    .line 226
    :cond_0
    invoke-static {p1}, Lcom/tapjoy/internal/b0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->e()I

    move-result p0

    invoke-static {p0}, Lcom/tapjoy/internal/b0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Expected "

    const-string v1, " but was "

    invoke-static {v0, p1, v1, p0}, Ln2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 227
    new-instance v0, Lcom/tapjoy/internal/f0;

    const-string v1, " at line "

    .line 228
    invoke-static {p1, v1}, Lti0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 229
    iget v1, p0, Lcom/tapjoy/internal/z;->f:I

    const/4 v2, 0x0

    move v3, v2

    .line 230
    :goto_0
    iget v4, p0, Lcom/tapjoy/internal/z;->d:I

    const/16 v5, 0xa

    if-ge v3, v4, :cond_1

    .line 231
    iget-object v4, p0, Lcom/tapjoy/internal/z;->c:[C

    aget-char v4, v4, v3

    if-ne v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " column "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget v1, p0, Lcom/tapjoy/internal/z;->g:I

    .line 234
    :goto_1
    iget v3, p0, Lcom/tapjoy/internal/z;->d:I

    if-ge v2, v3, :cond_3

    .line 235
    iget-object v3, p0, Lcom/tapjoy/internal/z;->c:[C

    aget-char v3, v3, v2

    if-ne v3, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/f0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Z)I
    .locals 4

    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->c()I

    move-result p1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/tapjoy/internal/z;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/z;->d:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/a0;

    iput v2, p0, Lcom/tapjoy/internal/z;->i:I

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->c()I

    move-result p1

    const/16 v3, 0x2c

    if-eq p1, v3, :cond_3

    const/16 v3, 0x3b

    if-eq p1, v3, :cond_3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/a0;

    iput v2, p0, Lcom/tapjoy/internal/z;->i:I

    return v2

    :cond_2
    const-string p1, "Unterminated object"

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->c()I

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_5

    const/16 v0, 0x27

    const-string v2, "Use JsonReader.setLenient(true) to accept malformed JSON"

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v1

    :cond_5
    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/z;->a(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/z;->j:Ljava/lang/String;

    sget-object p1, Lcom/tapjoy/internal/a0;->d:Lcom/tapjoy/internal/a0;

    iget-object v0, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/tapjoy/internal/z;->i:I

    return p1
.end method

.method public final b(I)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 119
    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/z;->d:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/tapjoy/internal/z;->c:[C

    aget-char v2, v2, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 121
    iget v2, p0, Lcom/tapjoy/internal/z;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/z;->f:I

    .line 122
    iput v3, p0, Lcom/tapjoy/internal/z;->g:I

    goto :goto_1

    .line 123
    :cond_0
    iget v2, p0, Lcom/tapjoy/internal/z;->g:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/z;->g:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/z;->e:I

    if-eq v1, v2, :cond_2

    sub-int/2addr v1, v2

    .line 125
    iput v1, p0, Lcom/tapjoy/internal/z;->e:I

    .line 126
    iget-object v4, p0, Lcom/tapjoy/internal/z;->c:[C

    invoke-static {v4, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 127
    :cond_2
    iput v0, p0, Lcom/tapjoy/internal/z;->e:I

    .line 128
    :goto_2
    iput v0, p0, Lcom/tapjoy/internal/z;->d:I

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/z;->b:Ljava/io/StringReader;

    iget-object v2, p0, Lcom/tapjoy/internal/z;->c:[C

    iget v4, p0, Lcom/tapjoy/internal/z;->e:I

    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 130
    iget v2, p0, Lcom/tapjoy/internal/z;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tapjoy/internal/z;->e:I

    .line 131
    iget v1, p0, Lcom/tapjoy/internal/z;->f:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/tapjoy/internal/z;->g:I

    if-ne v1, v3, :cond_4

    if-lez v2, :cond_4

    iget-object v4, p0, Lcom/tapjoy/internal/z;->c:[C

    aget-char v4, v4, v0

    const v5, 0xfeff

    if-ne v4, v5, :cond_4

    .line 132
    iget v4, p0, Lcom/tapjoy/internal/z;->d:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/tapjoy/internal/z;->d:I

    add-int/lit8 v1, v1, -0x1

    .line 133
    iput v1, p0, Lcom/tapjoy/internal/z;->g:I

    :cond_4
    if-lt v2, p1, :cond_3

    return v3

    :cond_5
    return v0
.end method

.method public final c()I
    .locals 6

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/z;->d:I

    iget v1, p0, Lcom/tapjoy/internal/z;->e:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/z;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/z;->c:[C

    iget v1, p0, Lcom/tapjoy/internal/z;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/tapjoy/internal/z;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    const/4 v4, 0x0

    const-string v5, "Use JsonReader.setLenient(true) to accept malformed JSON"

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/tapjoy/internal/z;->e:I

    if-ne v3, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/z;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    return v0

    :cond_4
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v4
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/z;->i:I

    iget-object v0, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/a0;->h:Lcom/tapjoy/internal/a0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/tapjoy/internal/z;->b:Ljava/io/StringReader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final d()I
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->c()I

    move-result v1

    const/16 v2, 0x22

    const/4 v3, 0x6

    if-eq v1, v2, :cond_28

    const/16 v2, 0x27

    const-string v4, "Use JsonReader.setLenient(true) to accept malformed JSON"

    const/4 v5, 0x0

    if-eq v1, v2, :cond_27

    const/16 v2, 0x5b

    const/4 v6, 0x1

    if-eq v1, v2, :cond_26

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_25

    iget v1, v0, Lcom/tapjoy/internal/z;->d:I

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/tapjoy/internal/z;->d:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/tapjoy/internal/z;->l:I

    const/4 v7, 0x0

    iput v7, v0, Lcom/tapjoy/internal/z;->m:I

    move-object v9, v5

    :cond_0
    move v8, v7

    :goto_0
    iget v10, v0, Lcom/tapjoy/internal/z;->d:I

    add-int/2addr v10, v8

    iget v11, v0, Lcom/tapjoy/internal/z;->e:I

    iget-object v12, v0, Lcom/tapjoy/internal/z;->c:[C

    const/16 v13, 0x9

    if-ge v10, v11, :cond_2

    aget-char v10, v12, v10

    if-eq v10, v13, :cond_4

    const/16 v11, 0xa

    if-eq v10, v11, :cond_4

    const/16 v11, 0xc

    if-eq v10, v11, :cond_4

    const/16 v11, 0xd

    if-eq v10, v11, :cond_4

    const/16 v11, 0x20

    if-eq v10, v11, :cond_4

    const/16 v11, 0x23

    if-eq v10, v11, :cond_1

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_4

    const/16 v11, 0x2f

    if-eq v10, v11, :cond_1

    const/16 v11, 0x3d

    if-eq v10, v11, :cond_1

    if-eq v10, v2, :cond_4

    const/16 v11, 0x7d

    if-eq v10, v11, :cond_4

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_4

    const/16 v11, 0x3b

    if-eq v10, v11, :cond_1

    packed-switch v10, :pswitch_data_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v5

    :cond_2
    array-length v10, v12

    if-ge v8, v10, :cond_5

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v0, v10}, Lcom/tapjoy/internal/z;->b(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/tapjoy/internal/z;->c:[C

    iget v10, v0, Lcom/tapjoy/internal/z;->e:I

    aput-char v7, v2, v10

    :cond_4
    :pswitch_1
    move v7, v8

    goto :goto_1

    :cond_5
    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :cond_6
    iget-object v10, v0, Lcom/tapjoy/internal/z;->c:[C

    iget v11, v0, Lcom/tapjoy/internal/z;->d:I

    invoke-virtual {v9, v10, v11, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/tapjoy/internal/z;->m:I

    add-int/2addr v10, v8

    iput v10, v0, Lcom/tapjoy/internal/z;->m:I

    iget v10, v0, Lcom/tapjoy/internal/z;->d:I

    add-int/2addr v10, v8

    iput v10, v0, Lcom/tapjoy/internal/z;->d:I

    invoke-virtual {v0, v6}, Lcom/tapjoy/internal/z;->b(I)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_1
    if-nez v9, :cond_7

    iget v2, v0, Lcom/tapjoy/internal/z;->d:I

    iput v2, v0, Lcom/tapjoy/internal/z;->l:I

    move-object v2, v5

    goto :goto_2

    :cond_7
    iget-object v2, v0, Lcom/tapjoy/internal/z;->c:[C

    iget v8, v0, Lcom/tapjoy/internal/z;->d:I

    invoke-virtual {v9, v2, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget v8, v0, Lcom/tapjoy/internal/z;->m:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/tapjoy/internal/z;->m:I

    iget v9, v0, Lcom/tapjoy/internal/z;->d:I

    add-int/2addr v9, v7

    iput v9, v0, Lcom/tapjoy/internal/z;->d:I

    iput-object v2, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    if-eqz v8, :cond_24

    iget v2, v0, Lcom/tapjoy/internal/z;->l:I

    if-ne v2, v1, :cond_8

    move-object/from16 v16, v5

    goto/16 :goto_8

    :cond_8
    const/16 v1, 0x55

    const/16 v7, 0x75

    const/16 v9, 0x4c

    const/16 v10, 0x6c

    const/4 v11, 0x4

    if-ne v8, v11, :cond_d

    iget-object v12, v0, Lcom/tapjoy/internal/z;->c:[C

    aget-char v14, v12, v2

    const/16 v15, 0x6e

    if-eq v15, v14, :cond_9

    const/16 v15, 0x4e

    if-ne v15, v14, :cond_d

    :cond_9
    add-int/lit8 v14, v2, 0x1

    aget-char v14, v12, v14

    if-eq v7, v14, :cond_a

    if-ne v1, v14, :cond_d

    :cond_a
    add-int/lit8 v14, v2, 0x2

    aget-char v14, v12, v14

    if-eq v10, v14, :cond_b

    if-ne v9, v14, :cond_d

    :cond_b
    add-int/lit8 v14, v2, 0x3

    aget-char v12, v12, v14

    if-eq v10, v12, :cond_c

    if-ne v9, v12, :cond_d

    :cond_c
    const-string v1, "null"

    iput-object v1, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    move-object/from16 v16, v5

    goto/16 :goto_9

    :cond_d
    const/16 v13, 0x8

    const/16 v12, 0x45

    const/16 v14, 0x65

    if-ne v8, v11, :cond_12

    iget-object v11, v0, Lcom/tapjoy/internal/z;->c:[C

    aget-char v15, v11, v2

    move-object/from16 v16, v5

    const/16 v5, 0x74

    if-eq v5, v15, :cond_e

    const/16 v5, 0x54

    if-ne v5, v15, :cond_13

    :cond_e
    add-int/lit8 v5, v2, 0x1

    aget-char v5, v11, v5

    const/16 v15, 0x72

    if-eq v15, v5, :cond_f

    const/16 v15, 0x52

    if-ne v15, v5, :cond_13

    :cond_f
    add-int/lit8 v5, v2, 0x2

    aget-char v5, v11, v5

    if-eq v7, v5, :cond_10

    if-ne v1, v5, :cond_13

    :cond_10
    add-int/lit8 v1, v2, 0x3

    aget-char v1, v11, v1

    if-eq v14, v1, :cond_11

    if-ne v12, v1, :cond_13

    :cond_11
    const-string v1, "true"

    iput-object v1, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    goto/16 :goto_9

    :cond_12
    move-object/from16 v16, v5

    :cond_13
    const/4 v1, 0x5

    if-ne v8, v1, :cond_19

    iget-object v1, v0, Lcom/tapjoy/internal/z;->c:[C

    aget-char v5, v1, v2

    const/16 v7, 0x66

    if-eq v7, v5, :cond_14

    const/16 v7, 0x46

    if-ne v7, v5, :cond_19

    :cond_14
    add-int/lit8 v5, v2, 0x1

    aget-char v5, v1, v5

    const/16 v7, 0x61

    if-eq v7, v5, :cond_15

    const/16 v7, 0x41

    if-ne v7, v5, :cond_19

    :cond_15
    add-int/lit8 v5, v2, 0x2

    aget-char v5, v1, v5

    if-eq v10, v5, :cond_16

    if-ne v9, v5, :cond_19

    :cond_16
    add-int/lit8 v5, v2, 0x3

    aget-char v5, v1, v5

    const/16 v7, 0x73

    if-eq v7, v5, :cond_17

    const/16 v7, 0x53

    if-ne v7, v5, :cond_19

    :cond_17
    add-int/lit8 v5, v2, 0x4

    aget-char v1, v1, v5

    if-eq v14, v1, :cond_18

    if-ne v12, v1, :cond_19

    :cond_18
    const-string v1, "false"

    iput-object v1, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    goto/16 :goto_9

    :cond_19
    iget-object v1, v0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/t0;

    iget-object v5, v0, Lcom/tapjoy/internal/z;->c:[C

    invoke-virtual {v1, v5, v2, v8}, Lcom/tapjoy/internal/t0;->a([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    iget-object v1, v0, Lcom/tapjoy/internal/z;->c:[C

    iget v2, v0, Lcom/tapjoy/internal/z;->l:I

    iget v5, v0, Lcom/tapjoy/internal/z;->m:I

    aget-char v7, v1, v2

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1a

    add-int/lit8 v7, v2, 0x1

    aget-char v9, v1, v7

    move/from16 v17, v9

    move v9, v7

    move/from16 v7, v17

    goto :goto_3

    :cond_1a
    move v9, v2

    :goto_3
    const/16 v10, 0x39

    const/16 v11, 0x30

    if-ne v7, v11, :cond_1b

    add-int/2addr v9, v6

    aget-char v7, v1, v9

    goto :goto_5

    :cond_1b
    const/16 v13, 0x31

    if-lt v7, v13, :cond_22

    if-gt v7, v10, :cond_22

    add-int/2addr v9, v6

    aget-char v7, v1, v9

    :goto_4
    if-lt v7, v11, :cond_1c

    if-gt v7, v10, :cond_1c

    add-int/lit8 v9, v9, 0x1

    aget-char v7, v1, v9

    goto :goto_4

    :cond_1c
    :goto_5
    const/16 v13, 0x2e

    if-ne v7, v13, :cond_1d

    add-int/lit8 v9, v9, 0x1

    aget-char v7, v1, v9

    :goto_6
    if-lt v7, v11, :cond_1d

    if-gt v7, v10, :cond_1d

    add-int/lit8 v9, v9, 0x1

    aget-char v7, v1, v9

    goto :goto_6

    :cond_1d
    if-eq v7, v14, :cond_1e

    if-ne v7, v12, :cond_21

    :cond_1e
    add-int/lit8 v7, v9, 0x1

    aget-char v12, v1, v7

    const/16 v13, 0x2b

    if-eq v12, v13, :cond_1f

    if-ne v12, v8, :cond_20

    :cond_1f
    add-int/lit8 v7, v9, 0x2

    aget-char v12, v1, v7

    :cond_20
    if-lt v12, v11, :cond_22

    if-gt v12, v10, :cond_22

    add-int/2addr v7, v6

    aget-char v6, v1, v7

    move v9, v7

    :goto_7
    if-lt v6, v11, :cond_21

    if-gt v6, v10, :cond_21

    add-int/lit8 v9, v9, 0x1

    aget-char v6, v1, v9

    goto :goto_7

    :cond_21
    add-int/2addr v2, v5

    if-ne v9, v2, :cond_22

    const/4 v13, 0x7

    goto :goto_9

    :cond_22
    :goto_8
    move v13, v3

    :goto_9
    iput v13, v0, Lcom/tapjoy/internal/z;->i:I

    if-eq v13, v3, :cond_23

    return v13

    :cond_23
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v16

    :cond_24
    move-object/from16 v16, v5

    const-string v1, "Expected literal value"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v16

    :cond_25
    sget-object v1, Lcom/tapjoy/internal/a0;->c:Lcom/tapjoy/internal/a0;

    iget-object v2, v0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    iput v1, v0, Lcom/tapjoy/internal/z;->i:I

    return v1

    :cond_26
    sget-object v1, Lcom/tapjoy/internal/a0;->a:Lcom/tapjoy/internal/a0;

    iget-object v2, v0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v6, v0, Lcom/tapjoy/internal/z;->i:I

    return v6

    :cond_27
    move-object/from16 v16, v5

    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v16

    :cond_28
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/z;->a(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    iput v3, v0, Lcom/tapjoy/internal/z;->i:I

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e()I
    .locals 5

    iget v0, p0, Lcom/tapjoy/internal/z;->i:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/a0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lxp;->g()V

    return v2

    :pswitch_0
    const-string p0, "JsonReader is closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v2

    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->d()I

    const-string v0, "Expected EOF"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/tapjoy/internal/z;->i:I

    return v0

    :pswitch_2
    sget-object v0, Lcom/tapjoy/internal/a0;->g:Lcom/tapjoy/internal/a0;

    iget-object v3, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->d()I

    move-result v0

    iget p0, p0, Lcom/tapjoy/internal/z;->i:I

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/tapjoy/internal/b0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return v2

    :cond_2
    :goto_0
    return v0

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/z;->b(Z)I

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->c()I

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_4

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_3

    const-string v0, "Expected \':\'"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/z;->a(Ljava/lang/String;)V

    throw v3

    :cond_4
    sget-object v0, Lcom/tapjoy/internal/a0;->e:Lcom/tapjoy/internal/a0;

    iget-object v2, p0, Lcom/tapjoy/internal/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->d()I

    move-result p0

    return p0

    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/z;->b(Z)I

    move-result p0

    return p0

    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/z;->a(Z)I

    move-result p0

    return p0

    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/z;->a(Z)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "z near "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/tapjoy/internal/z;->d:I

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lcom/tapjoy/internal/z;->c:[C

    iget v5, p0, Lcom/tapjoy/internal/z;->d:I

    sub-int/2addr v5, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tapjoy/internal/z;->e:I

    iget v4, p0, Lcom/tapjoy/internal/z;->d:I

    sub-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/tapjoy/internal/z;->c:[C

    iget p0, p0, Lcom/tapjoy/internal/z;->d:I

    invoke-virtual {v1, v3, p0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
