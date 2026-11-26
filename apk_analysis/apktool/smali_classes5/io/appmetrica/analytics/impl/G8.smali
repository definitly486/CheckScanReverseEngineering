.class public final Lio/appmetrica/analytics/impl/G8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/z2;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Lg17;

.field public final k:Lg17;

.field public final l:Ljava/util/List;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lio/appmetrica/analytics/impl/G8;->a:I

    const/16 v1, 0x64

    iput v1, v0, Lio/appmetrica/analytics/impl/G8;->b:I

    const/16 v1, 0xff

    iput v1, v0, Lio/appmetrica/analytics/impl/G8;->c:I

    const/4 v1, 0x2

    iput v1, v0, Lio/appmetrica/analytics/impl/G8;->d:I

    const/16 v2, 0x3f

    iput v2, v0, Lio/appmetrica/analytics/impl/G8;->e:I

    const/4 v2, 0x1

    iput v2, v0, Lio/appmetrica/analytics/impl/G8;->f:I

    iput v1, v0, Lio/appmetrica/analytics/impl/G8;->g:I

    iput v2, v0, Lio/appmetrica/analytics/impl/G8;->h:I

    const/16 v1, 0x40

    iput v1, v0, Lio/appmetrica/analytics/impl/G8;->i:I

    new-instance v1, Lg17;

    const-string v2, "^[a-zA-Z0-9\'!#$%&*+-/=?^_`{|}~]+$"

    invoke-direct {v1, v2}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/G8;->j:Lg17;

    new-instance v1, Lg17;

    const-string v2, "(?:^|\\.)(?:(ya\\.ru)|(?:yandex)\\.(\\w+|com?\\.\\w+))$"

    invoke-direct {v1, v2}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/G8;->k:Lg17;

    const-string v20, "com.tr"

    const-string v21, "com.ru"

    const-string v3, "ru"

    const-string v4, "by"

    const-string v5, "kz"

    const-string v6, "az"

    const-string v7, "kg"

    const-string v8, "lv"

    const-string v9, "md"

    const-string v10, "tj"

    const-string v11, "tm"

    const-string v12, "uz"

    const-string v13, "ee"

    const-string v14, "fr"

    const-string v15, "lt"

    const-string v16, "com"

    const-string v17, "co.il"

    const-string v18, "com.ge"

    const-string v19, "com.am"

    filled-new-array/range {v3 .. v21}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/G8;->l:Ljava/util/List;

    const-string v1, "yandex.ru"

    iput-object v1, v0, Lio/appmetrica/analytics/impl/G8;->m:Ljava/lang/String;

    const-string v1, "gmail.com"

    iput-object v1, v0, Lio/appmetrica/analytics/impl/G8;->n:Ljava/lang/String;

    const-string v1, "googlemail.com"

    iput-object v1, v0, Lio/appmetrica/analytics/impl/G8;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-static {p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^\\++"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1}, Lta8;->O(Ljava/lang/String;CII)I

    move-result v1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    iget v7, p0, Lio/appmetrica/analytics/impl/G8;->h:I

    if-lt v1, v7, :cond_1a

    iget v7, p0, Lio/appmetrica/analytics/impl/G8;->i:I

    if-le v1, v7, :cond_1

    goto/16 :goto_9

    :cond_1
    new-array v1, v6, [C

    const/16 v7, 0x2e

    aput-char v7, v1, v3

    invoke-static {v4, v1}, Lta8;->X(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v1

    instance-of v7, v1, Ljava/util/Collection;

    const/4 v8, 0x2

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lio/appmetrica/analytics/impl/G8;->h:I

    if-ge v9, v10, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-static {v7}, Lua8;->j0(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    const/16 v11, 0x22

    if-ne v10, v11, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_6

    move-object v10, v5

    goto :goto_0

    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    :goto_0
    if-nez v10, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    if-ne v10, v11, :cond_b

    if-le v9, v8, :cond_b

    move v1, v6

    :goto_1
    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_c

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x20

    if-lt v10, v12, :cond_1a

    if-eq v10, v11, :cond_1a

    const/16 v13, 0x7e

    if-le v10, v13, :cond_8

    goto/16 :goto_9

    :cond_8
    const/16 v13, 0x5c

    if-ne v10, v13, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_9

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ge v9, v12, :cond_a

    goto/16 :goto_9

    :cond_a
    add-int/2addr v1, v6

    goto :goto_1

    :cond_b
    :goto_2
    iget-object v9, p0, Lio/appmetrica/analytics/impl/G8;->j:Lg17;

    invoke-virtual {v9, v7}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_9

    :cond_c
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v7, p0, Lio/appmetrica/analytics/impl/G8;->c:I

    if-le v1, v7, :cond_d

    goto/16 :goto_9

    :cond_d
    const-string v1, "."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lta8;->Y(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    iget v10, p0, Lio/appmetrica/analytics/impl/G8;->d:I

    if-ge v9, v10, :cond_e

    goto/16 :goto_9

    :cond_e
    invoke-static {v7}, Lqn1;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_4

    :cond_f
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, v10}, Lio/appmetrica/analytics/impl/G8;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_9

    :cond_11
    :goto_4
    invoke-static {v7}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lio/appmetrica/analytics/impl/G8;->g:I

    if-lt v9, v10, :cond_1a

    invoke-virtual {p0, v7}, Lio/appmetrica/analytics/impl/G8;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    move v9, v3

    :goto_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1a

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v7, p0, Lio/appmetrica/analytics/impl/G8;->o:Ljava/lang/String;

    iget-object v9, p0, Lio/appmetrica/analytics/impl/G8;->n:Ljava/lang/String;

    invoke-static {p1, v7, v9}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Lio/appmetrica/analytics/impl/G8;->k:Lg17;

    invoke-static {v7, p1}, Lg17;->a(Lg17;Ljava/lang/String;)Ls15;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Ls15;->a()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ls15$a;

    invoke-virtual {v7, v6}, Ls15$a;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ls15$a;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_12

    iget-object v6, p0, Lio/appmetrica/analytics/impl/G8;->l:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_6

    :cond_12
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_13

    :goto_6
    iget-object p1, p0, Lio/appmetrica/analytics/impl/G8;->m:Ljava/lang/String;

    :cond_13
    iget-object v6, p0, Lio/appmetrica/analytics/impl/G8;->m:Ljava/lang/String;

    invoke-static {p1, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v0, "-"

    invoke-static {v4, v1, v0}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_14
    iget-object v6, p0, Lio/appmetrica/analytics/impl/G8;->n:Ljava/lang/String;

    invoke-static {p1, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {v4, v1, v0}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_15
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v3

    :goto_8
    if-ge v1, v0, :cond_17

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lio/appmetrica/analytics/impl/G8;->a:I

    if-lt v0, v1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget p0, p0, Lio/appmetrica/analytics/impl/G8;->b:I

    if-le v0, p0, :cond_18

    goto :goto_9

    :cond_18
    return-object p1

    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_1a
    :goto_9
    return-object v5
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lio/appmetrica/analytics/impl/G8;->e:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget p0, p0, Lio/appmetrica/analytics/impl/G8;->f:I

    if-ge v0, p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lua8;->i0(Ljava/lang/CharSequence;)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1}, Lua8;->k0(Ljava/lang/CharSequence;)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    move p0, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v2
.end method
