.class public abstract Lyads/ur;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lyads/sr;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Ljava/util/ArrayList;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/sr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ur;->a:Lyads/sr;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lyads/ur;->b:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lyads/ur;->a(Lyads/sr;Z)V

    return-void
.end method

.method public static final a(Lp07;Lyads/ur;)Lg17;
    .locals 2

    .line 284
    :goto_0
    iget v0, p0, Lp07;->b:I

    invoke-virtual {p1}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lp07;->b:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lyads/pr;

    if-nez v0, :cond_0

    .line 285
    iget v0, p0, Lp07;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp07;->b:I

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p1}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p1

    iget p0, p0, Lp07;->b:I

    invoke-static {p0, p1}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lyads/pr;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p0, Lyads/pr;

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    .line 287
    iget-object p0, p0, Lyads/pr;->b:Lg17;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static synthetic a(Lyads/ur;Lyads/sr;)V
    .locals 1

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, p1, v0}, Lyads/ur;->a(Lyads/sr;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/aw5;Ljava/lang/String;)I
    .locals 7

    .line 215
    iget v0, p1, Lyads/aw5;->a:I

    .line 216
    iget v1, p1, Lyads/aw5;->b:I

    add-int/2addr v1, v0

    .line 217
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 218
    iget v0, p1, Lyads/aw5;->a:I

    .line 219
    iget v1, p1, Lyads/aw5;->c:I

    add-int/2addr v0, v1

    .line 220
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-gt v0, v1, :cond_1

    .line 222
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/rr;

    .line 223
    instance-of v5, v4, Lyads/pr;

    if-eqz v5, :cond_0

    .line 224
    check-cast v4, Lyads/pr;

    .line 225
    iget-object v4, v4, Lyads/pr;->a:Ljava/lang/Character;

    if-eqz v4, :cond_0

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0, p1}, Lyads/ur;->a(Lyads/aw5;)V

    .line 229
    invoke-virtual {p0}, Lyads/ur;->b()I

    move-result p1

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_5

    .line 231
    :cond_2
    iget-object v1, p0, Lyads/ur;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v4, 0x0

    if-gt v1, v2, :cond_5

    move v1, p1

    move v2, v4

    .line 232
    :goto_1
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 233
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lyads/pr;

    if-eqz v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    goto :goto_3

    .line 235
    :cond_5
    invoke-virtual {p0, p1, v0}, Lyads/ur;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v5, v4

    .line 236
    :goto_2
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    add-int v6, p1, v5

    invoke-virtual {p0, v6, v0}, Lyads/ur;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v5, -0x1

    :goto_3
    if-gez v2, :cond_7

    goto :goto_4

    :cond_7
    move v4, v2

    .line 237
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 238
    :goto_5
    invoke-virtual {p0, p2, p1, v1}, Lyads/ur;->a(Ljava/lang/String;ILjava/lang/Integer;)V

    .line 239
    invoke-virtual {p0}, Lyads/ur;->b()I

    move-result p1

    .line 240
    invoke-virtual {p0, v0, p1, v3}, Lyads/ur;->a(Ljava/lang/String;ILjava/lang/Integer;)V

    return p1
.end method

.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    new-instance v1, Lp07;

    invoke-direct {v1}, Lp07;-><init>()V

    iput p1, v1, Lp07;->b:I

    const/4 p1, 0x0

    .line 278
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 279
    invoke-static {v1, p0}, Lyads/ur;->a(Lp07;Lyads/ur;)Lg17;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 280
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    iget v2, v1, Lp07;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lp07;->b:I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 254
    iget-object p0, p0, Lyads/ur;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "destructedValue"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lyads/zv5;->a(Ljava/lang/String;Ljava/lang/String;)Lyads/aw5;

    move-result-object v0

    .line 264
    new-instance v1, Lyads/aw5;

    .line 265
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 266
    iget v2, v0, Lyads/aw5;->b:I

    sub-int/2addr p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 267
    :cond_0
    iget v0, v0, Lyads/aw5;->c:I

    .line 268
    invoke-direct {v1, p1, v2, v0}, Lyads/aw5;-><init>(III)V

    .line 269
    invoke-virtual {p0, v1, p2}, Lyads/ur;->a(Lyads/aw5;Ljava/lang/String;)I

    move-result p2

    .line 270
    invoke-virtual {p0}, Lyads/ur;->b()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 271
    :goto_0
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 272
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/rr;

    .line 273
    instance-of p1, p1, Lyads/pr;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 274
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 275
    :cond_3
    iput v0, p0, Lyads/ur;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 256
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 258
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/rr;

    .line 259
    instance-of v5, v4, Lyads/pr;

    if-eqz v5, :cond_0

    check-cast v4, Lyads/pr;

    .line 260
    iput-object v3, v4, Lyads/pr;->a:Ljava/lang/Character;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0, p1, v1, v3}, Lyads/ur;->a(Ljava/lang/String;ILjava/lang/Integer;)V

    .line 262
    iget p1, p0, Lyads/ur;->d:I

    invoke-virtual {p0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lyads/ur;->d:I

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 3

    .line 288
    invoke-virtual {p0, p2, p1}, Lyads/ur;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 289
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3, p1}, Lua8;->l0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 p3, 0x0

    .line 290
    :goto_0
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 291
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/rr;

    .line 292
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 293
    instance-of v2, v0, Lyads/pr;

    if-eqz v2, :cond_1

    .line 294
    check-cast v0, Lyads/pr;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 295
    iput-object v1, v0, Lyads/pr;->a:Ljava/lang/Character;

    add-int/lit8 p3, p3, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract a(Ljava/util/regex/PatternSyntaxException;)V
