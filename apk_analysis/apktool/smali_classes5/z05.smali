.class public final Lz05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll54;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz05$c;,
        Lz05$b;,
        Lz05$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lm54;

.field public final b:Z

.field public final c:Ljava/util/BitSet;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;

.field public f:Lzn5;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Lnl2;

.field public j:Lpt0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[!\"#\\$%&\'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz05;->k:Ljava/util/regex/Pattern;

    const-string v0, "^ *(?:\n *)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz05;->l:Ljava/util/regex/Pattern;

    const-string v0, "^[\\p{Zs}\t\r\n\u000c]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz05;->m:Ljava/util/regex/Pattern;

    const-string v0, "^[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz05;->n:Ljava/util/regex/Pattern;

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz05;->o:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lm54;ZLjava/util/ArrayList;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz05;->a:Lm54;

    iput-boolean p2, p0, Lz05;->b:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lp54;

    invoke-virtual {p3}, Lp54;->d()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lz05;->d:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lol2;

    invoke-interface {p3}, Lol2;->c()C

    move-result p4

    invoke-interface {p3}, Lol2;->a()C

    move-result v0

    if-ne p4, v0, :cond_4

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol2;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lol2;->c()C

    move-result v1

    invoke-interface {v0}, Lol2;->a()C

    move-result v2

    if-ne v1, v2, :cond_3

    instance-of v1, v0, Lr68;

    if-eqz v1, :cond_2

    check-cast v0, Lr68;

    goto :goto_2

    :cond_2
    new-instance v1, Lr68;

    invoke-direct {v1, p4}, Lr68;-><init>(C)V

    invoke-virtual {v1, v0}, Lr68;->f(Lol2;)V

    move-object v0, v1

    :goto_2
    invoke-virtual {v0, p3}, Lr68;->f(Lol2;)V

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p4, p3, p1}, Lz05;->b(CLol2;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_4
    invoke-static {p4, p3, p1}, Lz05;->b(CLol2;Ljava/util/HashMap;)V

    invoke-static {v0, p3, p1}, Lz05;->b(CLol2;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_5
    iput-object p1, p0, Lz05;->e:Ljava/util/HashMap;

    iget-object p2, p0, Lz05;->d:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p3, Ljava/util/BitSet;

    invoke-direct {p3}, Ljava/util/BitSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Character;

    invoke-virtual {p4}, Ljava/lang/Character;->charValue()C

    move-result p4

    invoke-virtual {p3, p4}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    :cond_7
    iput-object p3, p0, Lz05;->c:Ljava/util/BitSet;

    return-void
.end method

.method public static b(CLol2;Ljava/util/HashMap;)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lol2;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Delimiter processor conflict with delimiter char \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lzn5;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz05;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lz05;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lz05;->i:Lnl2;

    iput-object v0, p0, Lz05;->j:Lpt0;

    iput-object p2, p0, Lz05;->f:Lzn5;

    :goto_0
    invoke-virtual {p0}, Lz05;->d()C

    move-result v3

    if-nez v3, :cond_0

    move-object v4, v0

    goto/16 :goto_f

    :cond_0
    iget-object v1, p0, Lz05;->d:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    iget v2, p0, Lz05;->h:I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp54;

    iput-object p0, v4, Lp54;->a:Lz05;

    iget-object v5, p0, Lz05;->f:Lzn5;

    iput-object v5, v4, Lp54;->b:Lzn5;

    iget-object v5, p0, Lz05;->g:Ljava/lang/String;

    iput-object v5, v4, Lp54;->c:Ljava/lang/String;

    iget v5, p0, Lz05;->h:I

    iput v5, v4, Lp54;->d:I

    invoke-virtual {v4}, Lp54;->b()Lzn5;

    move-result-object v5

    iget v4, v4, Lp54;->d:I

    iput v4, p0, Lz05;->h:I

    if-eqz v5, :cond_1

    move-object v4, v5

    goto/16 :goto_e

    :cond_1
    iput v2, p0, Lz05;->h:I

    move-object v4, v5

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lz05;->e:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lol2;

    iget v2, p0, Lz05;->h:I

    if-eqz v1, :cond_15

    move v4, p1

    :goto_2
    invoke-virtual {p0}, Lz05;->d()C

    move-result v5

    if-ne v5, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lz05;->h:I

    add-int/2addr v5, v7

    iput v5, p0, Lz05;->h:I

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lol2;->b()I

    move-result v5

    if-ge v4, v5, :cond_4

    iput v2, p0, Lz05;->h:I

    move-object v6, v0

    goto/16 :goto_b

    :cond_4
    const-string v5, "\n"

    if-nez v2, :cond_5

    move-object v6, v5

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lz05;->g:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {p0}, Lz05;->d()C

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    :goto_4
    sget-object v8, Lz05;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    sget-object v10, Lz05;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v8, :cond_7

    if-nez v6, :cond_7

    if-eqz v9, :cond_8

    :cond_7
    move v10, v7

    goto :goto_5

    :cond_8
    move v10, p1

    :goto_5
    if-nez v6, :cond_a

    if-eqz v9, :cond_9

    if-nez v5, :cond_9

    if-eqz v8, :cond_a

    :cond_9
    move v5, v7

    goto :goto_6

    :cond_a
    move v5, p1

    :goto_6
    const/16 v6, 0x5f

    if-ne v3, v6, :cond_f

    if-eqz v10, :cond_c

    if-eqz v5, :cond_b

    if-eqz v9, :cond_c

    :cond_b
    move v1, v7

    goto :goto_7

    :cond_c
    move v1, p1

    :goto_7
    if-eqz v5, :cond_e

    if-eqz v10, :cond_d

    if-eqz v8, :cond_e

    :cond_d
    move v5, v7

    goto :goto_a

    :cond_e
    move v5, p1

    goto :goto_a

    :cond_f
    if-eqz v10, :cond_10

    invoke-interface {v1}, Lol2;->c()C

    move-result v6

    if-ne v3, v6, :cond_10

    move v6, v7

    goto :goto_8

    :cond_10
    move v6, p1

    :goto_8
    if-eqz v5, :cond_11

    invoke-interface {v1}, Lol2;->a()C

    move-result v1

    if-ne v3, v1, :cond_11

    move v5, v7

    goto :goto_9

    :cond_11
    move v5, p1

    :goto_9
    move v1, v6

    :goto_a
    iput v2, p0, Lz05;->h:I

    new-instance v6, Lz05$a;

    invoke-direct {v6, v4, v1, v5}, Lz05$a;-><init>(IZZ)V

    :goto_b
    if-nez v6, :cond_13

    :cond_12
    move-object v4, v0

    goto :goto_e

    :cond_13
    iget v8, v6, Lz05$a;->a:I

    add-int v1, v2, v8

    iput v1, p0, Lz05;->h:I

    iget-object v4, p0, Lz05;->g:Ljava/lang/String;

    move v5, v2

    new-instance v2, Ldq8;

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ldq8;-><init>(Ljava/lang/String;)V

    new-instance v1, Lnl2;

    iget-boolean v4, v6, Lz05$a;->c:Z

    iget-boolean v5, v6, Lz05$a;->b:Z

    iget-object v6, p0, Lz05;->i:Lnl2;

    invoke-direct/range {v1 .. v6}, Lnl2;-><init>(Ldq8;CZZLnl2;)V

    iput-object v1, p0, Lz05;->i:Lnl2;

    iput v8, v1, Lnl2;->g:I

    iput v8, v1, Lnl2;->h:I

    if-eqz v6, :cond_14

    iput-object v1, v6, Lnl2;->f:Lnl2;

    :cond_14
    move-object v4, v2

    goto :goto_e

    :cond_15
    move v5, v2

    iget-object v1, p0, Lz05;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_c
    iget v2, p0, Lz05;->h:I

    if-eq v2, v1, :cond_17

    iget-object v4, p0, Lz05;->g:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v4, p0, Lz05;->c:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_d

    :cond_16
    iget v2, p0, Lz05;->h:I

    add-int/2addr v2, v7

    iput v2, p0, Lz05;->h:I

    goto :goto_c

    :cond_17
    :goto_d
    iget v1, p0, Lz05;->h:I

    if-eq v5, v1, :cond_12

    iget-object v2, p0, Lz05;->g:Ljava/lang/String;

    new-instance v4, Ldq8;

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ldq8;-><init>(Ljava/lang/String;)V

    :cond_18
    :goto_e
    if-eqz v4, :cond_19

    goto :goto_f

    :cond_19
    iget v1, p0, Lz05;->h:I

    add-int/2addr v1, v7

    iput v1, p0, Lz05;->h:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ldq8;

    invoke-direct {v4, v1}, Ldq8;-><init>(Ljava/lang/String;)V

    :goto_f
    if-eqz v4, :cond_1a

    invoke-virtual {p2, v4}, Lzn5;->b(Lzn5;)V

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p0, v0}, Lz05;->e(Lnl2;)V

    iget-object p0, p2, Lzn5;->b:Lzn5;

    iget-object p1, p2, Lzn5;->c:Lzn5;

    if-ne p0, p1, :cond_1b

    return-void

    :cond_1b
    invoke-static {p0, p1}, Ly14;->E(Lzn5;Lzn5;)V

    return-void
.end method

.method public final c(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lz05;->h:I

    iget-object v1, p0, Lz05;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lz05;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iget v0, p0, Lz05;->h:I

    iget-object v1, p0, Lz05;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lz05;->h:I

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public final d()C
    .locals 2

    iget v0, p0, Lz05;->h:I

    iget-object v1, p0, Lz05;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lz05;->g:Ljava/lang/String;

    iget p0, p0, Lz05;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e(Lnl2;)V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lz05;->i:Lnl2;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lnl2;->e:Lnl2;

    if-eq v2, p1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v1, :cond_b

    iget-object v2, v1, Lnl2;->a:Ldq8;

    iget-char v3, v1, Lnl2;->b:C

    iget-object v4, p0, Lz05;->e:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lol2;

    iget-boolean v5, v1, Lnl2;->d:Z

    if-eqz v5, :cond_a

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {v4}, Lol2;->c()C

    move-result v5

    iget-object v6, v1, Lnl2;->e:Lnl2;

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_2
    if-eqz v6, :cond_3

    if-eq v6, p1, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v6, v10, :cond_3

    iget-boolean v10, v6, Lnl2;->c:Z

    if-eqz v10, :cond_2

    iget-char v10, v6, Lnl2;->b:C

    if-ne v10, v5, :cond_2

    invoke-interface {v4, v6, v1}, Lol2;->e(Lnl2;Lnl2;)I

    move-result v8

    const/4 v9, 0x1

    if-lez v8, :cond_2

    move v5, v9

    goto :goto_3

    :cond_2
    iget-object v6, v6, Lnl2;->e:Lnl2;

    goto :goto_2

    :cond_3
    move v5, v9

    move v9, v7

    :goto_3
    if-nez v9, :cond_5

    if-nez v5, :cond_4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iget-object v3, v1, Lnl2;->e:Lnl2;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lnl2;->c:Z

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lz05;->f(Lnl2;)V

    :cond_4
    iget-object v1, v1, Lnl2;->f:Lnl2;

    goto :goto_1

    :cond_5
    iget-object v3, v6, Lnl2;->a:Ldq8;

    iget v5, v6, Lnl2;->g:I

    sub-int/2addr v5, v8

    iput v5, v6, Lnl2;->g:I

    iget v5, v1, Lnl2;->g:I

    sub-int/2addr v5, v8

    iput v5, v1, Lnl2;->g:I

    iget-object v5, v3, Ldq8;->f:Ljava/lang/String;

    invoke-static {v8, v7, v5}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Ldq8;->f:Ljava/lang/String;

    iget-object v5, v2, Ldq8;->f:Ljava/lang/String;

    invoke-static {v8, v7, v5}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Ldq8;->f:Ljava/lang/String;

    iget-object v5, v1, Lnl2;->e:Lnl2;

    :goto_4
    if-eqz v5, :cond_6

    if-eq v5, v6, :cond_6

    iget-object v7, v5, Lnl2;->e:Lnl2;

    invoke-virtual {p0, v5}, Lz05;->f(Lnl2;)V

    move-object v5, v7

    goto :goto_4

    :cond_6
    if-eq v3, v2, :cond_8

    iget-object v5, v3, Lzn5;->e:Lzn5;

    if-ne v5, v2, :cond_7

    goto :goto_5

    :cond_7
    iget-object v7, v2, Lzn5;->d:Lzn5;

    invoke-static {v5, v7}, Ly14;->E(Lzn5;Lzn5;)V

    :cond_8
    :goto_5
    invoke-interface {v4, v3, v2, v8}, Lol2;->d(Ldq8;Ldq8;I)V

    iget v3, v6, Lnl2;->g:I

    if-nez v3, :cond_9

    iget-object v3, v6, Lnl2;->a:Ldq8;

    invoke-virtual {v3}, Lzn5;->f()V

    invoke-virtual {p0, v6}, Lz05;->f(Lnl2;)V

    :cond_9
    iget v3, v1, Lnl2;->g:I

    if-nez v3, :cond_0

    iget-object v3, v1, Lnl2;->f:Lnl2;

    invoke-virtual {v2}, Lzn5;->f()V

    invoke-virtual {p0, v1}, Lz05;->f(Lnl2;)V

    move-object v1, v3

    goto/16 :goto_1

    :cond_a
    :goto_6
    iget-object v1, v1, Lnl2;->f:Lnl2;

    goto/16 :goto_1

    :cond_b
    :goto_7
    iget-object v0, p0, Lz05;->i:Lnl2;

    if-eqz v0, :cond_c

    if-eq v0, p1, :cond_c

    invoke-virtual {p0, v0}, Lz05;->f(Lnl2;)V

    goto :goto_7

    :cond_c
    return-void
.end method

.method public final f(Lnl2;)V
    .locals 2

    iget-object v0, p1, Lnl2;->e:Lnl2;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lnl2;->f:Lnl2;

    iput-object v1, v0, Lnl2;->f:Lnl2;

    :cond_0
    iget-object p1, p1, Lnl2;->f:Lnl2;

    if-nez p1, :cond_1

    iput-object v0, p0, Lz05;->i:Lnl2;

    return-void

    :cond_1
    iput-object v0, p1, Lnl2;->e:Lnl2;

    return-void
.end method
