.class public final Ljm1;
.super Lp54;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lz05;->o:Ljava/util/regex/Pattern;

    sput-object v0, Ljm1;->e:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final b()Lzn5;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lp54;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lp54;->d:I

    iget-object v3, v0, Lp54;->a:Lz05;

    iget-object v4, v3, Lz05;->j:Lpt0;

    const-string v5, "]"

    if-nez v4, :cond_0

    invoke-virtual {v0, v5}, Lp54;->f(Ljava/lang/String;)Ldq8;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v6, v4, Lpt0;->a:Ldq8;

    iget-boolean v7, v4, Lpt0;->c:Z

    iget-boolean v8, v4, Lpt0;->f:Z

    if-nez v8, :cond_1

    iget-object v1, v4, Lpt0;->d:Lpt0;

    iput-object v1, v3, Lz05;->j:Lpt0;

    invoke-virtual {v0, v5}, Lp54;->f(Ljava/lang/String;)Ldq8;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lp54;->c()C

    move-result v3

    const/16 v8, 0x28

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-ne v3, v8, :cond_8

    iget v3, v0, Lp54;->d:I

    add-int/2addr v3, v2

    iput v3, v0, Lp54;->d:I

    invoke-virtual {v0}, Lp54;->e()V

    iget-object v3, v0, Lp54;->a:Lz05;

    iget v8, v0, Lp54;->d:I

    iput v8, v3, Lz05;->h:I

    iget-object v12, v3, Lz05;->g:Ljava/lang/String;

    invoke-static {v8, v12}, Lo8;->t(ILjava/lang/CharSequence;)I

    move-result v8

    if-ne v8, v10, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lz05;->d()C

    move-result v12

    iget-object v13, v3, Lz05;->g:Ljava/lang/String;

    iget v14, v3, Lz05;->h:I

    const/16 v15, 0x3c

    if-ne v12, v15, :cond_3

    add-int/2addr v14, v2

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v13, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_3
    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :goto_0
    iput v8, v3, Lz05;->h:I

    invoke-static {v12}, Lw03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v8, v0, Lp54;->a:Lz05;

    iget v8, v8, Lz05;->h:I

    iput v8, v0, Lp54;->d:I

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lp54;->e()V

    iget-object v8, v0, Lp54;->c:Ljava/lang/String;

    iget v12, v0, Lp54;->d:I

    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v8, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v12, Ljm1;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lp54;->a:Lz05;

    iget v12, v0, Lp54;->d:I

    iput v12, v8, Lz05;->h:I

    iget-object v13, v8, Lz05;->g:Ljava/lang/String;

    invoke-static {v12, v13}, Lo8;->v(ILjava/lang/CharSequence;)I

    move-result v12

    if-ne v12, v10, :cond_4

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    iget-object v13, v8, Lz05;->g:Ljava/lang/String;

    iget v14, v8, Lz05;->h:I

    add-int/2addr v14, v2

    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput v12, v8, Lz05;->h:I

    invoke-static {v13}, Lw03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    iget-object v12, v0, Lp54;->a:Lz05;

    iget v12, v12, Lz05;->h:I

    iput v12, v0, Lp54;->d:I

    invoke-virtual {v0}, Lp54;->e()V

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v0}, Lp54;->c()C

    move-result v12

    const/16 v13, 0x29

    if-ne v12, v13, :cond_6

    iget v12, v0, Lp54;->d:I

    add-int/2addr v12, v2

    iput v12, v0, Lp54;->d:I

    move v12, v2

    goto :goto_5

    :cond_6
    iput v1, v0, Lp54;->d:I

    move v12, v9

    goto :goto_5

    :cond_7
    move v12, v9

    :goto_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    move v12, v9

    const/4 v3, 0x0

    goto :goto_4

    :goto_5
    if-nez v12, :cond_10

    iget v13, v0, Lp54;->d:I

    iget-object v14, v0, Lp54;->a:Lz05;

    iput v13, v14, Lz05;->h:I

    iget-object v15, v14, Lz05;->g:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v13, v15, :cond_c

    iget-object v15, v14, Lz05;->g:Ljava/lang/String;

    iget v11, v14, Lz05;->h:I

    invoke-virtual {v15, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v15, 0x5b

    if-eq v11, v15, :cond_9

    goto :goto_6

    :cond_9
    iget v11, v14, Lz05;->h:I

    add-int/2addr v11, v2

    iget-object v15, v14, Lz05;->g:Ljava/lang/String;

    invoke-static {v11, v15}, Lo8;->u(ILjava/lang/CharSequence;)I

    move-result v15

    sub-int v11, v15, v11

    if-eq v15, v10, :cond_c

    const/16 v10, 0x3e7

    if-le v11, v10, :cond_a

    goto :goto_6

    :cond_a
    iget-object v10, v14, Lz05;->g:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v15, v10, :cond_c

    iget-object v10, v14, Lz05;->g:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5d

    if-eq v10, v11, :cond_b

    goto :goto_6

    :cond_b
    add-int/2addr v15, v2

    iput v15, v14, Lz05;->h:I

    :cond_c
    :goto_6
    iget-object v10, v0, Lp54;->a:Lz05;

    iget v10, v10, Lz05;->h:I

    iput v10, v0, Lp54;->d:I

    sub-int/2addr v10, v13

    const/4 v11, 0x2

    if-le v10, v11, :cond_d

    iget-object v11, v0, Lp54;->c:Ljava/lang/String;

    add-int/2addr v10, v13

    invoke-virtual {v11, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_d
    iget-boolean v10, v4, Lpt0;->g:Z

    if-nez v10, :cond_e

    iget-object v10, v0, Lp54;->c:Ljava/lang/String;

    iget v11, v4, Lpt0;->b:I

    invoke-virtual {v10, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_e
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_10

    sget-object v11, Lw03;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lw03;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lp54;->a:Lz05;

    iget-boolean v13, v11, Lz05;->b:Z

    if-eqz v13, :cond_f

    iget-object v11, v11, Lz05;->a:Lm54;

    iget-object v11, v11, Lm54;->c:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Loq4;

    goto :goto_8

    :cond_f
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_10

    iget-object v3, v11, Loq4;->g:Ljava/lang/String;

    iget-object v8, v11, Loq4;->h:Ljava/lang/String;

    goto :goto_9

    :cond_10
    move v2, v12

    :goto_9
    if-eqz v2, :cond_16

    if-eqz v7, :cond_11

    new-instance v1, Lw04;

    invoke-direct {v1, v3, v8}, Lw04;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    new-instance v1, Lhq4;

    invoke-direct {v1, v3, v8}, Lhq4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    iget-object v2, v6, Lzn5;->e:Lzn5;

    :goto_b
    if-eqz v2, :cond_12

    iget-object v3, v2, Lzn5;->e:Lzn5;

    invoke-virtual {v1, v2}, Lzn5;->b(Lzn5;)V

    move-object v2, v3

    goto :goto_b

    :cond_12
    iget-object v2, v4, Lpt0;->e:Lnl2;

    iget-object v3, v0, Lp54;->a:Lz05;

    iget v4, v0, Lp54;->d:I

    iput v4, v3, Lz05;->h:I

    invoke-virtual {v3, v2}, Lz05;->e(Lnl2;)V

    iget-object v2, v0, Lp54;->a:Lz05;

    iget v2, v2, Lz05;->h:I

    iput v2, v0, Lp54;->d:I

    iget-object v2, v1, Lzn5;->b:Lzn5;

    iget-object v3, v1, Lzn5;->c:Lzn5;

    if-ne v2, v3, :cond_13

    goto :goto_c

    :cond_13
    invoke-static {v2, v3}, Ly14;->E(Lzn5;Lzn5;)V

    :goto_c
    invoke-virtual {v6}, Lzn5;->f()V

    iget-object v0, v0, Lp54;->a:Lz05;

    iget-object v2, v0, Lz05;->j:Lpt0;

    iget-object v2, v2, Lpt0;->d:Lpt0;

    iput-object v2, v0, Lz05;->j:Lpt0;

    if-nez v7, :cond_15

    :goto_d
    if-eqz v2, :cond_15

    iget-boolean v0, v2, Lpt0;->c:Z

    if-nez v0, :cond_14

    iput-boolean v9, v2, Lpt0;->f:Z

    :cond_14
    iget-object v2, v2, Lpt0;->d:Lpt0;

    goto :goto_d

    :cond_15
    return-object v1

    :cond_16
    iput v1, v0, Lp54;->d:I

    iget-object v1, v0, Lp54;->a:Lz05;

    iget-object v2, v1, Lz05;->j:Lpt0;

    iget-object v2, v2, Lpt0;->d:Lpt0;

    iput-object v2, v1, Lz05;->j:Lpt0;

    invoke-virtual {v0, v5}, Lp54;->f(Ljava/lang/String;)Ldq8;

    move-result-object v0

    return-object v0
.end method

.method public final d()C
    .locals 0

    const/16 p0, 0x5d

    return p0
.end method