.end method

.method public final a(Lyads/aw5;)V
    .locals 4

    .line 241
    iget v0, p1, Lyads/aw5;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 242
    iget v0, p1, Lyads/aw5;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 243
    iget v0, p1, Lyads/aw5;->a:I

    :goto_0
    if-ltz v0, :cond_1

    .line 244
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/rr;

    .line 245
    instance-of v3, v2, Lyads/pr;

    if-eqz v3, :cond_0

    check-cast v2, Lyads/pr;

    .line 246
    iget-object v3, v2, Lyads/pr;->a:Ljava/lang/Character;

    if-eqz v3, :cond_0

    .line 247
    iput-object v1, v2, Lyads/pr;->a:Ljava/lang/Character;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 248
    :cond_1
    :goto_1
    iget p1, p1, Lyads/aw5;->a:I

    .line 249
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge p1, v0, :cond_3

    .line 250
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 251
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/rr;

    .line 252
    instance-of v3, v2, Lyads/pr;

    if-eqz v3, :cond_2

    check-cast v2, Lyads/pr;

    .line 253
    iput-object v1, v2, Lyads/pr;->a:Ljava/lang/Character;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final a(Lyads/sr;Z)V
    .locals 7

    iget-object v0, p0, Lyads/ur;->a:Lyads/sr;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v2

    :goto_0
    if-gt v3, p2, :cond_1

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/rr;

    instance-of v5, v4, Lyads/pr;

    if-eqz v5, :cond_0

    check-cast v4, Lyads/pr;

    iget-object v4, v4, Lyads/pr;->a:Ljava/lang/Character;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    iput-object p1, p0, Lyads/ur;->a:Lyads/sr;

    iget-object p1, p0, Lyads/ur;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p1, p0, Lyads/ur;->a:Lyads/sr;

    iget-object p1, p1, Lyads/sr;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/tr;

    :try_start_0
    iget-object v3, v0, Lyads/tr;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lyads/ur;->b:Ljava/util/LinkedHashMap;

    iget-char v0, v0, Lyads/tr;->a:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v5, Lg17;

    invoke-direct {v5, v3}, Lg17;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lyads/ur;->a(Ljava/util/regex/PatternSyntaxException;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lyads/ur;->a:Lyads/sr;

    iget-object p1, p1, Lyads/sr;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lyads/ur;->a:Lyads/sr;

    iget-object v4, v4, Lyads/sr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lyads/tr;

    iget-char v6, v6, Lyads/tr;->a:C

    if-ne v6, v3, :cond_5

    goto :goto_4

    :cond_6
    move-object v5, v1

    :goto_4
    check-cast v5, Lyads/tr;

    if-eqz v5, :cond_7

    new-instance v3, Lyads/pr;

    iget-object v4, p0, Lyads/ur;->b:Ljava/util/LinkedHashMap;

    iget-char v6, v5, Lyads/tr;->a:C

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg17;

    iget-char v5, v5, Lyads/tr;->c:C

    invoke-direct {v3, v4, v5}, Lyads/pr;-><init>(Lg17;C)V

    goto :goto_5

    :cond_7
    new-instance v4, Lyads/qr;

    invoke-direct {v4, v3}, Lyads/qr;-><init>(C)V

    move-object v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iput-object v0, p0, Lyads/ur;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_9

    invoke-virtual {p0, p2}, Lyads/ur;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final b()I
    .locals 5

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/rr;

    instance-of v4, v2, Lyads/pr;

    if-eqz v4, :cond_0

    check-cast v2, Lyads/pr;

    iget-object v2, v2, Lyads/pr;->a:Ljava/lang/Character;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-eq v1, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final c()Lyads/sr;
    .locals 0

    iget-object p0, p0, Lyads/ur;->a:Lyads/sr;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyads/rr;

    instance-of v5, v4, Lyads/qr;

    if-eqz v5, :cond_0

    check-cast v4, Lyads/qr;

    iget-char v4, v4, Lyads/qr;->a:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lyads/pr;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lyads/pr;

    iget-object v5, v5, Lyads/pr;->a:Ljava/lang/Character;

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lyads/ur;->a:Lyads/sr;

    iget-boolean v5, v5, Lyads/sr;->c:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lyads/pr;

    iget-char v4, v4, Lyads/pr;->c:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
