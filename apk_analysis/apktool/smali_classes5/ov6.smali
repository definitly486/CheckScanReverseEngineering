.class public final Lov6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final e:[C

.field public static final f:[Ljava/lang/String;

.field public static final g:[C

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;


# instance fields
.field public final b:Lhx8;

.field public final c:Ljava/lang/String;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lov6;->e:[C

    const-string v5, "*="

    const-string v6, "~="

    const-string v1, "="

    const-string v2, "!="

    const-string v3, "^="

    const-string v4, "$="

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lov6;->f:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lov6;->g:[C

    const-string v1, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lov6;->h:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lov6;->i:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 2
        0x3es
        0x2bs
        0x7es
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2cs
        0x29s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lyb9;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lov6;->c:Ljava/lang/String;

    new-instance v0, Lhx8;

    invoke-direct {v0, p1}, Lhx8;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lov6;->b:Lhx8;

    return-void
.end method

.method public static Q(Ljava/lang/String;)Ly03;
    .locals 4

    :try_start_0
    new-instance v0, Lov6;

    invoke-direct {v0, p0}, Lov6;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lov6;->V()Ly03;

    move-result-object p0

    iget-object v1, v0, Lov6;->b:Lhx8;

    invoke-virtual {v1}, Lhx8;->p()Z

    iget-object v1, v1, Lhx8;->b:Lea1;

    invoke-virtual {v1}, Lea1;->Z()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lov6;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_0
    :try_start_3
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v2, "Could not parse query \'%s\': unexpected token at \'%s\'"

    iget-object v3, v0, Lov6;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lea1;->V()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lov6;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ly03;Ly03;)Ly03;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p0, Lio1$a;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lio1$a;

    iget-object v1, v0, Lio1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lio1;->c()V

    return-object p0

    :cond_1
    new-instance v0, Lio1$a;

    filled-new-array {p0, p1}, [Ly03;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lio1;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final E(Z)Ly03;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v0, ":matches"

    :goto_0
    invoke-virtual {p0}, Lov6;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(regex) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyb9;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Li17;->a(Ljava/lang/String;)Li17;

    move-result-object v0

    iget-boolean p0, p0, Lov6;->d:Z

    if-eqz p0, :cond_1

    new-instance p0, Lao5$d;

    invoke-direct {p0, v0}, Lao5$d;-><init>(Li17;)V

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    new-instance p0, Ly03$k0;

    invoke-direct {p0, v0}, Ly03$k0;-><init>(Li17;)V

    return-object p0

    :cond_2
    new-instance p0, Ly03$j0;

    invoke-direct {p0, v0}, Ly03$j0;-><init>(Li17;)V

    return-object p0
.end method

.method public final P(Z)Ly03;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ":matchesWholeOwnText"

    goto :goto_0

    :cond_0
    const-string v0, ":matchesWholeText"

    :goto_0
    invoke-virtual {p0}, Lov6;->n()Ljava/lang/String;

    move-result-object p0

    const-string v1, "(regex) query must not be empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lyb9;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Li17;->a(Ljava/lang/String;)Li17;

    move-result-object p0

    if-eqz p1, :cond_1

    new-instance p1, Ly03$l0;

    invoke-direct {p1, p0}, Ly03$l0;-><init>(Li17;)V

    return-object p1

    :cond_1
    new-instance p1, Ly03$m0;

    invoke-direct {p1, p0}, Ly03$m0;-><init>(Li17;)V

    return-object p1
.end method

.method public final U()Ly03;
    .locals 7

    iget-object v0, p0, Lov6;->b:Lhx8;

    invoke-virtual {v0}, Lhx8;->p()Z

    iget-object v1, v0, Lhx8;->b:Lea1;

    sget-object v2, Lov6;->e:[C

    invoke-virtual {v1, v2}, Lea1;->r0([C)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcb8$h;

    invoke-direct {v3}, Ly03;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lov6;->X()Ly03;

    move-result-object v3

    :goto_0
    invoke-virtual {v0}, Lhx8;->p()Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lea1;->r0([C)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lea1;->p()C

    move-result v4

    goto :goto_2

    :cond_2
    sget-object v6, Lov6;->g:[C

    invoke-virtual {v1, v6}, Lea1;->r0([C)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lov6;->X()Ly03;

    move-result-object v6

    if-eq v4, v5, :cond_8

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_7

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_5

    const/16 v5, 0x7e

    if-ne v4, v5, :cond_4

    new-instance v4, Lcb8$g;

    invoke-direct {v4, v3}, Lcb8;-><init>(Ly03;)V

    invoke-static {v4, v6}, Lov6;->a(Ly03;Ly03;)Ly03;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unknown combinator \'%s\'"

    invoke-direct {p0, v1, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_5
    instance-of v4, v3, Lcb8$c;

    if-eqz v4, :cond_6

    check-cast v3, Lcb8$c;

    goto :goto_3

    :cond_6
    new-instance v4, Lcb8$c;

    invoke-direct {v4, v3}, Lcb8$c;-><init>(Ly03;)V

    move-object v3, v4

    :goto_3
    iget-object v4, v3, Lcb8$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v3, Lcb8$c;->d:I

    invoke-virtual {v6}, Ly03;->a()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v3, Lcb8$c;->d:I

    iget-boolean v4, v3, Lcb8;->b:Z

    invoke-virtual {v6}, Ly03;->b()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, v3, Lcb8;->b:Z

    goto :goto_0

    :cond_7
    new-instance v4, Lcb8$d;

    invoke-direct {v4, v3}, Lcb8;-><init>(Ly03;)V

    invoke-static {v4, v6}, Lov6;->a(Ly03;Ly03;)Ly03;

    move-result-object v3

    goto :goto_0

    :cond_8
    new-instance v4, Lcb8$a;

    invoke-direct {v4, v3}, Lcb8;-><init>(Ly03;)V

    invoke-static {v4, v6}, Lov6;->a(Ly03;Ly03;)Ly03;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    :goto_4
    return-object v3
.end method

.method public final V()Ly03;
    .locals 4

    invoke-virtual {p0}, Lov6;->U()Ly03;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lov6;->b:Lhx8;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lhx8;->y(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lov6;->U()Ly03;

    move-result-object v1

    instance-of v2, v0, Lio1$b;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lio1$b;

    iget-object v3, v2, Lio1;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lio1;->c()V

    goto :goto_0

    :cond_0
    new-instance v2, Lio1$b;

    filled-new-array {v0, v1}, [Ly03;

    move-result-object v0

    invoke-direct {v2, v0}, Lio1$b;-><init>([Ly03;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final X()Ly03;
    .locals 8

    iget-object v0, p0, Lov6;->b:Lhx8;

    invoke-virtual {v0}, Lhx8;->p()Z

    iget-object v1, v0, Lhx8;->b:Lea1;

    invoke-virtual {v1}, Lea1;->X()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    const-string v3, "*|"

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Lea1;->x0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Lhx8;->y(C)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ly03$a;

    invoke-direct {v0}, Ly03;-><init>()V

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_2
    :goto_0
    invoke-static {}, Lja8;->a()Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_1
    invoke-virtual {v1}, Lea1;->Z()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lea1;->X()C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lhx8;->m()V

    invoke-virtual {v1}, Lea1;->Z()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lea1;->p()C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lea1;->X()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lhx8;->c:[C

    invoke-virtual {v1, v5}, Lea1;->r0([C)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhx8;->m()V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lja8;->k(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmo5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyb9;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, ":"

    if-eqz v2, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lio1$b;

    new-instance v6, Ly03$n0;

    invoke-direct {v6, v0}, Ly03$n0;-><init>(Ljava/lang/String;)V

    new-instance v7, Ly03$o0;

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ly03$o0;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Ly03;

    aput-object v6, v0, v3

    const/4 v3, 0x1

    aput-object v7, v0, v3

    invoke-direct {v2, v0}, Lio1$b;-><init>([Ly03;)V

    :goto_2
    move-object v0, v2

    goto :goto_3

    :cond_6
    const-string v2, "|*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ly03$p0;

    invoke-direct {v2, v0}, Ly03$p0;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v2, Ly03$n0;

    invoke-direct {v2, v0}, Ly03$n0;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lov6;->Z()Ly03;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v0, v2}, Lov6;->a(Ly03;Ly03;)Ly03;

    move-result-object v0

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object p0, p0, Lov6;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lea1;->V()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, p0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final Z()Ly03;
    .locals 12

    iget-object v0, p0, Lov6;->b:Lhx8;

    iget-object v1, v0, Lhx8;->b:Lea1;

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Lhx8;->y(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lhx8;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyb9;->c(Ljava/lang/String;)V

    new-instance v0, Ly03$r;

    invoke-direct {v0, p0}, Ly03$r;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Lhx8;->y(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lhx8;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyb9;->c(Ljava/lang/String;)V

    new-instance v0, Ly03$k;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ly03$k;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lea1;->q0(C)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Lhx8;

    const/16 v3, 0x5d

    invoke-virtual {v0, v2, v3}, Lhx8;->n(CC)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lhx8;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lov6;->y(Lhx8;)Ly03;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lhx8;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Lhx8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    const-string v2, "::"

    invoke-virtual {v1, v2}, Lea1;->n0(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lov6;->c:Ljava/lang/String;

    const/4 v10, 0x1

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lhx8;->o()Ljava/lang/String;

    move-result-object v0

    iput-boolean v10, p0, Lov6;->d:Z

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v3, v7

    goto :goto_2

    :sswitch_0
    const-string v1, "leafnode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :sswitch_1
    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :sswitch_2
    const-string v1, "cdata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :sswitch_3
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v6

    goto :goto_2

    :sswitch_4
    const-string v1, "node"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v10

    goto :goto_2

    :sswitch_5
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    move v3, v8

    :cond_8
    :goto_2
    packed-switch v3, :pswitch_data_0

    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v1, "Could not parse query \'%s\': unknown node type \'::%s\'"

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    new-instance v1, Lao5$c;

    invoke-direct {v1, v0}, Lao5$c;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    new-instance v1, Lao5$c;

    invoke-direct {v1, v0}, Lao5$c;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    new-instance v1, Lao5$c;

    invoke-direct {v1, v0}, Lao5$c;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    new-instance v1, Lao5$c;

    invoke-direct {v1, v0}, Lao5$c;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    new-instance v1, Lao5$c;

    invoke-direct {v1, v0}, Lao5$c;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    new-instance v1, Lao5$c;

    invoke-direct {v1, v0}, Lao5$c;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Lov6;->Z()Ly03;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v1, v0}, Lov6;->a(Ly03;Ly03;)Ly03;

    move-result-object v1

    goto :goto_3

    :cond_9
    iput-boolean v8, p0, Lov6;->d:Z

    return-object v1

    :cond_a
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lhx8;->y(C)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Lhx8;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :goto_4
    move v3, v7

    goto/16 :goto_5

    :sswitch_6
    const-string v3, "last-of-type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    const/16 v3, 0x1c

    goto/16 :goto_5

    :sswitch_7
    const-string v3, "containsWholeText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    const/16 v3, 0x1b

    goto/16 :goto_5

    :sswitch_8
    const-string v3, "matchesOwn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_d
    const/16 v3, 0x1a

    goto/16 :goto_5

    :sswitch_9
    const-string v3, "only-of-type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    const/16 v3, 0x19

    goto/16 :goto_5

    :sswitch_a
    const-string v3, "first-of-type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4

    :cond_f
    const/16 v3, 0x18

    goto/16 :goto_5

    :sswitch_b
    const-string v3, "matchesWholeOwnText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_4

    :cond_10
    const/16 v3, 0x17

    goto/16 :goto_5

    :sswitch_c
    const-string v3, "matches"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_4

    :cond_11
    const/16 v3, 0x16

    goto/16 :goto_5

    :sswitch_d
    const-string v3, "last-child"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_4

    :cond_12
    const/16 v3, 0x15

    goto/16 :goto_5

    :sswitch_e
    const-string v3, "matchText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_4

    :cond_13
    const/16 v3, 0x14

    goto/16 :goto_5

    :sswitch_f
    const-string v3, "containsOwn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_4

    :cond_14
    const/16 v3, 0x13

    goto/16 :goto_5

    :sswitch_10
    const-string v3, "empty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_4

    :cond_15
    const/16 v3, 0x12

    goto/16 :goto_5

    :sswitch_11
    const-string v3, "blank"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_4

    :cond_16
    const/16 v3, 0x11

    goto/16 :goto_5

    :sswitch_12
    const-string v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_4

    :cond_17
    const/16 v3, 0x10

    goto/16 :goto_5

    :sswitch_13
    const-string v3, "not"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_4

    :cond_18
    const/16 v3, 0xf

    goto/16 :goto_5

    :sswitch_14
    const-string v3, "has"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_4

    :cond_19
    const/16 v3, 0xe

    goto/16 :goto_5

    :sswitch_15
    const-string v3, "lt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_4

    :cond_1a
    const/16 v3, 0xd

    goto/16 :goto_5

    :sswitch_16
    const-string v3, "is"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_4

    :cond_1b
    const/16 v3, 0xc

    goto/16 :goto_5

    :sswitch_17
    const-string v3, "gt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_4

    :cond_1c
    const/16 v3, 0xb

    goto/16 :goto_5

    :sswitch_18
    const-string v3, "eq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_4

    :cond_1d
    const/16 v3, 0xa

    goto/16 :goto_5

    :sswitch_19
    const-string v3, "containsWholeOwnText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_4

    :cond_1e
    const/16 v3, 0x9

    goto/16 :goto_5

    :sswitch_1a
    const-string v3, "contains"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_4

    :cond_1f
    const/16 v3, 0x8

    goto/16 :goto_5

    :sswitch_1b
    const-string v3, "nth-last-of-type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_4

    :cond_20
    const/4 v3, 0x7

    goto :goto_5

    :sswitch_1c
    const-string v3, "nth-of-type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_4

    :cond_21
    const/4 v3, 0x6

    goto :goto_5

    :sswitch_1d
    const-string v4, "only-child"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_4

    :sswitch_1e
    const-string v3, "nth-last-child"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_4

    :cond_22
    move v3, v4

    goto :goto_5

    :sswitch_1f
    const-string v3, "nth-child"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_4

    :cond_23
    move v3, v5

    goto :goto_5

    :sswitch_20
    const-string v3, "matchesWholeText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_4

    :cond_24
    move v3, v6

    goto :goto_5

    :sswitch_21
    const-string v3, "first-child"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_4

    :cond_25
    move v3, v10

    goto :goto_5

    :sswitch_22
    const-string v3, "containsData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_4

    :cond_26
    move v3, v8

    :cond_27
    :goto_5
    const/16 v2, 0x29

    const/16 v4, 0x28

    packed-switch v3, :pswitch_data_1

    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {v1}, Lea1;->V()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {p0, v1, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :pswitch_6
    new-instance p0, Ly03$a0;

    invoke-direct {p0, v8, v10}, Ly03$q;-><init>(II)V

    return-object p0

    :pswitch_7
    invoke-virtual {p0, v8}, Lov6;->p(Z)Ly03;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, v10}, Lov6;->E(Z)Ly03;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p0, Ly03$g0;

    invoke-direct {p0}, Ly03;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Ly03$y;

    invoke-direct {p0, v8, v10}, Ly03$q;-><init>(II)V

    return-object p0

    :pswitch_b
    invoke-virtual {p0, v10}, Lov6;->P(Z)Ly03;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, v8}, Lov6;->E(Z)Ly03;

    move-result-object p0

    return-object p0

    :pswitch_d
    new-instance p0, Ly03$z;

    invoke-direct {p0}, Ly03;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, Ly03$i0;

    invoke-direct {p0}, Ly03;-><init>()V

    sget-boolean v0, Ly03$i0;->a:Z

    if-nez v0, :cond_28

    sput-boolean v10, Ly03$i0;->a:Z

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WARNING: :matchText selector is deprecated and will be removed in jsoup 1.24.1. Use Element#selectNodes(String, Class) with selector ::textnode and class TextNode instead."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_28
    return-object p0

    :pswitch_f
    invoke-virtual {p0, v10}, Lov6;->o(Z)Ly03;

    move-result-object p0

    return-object p0

    :pswitch_10
    new-instance p0, Ly03$w;

    invoke-direct {p0}, Ly03;-><init>()V

    return-object p0

    :pswitch_11
    new-instance p0, Lao5$a;

    invoke-direct {p0}, Ly03;-><init>()V

    return-object p0

    :pswitch_12
    new-instance p0, Ly03$h0;

    invoke-direct {p0}, Ly03;-><init>()V

    return-object p0

    :pswitch_13
    invoke-virtual {p0}, Lov6;->n()Ljava/lang/String;

    move-result-object p0

    const-string v0, ":not(selector) subselect must not be empty"

    invoke-static {p0, v0}, Lyb9;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcb8$f;

    invoke-static {p0}, Lov6;->Q(Ljava/lang/String;)Ly03;

    move-result-object p0

    invoke-direct {v0, p0}, Lcb8;-><init>(Ly03;)V

    return-object v0

    :pswitch_14
    invoke-virtual {v0, v4}, Lhx8;->y(C)Z

    move-result v1

    const-string v3, ":has() must have a selector"

    invoke-static {v3, v1}, Lyb9;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lov6;->V()Ly03;

    move-result-object p0

    invoke-virtual {v0, v2}, Lhx8;->y(C)Z

    move-result v0

    invoke-static {v3, v0}, Lyb9;->a(Ljava/lang/String;Z)V

    new-instance v0, Lcb8$b;

    invoke-direct {v0, p0}, Lcb8;-><init>(Ly03;)V

    instance-of v1, p0, Lio1;

    if-eqz v1, :cond_2a

    check-cast p0, Lio1;

    iget-object p0, p0, Lio1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly03;

    instance-of v2, v1, Lcb8$g;

    if-nez v2, :cond_2a

    instance-of v1, v1, Lcb8$d;

    if-eqz v1, :cond_29

    :cond_2a
    return-object v0

    :pswitch_15
    new-instance v0, Ly03$v;

    invoke-virtual {p0}, Lov6;->m()I

    move-result p0

    invoke-direct {v0, p0}, Ly03$t;-><init>(I)V

    return-object v0

    :pswitch_16
    invoke-virtual {v0, v4}, Lhx8;->y(C)Z

    move-result v1

    const-string v3, ":is() must have a selector"

    invoke-static {v3, v1}, Lyb9;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lov6;->V()Ly03;

    move-result-object p0

    invoke-virtual {v0, v2}, Lhx8;->y(C)Z

    move-result v0

    invoke-static {v3, v0}, Lyb9;->a(Ljava/lang/String;Z)V

    new-instance v0, Lcb8$e;

    invoke-direct {v0, p0}, Lcb8;-><init>(Ly03;)V

    return-object v0

    :pswitch_17
    new-instance v0, Ly03$u;

    invoke-virtual {p0}, Lov6;->m()I

    move-result p0

    invoke-direct {v0, p0}, Ly03$t;-><init>(I)V

    return-object v0

    :pswitch_18
    new-instance v0, Ly03$s;

    invoke-virtual {p0}, Lov6;->m()I

    move-result p0

    invoke-direct {v0, p0}, Ly03$t;-><init>(I)V

    return-object v0

    :pswitch_19
    invoke-virtual {p0, v10}, Lov6;->p(Z)Ly03;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0, v8}, Lov6;->o(Z)Ly03;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0, v10, v10}, Lov6;->v(ZZ)Ly03$q;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-virtual {p0, v8, v10}, Lov6;->v(ZZ)Ly03$q;

    move-result-object p0

    return-object p0

    :pswitch_1d
    new-instance p0, Ly03$f0;

    invoke-direct {p0}, Ly03;-><init>()V

    return-object p0

    :pswitch_1e
    invoke-virtual {p0, v10, v8}, Lov6;->v(ZZ)Ly03$q;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0, v8, v8}, Lov6;->v(ZZ)Ly03$q;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p0, v8}, Lov6;->P(Z)Ly03;

    move-result-object p0

    return-object p0

    :pswitch_21
    new-instance p0, Ly03$x;

    invoke-direct {p0}, Ly03;-><init>()V

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lov6;->n()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lhx8;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":containsData(text) query must not be empty"

    invoke-static {p0, v0}, Lyb9;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly03$l;

    invoke-direct {v0, p0}, Ly03$l;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2b
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x33ae02 -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5a2068d -> :sswitch_2
        0x38a5ee5f -> :sswitch_1
        0x5d2b6e60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fa84d97 -> :sswitch_22
        -0x7f5fe841 -> :sswitch_21
        -0x73a0d86f -> :sswitch_20
        -0x6899dd0f -> :sswitch_1f
        -0x6123fd90 -> :sswitch_1e
        -0x38814845 -> :sswitch_1d
        -0x357f41fb -> :sswitch_1c
        -0x3403463c -> :sswitch_1b
        -0x21d289e1 -> :sswitch_1a
        -0x34d8c25 -> :sswitch_19
        0xcac -> :sswitch_18
        0xced -> :sswitch_17
        0xd2a -> :sswitch_16
        0xd88 -> :sswitch_15
        0x1929a -> :sswitch_14
        0x1aad3 -> :sswitch_13
        0x3580e2 -> :sswitch_12
        0x5979154 -> :sswitch_11
        0x5c2854d -> :sswitch_10
        0xc6618e7 -> :sswitch_f
        0x24992892 -> :sswitch_e
        0x31d1d325 -> :sswitch_d
        0x321e8933 -> :sswitch_c
        0x4adb88ef -> :sswitch_b
        0x4d10b753 -> :sswitch_a
        0x56c7484f -> :sswitch_9
        0x6f813d53 -> :sswitch_8
        0x780e0425 -> :sswitch_7
        0x78c13139 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lov6;->b:Lhx8;

    invoke-virtual {p0}, Lhx8;->close()V

    return-void
.end method

.method public final m()I
    .locals 4

    invoke-virtual {p0}, Lov6;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lja8;->f(C)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    const-string v1, "Index must be numeric"

    invoke-static {v1, v0}, Lyb9;->a(Ljava/lang/String;Z)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x28

    const/16 v1, 0x29

    iget-object p0, p0, Lov6;->b:Lhx8;

    invoke-virtual {p0, v0, v1}, Lhx8;->n(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o(Z)Ly03;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v0, ":contains"

    :goto_0
    invoke-virtual {p0}, Lov6;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhx8;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(text) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyb9;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lov6;->d:Z

    if-eqz p0, :cond_1

    new-instance p0, Lao5$b;

    invoke-direct {p0, v1}, Lao5$b;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    new-instance p0, Ly03$m;

    invoke-direct {p0, v1}, Ly03$m;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Ly03$n;

    invoke-direct {p0, v1}, Ly03$n;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Z)Ly03;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ":containsWholeOwnText"

    goto :goto_0

    :cond_0
    const-string v0, ":containsWholeText"

    :goto_0
    invoke-virtual {p0}, Lov6;->n()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lhx8;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(text) query must not be empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lyb9;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance p1, Ly03$o;

    invoke-direct {p1, p0}, Ly03$o;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p1, Ly03$p;

    invoke-direct {p1, p0}, Ly03$p;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lov6;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final v(ZZ)Ly03$q;
    .locals 7

    invoke-virtual {p0}, Lov6;->n()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmo5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "odd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "even"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    sget-object v0, Lov6;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const-string v5, ""

    const-string v6, "^\\+"

    if-eqz v4, :cond_5

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v2, p0

    goto :goto_0

    :cond_3
    const-string p0, "-"

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, -0x1

    :cond_4
    move v2, v1

    :goto_0
    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v1, p0

    goto :goto_1

    :cond_5
    sget-object v0, Lov6;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v2, v3

    :goto_1
    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    new-instance p0, Ly03$d0;

    invoke-direct {p0, v2, v1}, Ly03$q;-><init>(II)V

    return-object p0

    :cond_6
    new-instance p0, Ly03$e0;

    invoke-direct {p0, v2, v1}, Ly03$q;-><init>(II)V

    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    new-instance p0, Ly03$c0;

    invoke-direct {p0, v2, v1}, Ly03$q;-><init>(II)V

    return-object p0

    :cond_8
    new-instance p0, Ly03$b0;

    invoke-direct {p0, v2, v1}, Ly03$q;-><init>(II)V

    return-object p0

    :cond_9
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string p2, "Could not parse nth-index \'%s\': unexpected format"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public final y(Lhx8;)Ly03;
    .locals 4

    iget-object v0, p1, Lhx8;->b:Lea1;

    invoke-static {}, Lja8;->a()Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Lea1;->Z()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    sget-object v3, Lov6;->f:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lea1;->x0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lea1;->p()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_2
    invoke-static {v1}, Lja8;->k(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmo5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyb9;->c(Ljava/lang/String;)V

    const-string v2, "abs:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p1}, Lhx8;->p()Z

    invoke-virtual {v0}, Lea1;->Z()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "^"

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ly03$d;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ly03$d;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    const-string p0, "*"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ly03$d;

    const-string p1, ""

    invoke-direct {p0, p1}, Ly03$d;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p0, Ly03$b;

    invoke-direct {p0, v1}, Ly03$b;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lhx8;->y(C)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p0, Ly03$e;

    invoke-virtual {v0}, Lea1;->V()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Ly03$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_6
    const-string p1, "!="

    invoke-virtual {v0, p1}, Lea1;->n0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p0, Ly03$i;

    invoke-virtual {v0}, Lea1;->V()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Ly03$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_7
    const-string p1, "^="

    invoke-virtual {v0, p1}, Lea1;->n0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p0, Ly03$j;

    invoke-virtual {v0}, Lea1;->V()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Ly03$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_8
    const-string p1, "$="

    invoke-virtual {v0, p1}, Lea1;->n0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p0, Ly03$g;

    invoke-virtual {v0}, Lea1;->V()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Ly03$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_9
    const-string p1, "*="

    invoke-virtual {v0, p1}, Lea1;->n0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p0, Ly03$f;

    invoke-virtual {v0}, Lea1;->V()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Ly03$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_a
    const-string p1, "~="

    invoke-virtual {v0, p1}, Lea1;->n0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p0, Ly03$h;

    invoke-virtual {v0}, Lea1;->V()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Li17;->a(Ljava/lang/String;)Li17;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Ly03$h;-><init>(Ljava/lang/String;Li17;)V

    return-object p0

    :cond_b
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object p0, p0, Lov6;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lea1;->V()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {p1, v0, p0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_c
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    const-string p1, "Absolute attribute key must have a name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
