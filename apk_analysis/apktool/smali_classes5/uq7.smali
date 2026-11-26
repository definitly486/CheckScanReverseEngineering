.class public abstract Luq7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ln67;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ldz3;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lm37$a;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3, v1}, Lm37$a;-><init>(Ln67;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    iget-object v3, v2, Lm37$a;->d:[Ljava/lang/annotation/Annotation;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "HEAD"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge v6, v4, :cond_12

    aget-object v10, v3, v6

    instance-of v11, v10, Lo72;

    if-eqz v11, :cond_0

    check-cast v10, Lo72;

    invoke-interface {v10}, Lo72;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DELETE"

    invoke-virtual {v2, v8, v7, v5}, Lm37$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_0
    instance-of v11, v10, Lgn3;

    if-eqz v11, :cond_1

    check-cast v10, Lgn3;

    invoke-interface {v10}, Lgn3;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GET"

    invoke-virtual {v2, v8, v7, v5}, Lm37$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_1
    instance-of v11, v10, Lzt3;

    if-eqz v11, :cond_2

    check-cast v10, Lzt3;

    invoke-interface {v10}, Lzt3;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v5}, Lm37$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_2
    instance-of v7, v10, Ly06;

    if-eqz v7, :cond_3

    check-cast v10, Ly06;

    invoke-interface {v10}, Ly06;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PATCH"

    invoke-virtual {v2, v9, v7, v8}, Lm37$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_3
    instance-of v7, v10, Lz06;

    if-eqz v7, :cond_4

    check-cast v10, Lz06;

    invoke-interface {v10}, Lz06;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "POST"

    invoke-virtual {v2, v9, v7, v8}, Lm37$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_4
    instance-of v7, v10, La16;

    if-eqz v7, :cond_5

    check-cast v10, La16;

    invoke-interface {v10}, La16;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PUT"

    invoke-virtual {v2, v9, v7, v8}, Lm37$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_5
    instance-of v7, v10, Llq5;

    if-eqz v7, :cond_6

    check-cast v10, Llq5;

    invoke-interface {v10}, Llq5;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OPTIONS"

    invoke-virtual {v2, v8, v7, v5}, Lm37$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_6
    instance-of v7, v10, Lau3;

    if-eqz v7, :cond_7

    check-cast v10, Lau3;

    invoke-interface {v10}, Lau3;->method()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10}, Lau3;->path()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10}, Lau3;->hasBody()Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lm37$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_7
    instance-of v7, v10, Lkv3;

    if-eqz v7, :cond_d

    check-cast v10, Lkv3;

    invoke-interface {v10}, Lkv3;->value()[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    if-eqz v11, :cond_c

    invoke-interface {v10}, Lkv3;->allowUnsafeNonAsciiValues()Z

    move-result v10

    new-instance v11, Ljv3$a;

    invoke-direct {v11}, Ljv3$a;-><init>()V

    array-length v12, v7

    move v13, v5

    :goto_1
    if-ge v13, v12, :cond_b

    aget-object v14, v7, v13

    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    move/from16 p1, v8

    const/4 v8, -0x1

    if-eq v15, v8, :cond_a

    if-eqz v15, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v15, v8, :cond_a

    invoke-virtual {v14, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Content-Type"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    :try_start_0
    sget-object v8, Lj95;->e:Ljava/util/regex/Pattern;

    invoke-static {v14}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v8

    iput-object v8, v2, Lm37$a;->u:Lj95;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Malformed content type: %s"

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {v11, v8, v14}, Ljv3$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v11, v8, v14}, Ljv3$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, p1

    goto :goto_1

    :cond_a
    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v9, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_b
    invoke-virtual {v11}, Ljv3$a;->e()Ljv3;

    move-result-object v7

    iput-object v7, v2, Lm37$a;->t:Ljv3;

    goto :goto_3

    :cond_c
    const-string v0, "@Headers annotation is empty."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_d
    move/from16 p1, v8

    instance-of v7, v10, Lkg5;

    const-string v8, "Only one encoding annotation is allowed."

    if-eqz v7, :cond_f

    iget-boolean v7, v2, Lm37$a;->q:Z

    if-nez v7, :cond_e

    move/from16 v7, p1

    iput-boolean v7, v2, Lm37$a;->r:Z

    goto :goto_3

    :cond_e
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v8, v0}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_f
    move/from16 v7, p1

    instance-of v10, v10, Loi3;

    if-eqz v10, :cond_11

    iget-boolean v10, v2, Lm37$a;->r:Z

    if-nez v10, :cond_10

    iput-boolean v7, v2, Lm37$a;->q:Z

    goto :goto_3

    :cond_10
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v8, v0}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_11
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_12
    iget-object v4, v2, Lm37$a;->o:Ljava/lang/String;

    if-eqz v4, :cond_80

    iget-boolean v4, v2, Lm37$a;->p:Z

    if-nez v4, :cond_15

    iget-boolean v4, v2, Lm37$a;->r:Z

    if-nez v4, :cond_14

    iget-boolean v4, v2, Lm37$a;->q:Z

    if-nez v4, :cond_13

    goto :goto_4

    :cond_13
    const-string v0, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_14
    const-string v0, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v9, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_15
    :goto_4
    iget-object v4, v2, Lm37$a;->e:[[Ljava/lang/annotation/Annotation;

    array-length v6, v4

    new-array v8, v6, [Lh36;

    iput-object v8, v2, Lm37$a;->w:[Lh36;

    add-int/lit8 v8, v6, -0x1

    move v10, v5

    :goto_5
    if-ge v10, v6, :cond_69

    iget-object v11, v2, Lm37$a;->w:[Lh36;

    iget-object v12, v2, Lm37$a;->f:[Ljava/lang/reflect/Type;

    aget-object v12, v12, v10

    aget-object v13, v4, v10

    if-ne v10, v8, :cond_16

    const/4 v14, 0x1

    goto :goto_6

    :cond_16
    move v14, v5

    :goto_6
    if-eqz v13, :cond_66

    array-length v15, v13

    move-object/from16 v16, v9

    move v9, v5

    :goto_7
    if-ge v9, v15, :cond_65

    aget-object v5, v13, v9

    move-object/from16 v17, v4

    instance-of v4, v5, Lg99;

    move/from16 v18, v4

    const-string v4, "@Path parameters may not be used with @Url."

    move/from16 v19, v6

    const-class v6, Ljava/lang/String;

    if-eqz v18, :cond_1f

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v5, v2, Lm37$a;->n:Z

    if-nez v5, :cond_1e

    iget-boolean v5, v2, Lm37$a;->j:Z

    if-nez v5, :cond_1d

    iget-boolean v4, v2, Lm37$a;->k:Z

    if-nez v4, :cond_1c

    iget-boolean v4, v2, Lm37$a;->l:Z

    if-nez v4, :cond_1b

    iget-boolean v4, v2, Lm37$a;->m:Z

    if-nez v4, :cond_1a

    iget-object v4, v2, Lm37$a;->s:Ljava/lang/String;

    if-nez v4, :cond_19

    const/4 v4, 0x1

    iput-boolean v4, v2, Lm37$a;->n:Z

    const-class v4, Lfz3;

    if-eq v12, v4, :cond_18

    if-eq v12, v6, :cond_18

    const-class v4, Ljava/net/URI;

    if-eq v12, v4, :cond_18

    instance-of v4, v12, Ljava/lang/Class;

    if-eqz v4, :cond_17

    move-object v4, v12

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.Uri"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_8

    :cond_17
    const-string v0, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_18
    :goto_8
    new-instance v4, Lh36$n;

    invoke-direct {v4, v10, v1}, Lh36$n;-><init>(ILjava/lang/reflect/Method;)V

    move-object/from16 v24, v7

    move/from16 v18, v8

    :goto_9
    move/from16 v21, v9

    move-object/from16 v22, v11

    move/from16 v20, v14

    move/from16 v23, v15

    goto/16 :goto_10

    :cond_19
    iget-object v0, v2, Lm37$a;->o:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "@Url cannot be used with @%s URL"

    invoke-static {v1, v10, v2, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1a
    const-string v0, "A @Url parameter must not come after a @QueryMap."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v2, 0x0

    const-string v0, "A @Url parameter must not come after a @QueryName."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1c
    const/4 v2, 0x0

    const-string v0, "A @Url parameter must not come after a @Query."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1d
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v4, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1e
    const/4 v2, 0x0

    const-string v0, "Multiple @Url method annotations found."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1f
    move/from16 v18, v8

    instance-of v8, v5, Lk46;

    move/from16 v20, v8

    iget-object v8, v2, Lm37$a;->a:Ln67;

    if-eqz v20, :cond_27

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v6, v2, Lm37$a;->k:Z

    if-nez v6, :cond_26

    iget-boolean v6, v2, Lm37$a;->l:Z

    if-nez v6, :cond_25

    iget-boolean v6, v2, Lm37$a;->m:Z

    if-nez v6, :cond_24

    iget-boolean v6, v2, Lm37$a;->n:Z

    if-nez v6, :cond_23

    iget-object v4, v2, Lm37$a;->s:Ljava/lang/String;

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    iput-boolean v4, v2, Lm37$a;->j:Z

    check-cast v5, Lk46;

    invoke-interface {v5}, Lk46;->value()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lm37$a;->z:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, v2, Lm37$a;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v8, v12, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v6, Lh36$i;

    iget-object v8, v2, Lm37$a;->c:Ljava/lang/reflect/Method;

    invoke-interface {v5}, Lk46;->encoded()Z

    move-result v5

    invoke-direct {v6, v8, v10, v4, v5}, Lh36$i;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Z)V

    move-object v4, v6

    move-object/from16 v24, v7

    goto/16 :goto_9

    :cond_20
    iget-object v0, v2, Lm37$a;->s:Ljava/lang/String;

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v1, v10, v2, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_21
    sget-object v0, Lm37$a;->y:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "@Path parameter name must match %s. Found: %s"

    invoke-static {v1, v10, v2, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_22
    iget-object v0, v2, Lm37$a;->o:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "@Path can only be used with relative url on @%s"

    invoke-static {v1, v10, v2, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_23
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v4, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_24
    const/4 v2, 0x0

    const-string v0, "A @Path parameter must not come after a @QueryMap."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_25
    const/4 v2, 0x0

    const-string v0, "A @Path parameter must not come after a @QueryName."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_26
    const/4 v2, 0x0

    const-string v0, "A @Path parameter must not come after a @Query."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_27
    instance-of v4, v5, Llv6;

    move/from16 v20, v4

    const-string v4, "<String>)"

    move/from16 v21, v9

    const-string v9, " must include generic type (e.g., "

    move-object/from16 v22, v11

    const-class v11, Ljava/lang/Iterable;

    if-eqz v20, :cond_2b

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    check-cast v5, Llv6;

    invoke-interface {v5}, Llv6;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Llv6;->encoded()Z

    move-result v5

    move/from16 v20, v14

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    move/from16 v23, v15

    const/4 v15, 0x1

    iput-boolean v15, v2, Lm37$a;->k:Z

    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_29

    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_28

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    invoke-static {v9, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$j;

    invoke-direct {v4, v6, v5}, Lh36$j;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lf36;

    invoke-direct {v5, v4}, Lf36;-><init>(Lh36;)V

    :goto_a
    move-object v4, v5

    :goto_b
    move-object/from16 v24, v7

    goto/16 :goto_10

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_29
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lm37$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$j;

    invoke-direct {v4, v6, v5}, Lh36$j;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lg36;

    invoke-direct {v5, v4}, Lg36;-><init>(Lh36;)V

    goto :goto_a

    :cond_2a
    invoke-virtual {v8, v12, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$j;

    invoke-direct {v4, v6, v5}, Lh36$j;-><init>(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_2b
    move/from16 v20, v14

    move/from16 v23, v15

    instance-of v14, v5, Lnv6;

    if-eqz v14, :cond_2f

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    check-cast v5, Lnv6;

    invoke-interface {v5}, Lnv6;->encoded()Z

    move-result v5

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    const/4 v15, 0x1

    iput-boolean v15, v2, Lm37$a;->l:Z

    invoke-virtual {v11, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2d

    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_2c

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    invoke-static {v9, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$l;

    invoke-direct {v4, v5}, Lh36$l;-><init>(Z)V

    new-instance v5, Lf36;

    invoke-direct {v5, v4}, Lf36;-><init>(Lh36;)V

    goto/16 :goto_a

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2d
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lm37$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$l;

    invoke-direct {v4, v5}, Lh36$l;-><init>(Z)V

    new-instance v5, Lg36;

    invoke-direct {v5, v4}, Lg36;-><init>(Lh36;)V

    goto/16 :goto_a

    :cond_2e
    invoke-virtual {v8, v12, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$l;

    invoke-direct {v4, v5}, Lh36$l;-><init>(Z)V

    goto/16 :goto_b

    :cond_2f
    instance-of v14, v5, Lmv6;

    const-string v15, "Map must include generic types (e.g., Map<String, String>)"

    move/from16 v24, v14

    const-class v14, Ljava/util/Map;

    if-eqz v24, :cond_33

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x1

    iput-boolean v9, v2, Lm37$a;->m:Z

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_32

    invoke-static {v12, v4}, Lkb9;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v11, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_31

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v14

    if-ne v6, v14, :cond_30

    invoke-static {v9, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$k;

    check-cast v5, Lmv6;

    invoke-interface {v5}, Lmv6;->encoded()Z

    move-result v5

    invoke-direct {v4, v1, v10, v5}, Lh36$k;-><init>(Ljava/lang/reflect/Method;IZ)V

    goto/16 :goto_b

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@QueryMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_31
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v15, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_32
    const/4 v2, 0x0

    const-string v0, "@QueryMap parameter type must be Map."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_33
    move-object/from16 v24, v7

    instance-of v7, v5, Lbv3;

    if-eqz v7, :cond_37

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    check-cast v5, Lbv3;

    invoke-interface {v5}, Lbv3;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_35

    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_34

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    invoke-static {v9, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$d;

    invoke-interface {v5}, Lbv3;->allowUnsafeNonAsciiValues()Z

    move-result v5

    invoke-direct {v4, v6, v5}, Lh36$d;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lf36;

    invoke-direct {v5, v4}, Lf36;-><init>(Lh36;)V

    :goto_c
    move-object v4, v5

    goto/16 :goto_10

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_35
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lm37$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$d;

    invoke-interface {v5}, Lbv3;->allowUnsafeNonAsciiValues()Z

    move-result v5

    invoke-direct {v4, v6, v5}, Lh36$d;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lg36;

    invoke-direct {v5, v4}, Lg36;-><init>(Lh36;)V

    goto :goto_c

    :cond_36
    invoke-virtual {v8, v12, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$d;

    invoke-interface {v5}, Lbv3;->allowUnsafeNonAsciiValues()Z

    move-result v5

    invoke-direct {v4, v6, v5}, Lh36$d;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_10

    :cond_37
    instance-of v7, v5, Lfv3;

    if-eqz v7, :cond_3c

    const-class v4, Ljv3;

    if-ne v12, v4, :cond_38

    new-instance v4, Lh36$f;

    invoke-direct {v4, v10, v1}, Lh36$f;-><init>(ILjava/lang/reflect/Method;)V

    goto/16 :goto_10

    :cond_38
    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-static {v12, v4}, Lkb9;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_3a

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    invoke-static {v9, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v6, v7, :cond_39

    const/4 v15, 0x1

    invoke-static {v15, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$e;

    check-cast v5, Lfv3;

    invoke-interface {v5}, Lfv3;->allowUnsafeNonAsciiValues()Z

    move-result v5

    invoke-direct {v4, v1, v10, v5}, Lh36$e;-><init>(Ljava/lang/reflect/Method;IZ)V

    goto/16 :goto_10

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@HeaderMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3a
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v15, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3b
    const/4 v2, 0x0

    const-string v0, "@HeaderMap parameter type must be Map or Headers."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3c
    instance-of v7, v5, Lw83;

    if-eqz v7, :cond_41

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v6, v2, Lm37$a;->q:Z

    if-eqz v6, :cond_40

    check-cast v5, Lw83;

    invoke-interface {v5}, Lw83;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lw83;->encoded()Z

    move-result v5

    const/4 v15, 0x1

    iput-boolean v15, v2, Lm37$a;->g:Z

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_3e

    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_3d

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    invoke-static {v9, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$b;

    invoke-direct {v4, v6, v5}, Lh36$b;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lf36;

    invoke-direct {v5, v4}, Lf36;-><init>(Lh36;)V

    goto/16 :goto_c

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3e
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lm37$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$b;

    invoke-direct {v4, v6, v5}, Lh36$b;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lg36;

    invoke-direct {v5, v4}, Lg36;-><init>(Lh36;)V

    goto/16 :goto_c

    :cond_3f
    invoke-virtual {v8, v12, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lh36$b;

    invoke-direct {v4, v6, v5}, Lh36$b;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_10

    :cond_40
    const-string v0, "@Field parameters can only be used with form encoding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_41
    instance-of v7, v5, Lz83;

    if-eqz v7, :cond_46

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v4, v2, Lm37$a;->q:Z

    if-eqz v4, :cond_45

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-static {v12, v4}, Lkb9;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_43

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    invoke-static {v9, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v6, v7, :cond_42

    const/4 v15, 0x1

    invoke-static {v15, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v8, v4, v13}, Ln67;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    iput-boolean v15, v2, Lm37$a;->g:Z

    new-instance v4, Lh36$c;

    check-cast v5, Lz83;

    invoke-interface {v5}, Lz83;->encoded()Z

    move-result v5

    invoke-direct {v4, v1, v10, v5}, Lh36$c;-><init>(Ljava/lang/reflect/Method;IZ)V

    goto/16 :goto_10

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@FieldMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_43
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v15, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_44
    const/4 v2, 0x0

    const-string v0, "@FieldMap parameter type must be Map."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_45
    const/4 v2, 0x0

    const-string v0, "@FieldMap parameters can only be used with form encoding."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_46
    instance-of v7, v5, Lb46;

    move/from16 v25, v7

    const-class v7, Llg5$c;

    if-eqz v25, :cond_55

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v6, v2, Lm37$a;->r:Z

    if-eqz v6, :cond_54

    check-cast v5, Lb46;

    const/4 v15, 0x1

    iput-boolean v15, v2, Lm37$a;->h:Z

    invoke-interface {v5}, Lb46;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4d

    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    sget-object v6, Lh36$m;->a:Lh36$m;

    const-string v8, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz v5, :cond_49

    instance-of v5, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_48

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_47

    new-instance v4, Lf36;

    invoke-direct {v4, v6}, Lf36;-><init>(Lh36;)V

    goto/16 :goto_10

    :cond_47
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v8, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_48
    const/4 v11, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_49
    const/4 v11, 0x0

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4a

    new-instance v4, Lg36;

    invoke-direct {v4, v6}, Lg36;-><init>(Lh36;)V

    goto/16 :goto_10

    :cond_4a
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v8, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4b
    invoke-virtual {v7, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4c

    move-object v4, v6

    goto/16 :goto_10

    :cond_4c
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v8, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4d
    const-string v15, "form-data; name=\""

    move-object/from16 v25, v5

    const-string v5, "\""

    invoke-static {v15, v6, v5}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Content-Transfer-Encoding"

    invoke-interface/range {v25 .. v25}, Lb46;->encoding()Ljava/lang/String;

    move-result-object v15

    const-string v0, "Content-Disposition"

    filled-new-array {v0, v5, v6, v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljv3$b;->c([Ljava/lang/String;)Ljv3;

    move-result-object v0

    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const-string v6, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v5, :cond_50

    instance-of v5, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_4f

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_4e

    invoke-virtual {v8, v4, v13, v3}, Ln67;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Li02;

    move-result-object v4

    new-instance v5, Lh36$g;

    invoke-direct {v5, v1, v10, v0, v4}, Lh36$g;-><init>(Ljava/lang/reflect/Method;ILjv3;Li02;)V

    new-instance v0, Lf36;

    invoke-direct {v0, v5}, Lf36;-><init>(Lh36;)V

    :goto_d
    move-object v4, v0

    goto/16 :goto_10

    :cond_4e
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v6, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4f
    const/4 v11, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_50
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lm37$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {v8, v4, v13, v3}, Ln67;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Li02;

    move-result-object v4

    new-instance v5, Lh36$g;

    invoke-direct {v5, v1, v10, v0, v4}, Lh36$g;-><init>(Ljava/lang/reflect/Method;ILjv3;Li02;)V

    new-instance v0, Lg36;

    invoke-direct {v0, v5}, Lg36;-><init>(Lh36;)V

    goto :goto_d

    :cond_51
    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v1, v10, v6, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_52
    const/4 v9, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_53

    invoke-virtual {v8, v12, v13, v3}, Ln67;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Li02;

    move-result-object v4

    new-instance v5, Lh36$g;

    invoke-direct {v5, v1, v10, v0, v4}, Lh36$g;-><init>(Ljava/lang/reflect/Method;ILjv3;Li02;)V

    goto/16 :goto_c

    :cond_53
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v1, v10, v6, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_54
    const/4 v9, 0x0

    const-string v0, "@Part parameters can only be used with multipart encoding."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_55
    instance-of v0, v5, Lc46;

    if-eqz v0, :cond_5b

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v0, v2, Lm37$a;->r:Z

    if-eqz v0, :cond_5a

    const/4 v4, 0x1

    iput-boolean v4, v2, Lm37$a;->h:Z

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-static {v12, v0}, Lkb9;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_58

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    invoke-static {v9, v0}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-ne v6, v11, :cond_57

    invoke-static {v4, v0}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v8, v0, v13, v3}, Ln67;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Li02;

    move-result-object v0

    check-cast v5, Lc46;

    new-instance v4, Lh36$h;

    invoke-interface {v5}, Lc46;->encoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v10, v0, v5}, Lh36$h;-><init>(Ljava/lang/reflect/Method;ILi02;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_56
    const-string v0, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_57
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "@PartMap keys must be of type String: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_58
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v15, v0}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_59
    const/4 v2, 0x0

    const-string v0, "@PartMap parameter type must be Map."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5a
    const/4 v2, 0x0

    const-string v0, "@PartMap parameters can only be used with multipart encoding."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5b
    instance-of v0, v5, Llk0;

    if-eqz v0, :cond_5e

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v0, v2, Lm37$a;->q:Z

    if-nez v0, :cond_5d

    iget-boolean v0, v2, Lm37$a;->r:Z

    if-nez v0, :cond_5d

    iget-boolean v0, v2, Lm37$a;->i:Z

    if-nez v0, :cond_5c

    :try_start_1
    invoke-virtual {v8, v12, v13, v3}, Ln67;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Li02;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v15, 0x1

    iput-boolean v15, v2, Lm37$a;->i:Z

    new-instance v4, Lh36$a;

    invoke-direct {v4, v1, v10, v0}, Lh36$a;-><init>(Ljava/lang/reflect/Method;ILi02;)V

    goto/16 :goto_10

    :catch_1
    move-exception v0

    const-string v2, "Unable to create @Body converter for %s"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v10, v2, v3}, Lkb9;->k(Ljava/lang/reflect/Method;Ljava/lang/Exception;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5c
    const-string v0, "Multiple @Body method annotations found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5d
    const/4 v2, 0x0

    const-string v0, "@Body parameters cannot be used with form or multi-part encoding."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5e
    instance-of v0, v5, Lkj8;

    if-eqz v0, :cond_62

    invoke-virtual {v2, v10, v12}, Lm37$a;->c(ILjava/lang/reflect/Type;)V

    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lm37$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v4, v10, -0x1

    :goto_e
    if-ltz v4, :cond_61

    iget-object v5, v2, Lm37$a;->w:[Lh36;

    aget-object v5, v5, v4

    instance-of v6, v5, Lh36$o;

    if-eqz v6, :cond_60

    check-cast v5, Lh36$o;

    iget-object v5, v5, Lh36$o;->a:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_f

    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@Tag type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is duplicate of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, La96;->b:Lw07;

    invoke-virtual {v0, v4, v1}, Lw07;->a(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and would always overwrite its value."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_60
    :goto_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_61
    new-instance v4, Lh36$o;

    invoke-direct {v4, v0}, Lh36$o;-><init>(Ljava/lang/Class;)V

    goto :goto_10

    :cond_62
    const/4 v4, 0x0

    :goto_10
    if-nez v4, :cond_63

    goto :goto_11

    :cond_63
    if-nez v16, :cond_64

    move-object/from16 v16, v4

    :goto_11
    add-int/lit8 v9, v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v17

    move/from16 v8, v18

    move/from16 v6, v19

    move/from16 v14, v20

    move-object/from16 v11, v22

    move/from16 v15, v23

    move-object/from16 v7, v24

    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_64
    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_65
    :goto_12
    move-object/from16 v17, v4

    move/from16 v19, v6

    move-object/from16 v24, v7

    move/from16 v18, v8

    move-object/from16 v22, v11

    move/from16 v20, v14

    goto :goto_13

    :cond_66
    const/16 v16, 0x0

    goto :goto_12

    :goto_13
    if-nez v16, :cond_68

    if-eqz v20, :cond_67

    :try_start_2
    invoke-static {v12}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v4, Le02;

    if-ne v0, v4, :cond_67

    const/4 v15, 0x1

    iput-boolean v15, v2, Lm37$a;->x:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v16, 0x0

    goto :goto_14

    :catch_2
    :cond_67
    const-string v0, "No Retrofit annotation found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lkb9;->j(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_68
    :goto_14
    aput-object v16, v22, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v17

    move/from16 v8, v18

    move/from16 v6, v19

    move-object/from16 v7, v24

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_69
    move-object/from16 v24, v7

    iget-object v0, v2, Lm37$a;->s:Ljava/lang/String;

    if-nez v0, :cond_6b

    iget-boolean v0, v2, Lm37$a;->n:Z

    if-eqz v0, :cond_6a

    goto :goto_15

    :cond_6a
    iget-object v0, v2, Lm37$a;->o:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Missing either @%s URL or @Url parameter."

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_6b
    :goto_15
    iget-boolean v0, v2, Lm37$a;->q:Z

    if-nez v0, :cond_6c

    iget-boolean v3, v2, Lm37$a;->r:Z

    if-nez v3, :cond_6c

    iget-boolean v3, v2, Lm37$a;->p:Z

    if-nez v3, :cond_6c

    iget-boolean v3, v2, Lm37$a;->i:Z

    if-nez v3, :cond_6d

    :cond_6c
    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_16

    :cond_6d
    const-string v0, "Non-body HTTP method cannot contain @Body."

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :goto_16
    if-eqz v0, :cond_6f

    iget-boolean v0, v2, Lm37$a;->g:Z

    if-eqz v0, :cond_6e

    goto :goto_17

    :cond_6e
    const-string v0, "Form-encoded method must contain at least one @Field."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_6f
    :goto_17
    iget-boolean v0, v2, Lm37$a;->r:Z

    if-eqz v0, :cond_71

    iget-boolean v0, v2, Lm37$a;->h:Z

    if-eqz v0, :cond_70

    goto :goto_18

    :cond_70
    const-string v0, "Multipart method must contain at least one @Part."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_71
    :goto_18
    new-instance v0, Lm37;

    invoke-direct {v0, v2}, Lm37;-><init>(Lm37$a;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lkb9;->g(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_7f

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_7e

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-class v3, Lj59;

    const-class v4, La57;

    iget-boolean v5, v0, Lm37;->l:Z

    if-eqz v5, :cond_77

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    array-length v7, v6

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v9, 0x0

    aget-object v6, v6, v9

    instance-of v7, v6, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_72

    check-cast v6, Ljava/lang/reflect/WildcardType;

    invoke-interface {v6}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v6, v6, v9

    :cond_72
    invoke-static {v6}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lfy0;

    if-ne v7, v4, :cond_73

    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_73

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v9, v6}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto :goto_1a

    :cond_73
    invoke-static {v6}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v8, :cond_76

    sget-boolean v7, Lkb9;->b:Z

    if-eqz v7, :cond_74

    if-ne v6, v3, :cond_74

    const/4 v7, 0x1

    goto :goto_19

    :cond_74
    const/4 v7, 0x0

    :goto_19
    move v9, v7

    const/4 v7, 0x0

    :goto_1a
    new-instance v10, Lkb9$b;

    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/reflect/Type;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x0

    invoke-direct {v10, v6, v8, v11}, Lkb9$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    const-class v6, Ly18;

    invoke-static {v2, v6}, Lkb9;->h([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_75

    goto :goto_1b

    :cond_75
    array-length v6, v2

    add-int/2addr v6, v15

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    sget-object v8, Lz18;->b:Lz18;

    aput-object v8, v6, v12

    array-length v8, v2

    invoke-static {v2, v12, v6, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    :goto_1b
    move v6, v9

    :goto_1c
    move-object/from16 v8, p0

    goto :goto_1d

    :cond_76
    const/4 v12, 0x0

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v12, v6}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s"

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_77
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_1c

    :goto_1d
    :try_start_3
    invoke-virtual {v8, v10, v2}, Ln67;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lgy0;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    invoke-interface {v2}, Lgy0;->a()Ljava/lang/reflect/Type;

    move-result-object v9

    const-class v10, Lz47;

    if-eq v9, v10, :cond_7d

    if-eq v9, v4, :cond_7c

    iget-object v4, v0, Lm37;->d:Ljava/lang/String;

    move-object/from16 v10, v24

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const-class v4, Ljava/lang/Void;

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    sget-boolean v4, Lkb9;->b:Z

    if-eqz v4, :cond_78

    if-ne v9, v3, :cond_78

    goto :goto_1e

    :cond_78
    const-string v0, "HEAD method must use Void or Unit as response type."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_79
    :goto_1e
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    :try_start_4
    invoke-virtual {v8, v9, v3}, Ln67;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Li02;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    iget-object v3, v8, Ln67;->b:Lokhttp3/a$a;

    if-nez v5, :cond_7a

    new-instance v1, Ldz3$a;

    invoke-direct {v1, v0, v3, v4, v2}, Ldz3$a;-><init>(Lm37;Lokhttp3/a$a;Li02;Lgy0;)V

    return-object v1

    :cond_7a
    if-eqz v7, :cond_7b

    new-instance v1, Ldz3$c;

    invoke-direct {v1, v0, v3, v4, v2}, Ldz3$c;-><init>(Lm37;Lokhttp3/a$a;Li02;Lgy0;)V

    return-object v1

    :cond_7b
    new-instance v1, Ldz3$b;

    move-object v5, v2

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Ldz3$b;-><init>(Lm37;Lokhttp3/a$a;Li02;Lgy0;Z)V

    return-object v1

    :catch_3
    move-exception v0

    const-string v2, "Unable to create converter for %s"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7c
    const-string v0, "Response must include generic type (e.g., Response<String>)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    const-string v2, "Unable to create call adapter for %s"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "Service methods cannot return void."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7f
    const/4 v3, 0x0

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_80
    move v2, v5

    move-object v3, v9

    const-string v0, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v2}, Lkb9;->i(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
