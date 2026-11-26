.class public final Le36;
.super Lm;
.source "SourceFile"


# instance fields
.field public final a:Ld36;

.field public final b:Lpq4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld36;

    invoke-direct {v0}, Ld36;-><init>()V

    iput-object v0, p0, Le36;->a:Ld36;

    new-instance v0, Lpq4;

    invoke-direct {v0}, Lpq4;-><init>()V

    iput-object v0, p0, Le36;->b:Lpq4;

    return-void
.end method


# virtual methods
.method public final d()Lpj0;
    .locals 0

    iget-object p0, p0, Le36;->a:Ld36;

    return-object p0
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 9

    iget-object p0, p0, Le36;->b:Lpq4;

    iget-object v0, p0, Lpq4;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v3, v1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_15

    sget-object v4, Lpq4$a;->a:[I

    iget-object v5, p0, Lpq4;->a:Lpq4$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, -0x1

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-char v4, p0, Lpq4;->g:C

    invoke-static {p1, v3, v4}, Lo8;->w(Ljava/lang/CharSequence;IC)I

    move-result v4

    if-ne v4, v5, :cond_3

    :cond_2
    :goto_0
    move v3, v5

    goto/16 :goto_5

    :cond_3
    iget-object v7, p0, Lpq4;->h:Ljava/lang/StringBuilder;

    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v4, v3, :cond_4

    iget-object v3, p0, Lpq4;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v3, v4

    goto/16 :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p1, v4, v3}, Ltz;->c(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_5

    goto :goto_0

    :cond_5
    iput-boolean v6, p0, Lpq4;->i:Z

    invoke-virtual {p0}, Lpq4;->a()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v4, Lpq4$b;->START_DEFINITION:Lpq4$b;

    iput-object v4, p0, Lpq4;->a:Lpq4$b;

    goto/16 :goto_5

    :pswitch_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Ltz;->c(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_6

    sget-object v4, Lpq4$b;->START_DEFINITION:Lpq4$b;

    iput-object v4, p0, Lpq4;->a:Lpq4$b;

    goto/16 :goto_5

    :cond_6
    iput-char v1, p0, Lpq4;->g:C

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v6, 0x22

    if-eq v4, v6, :cond_8

    const/16 v6, 0x27

    if-eq v4, v6, :cond_8

    const/16 v6, 0x28

    if-eq v4, v6, :cond_7

    goto :goto_2

    :cond_7
    const/16 v4, 0x29

    iput-char v4, p0, Lpq4;->g:C

    goto :goto_2

    :cond_8
    iput-char v4, p0, Lpq4;->g:C

    :goto_2
    iget-char v4, p0, Lpq4;->g:C

    if-eqz v4, :cond_9

    sget-object v4, Lpq4$b;->TITLE:Lpq4$b;

    iput-object v4, p0, Lpq4;->a:Lpq4$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lpq4;->h:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v3, v4, :cond_14

    iget-object v4, p0, Lpq4;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p0}, Lpq4;->a()V

    sget-object v4, Lpq4$b;->START_DEFINITION:Lpq4$b;

    iput-object v4, p0, Lpq4;->a:Lpq4$b;

    goto/16 :goto_5

    :pswitch_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Ltz;->c(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-static {v3, p1}, Lo8;->t(ILjava/lang/CharSequence;)I

    move-result v4

    if-ne v4, v5, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_b

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v4, -0x1

    invoke-interface {p1, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_b
    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, p0, Lpq4;->f:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p1, v4, v3}, Ltz;->c(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt v3, v7, :cond_c

    iput-boolean v6, p0, Lpq4;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4

    :cond_c
    if-ne v3, v4, :cond_d

    goto/16 :goto_0

    :cond_d
    :goto_4
    sget-object v4, Lpq4$b;->START_TITLE:Lpq4$b;

    iput-object v4, p0, Lpq4;->a:Lpq4$b;

    goto/16 :goto_5

    :pswitch_3
    invoke-static {v3, p1}, Lo8;->u(ILjava/lang/CharSequence;)I

    move-result v4

    if-ne v4, v5, :cond_e

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lpq4;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v4, v3, :cond_f

    iget-object v3, p0, Lpq4;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x5d

    if-ne v3, v6, :cond_2

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_10

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Lpq4;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v6, 0x3e7

    if-le v3, v6, :cond_11

    goto/16 :goto_0

    :cond_11
    iget-object v3, p0, Lpq4;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lw03;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lw03;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    goto/16 :goto_0

    :cond_12
    iput-object v3, p0, Lpq4;->e:Ljava/lang/String;

    sget-object v3, Lpq4$b;->DESTINATION:Lpq4$b;

    iput-object v3, p0, Lpq4;->a:Lpq4$b;

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p1, v4, v3}, Ltz;->c(Ljava/lang/CharSequence;II)I

    move-result v3

    goto :goto_5

    :pswitch_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Ltz;->c(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v6, 0x5b

    if-eq v4, v6, :cond_13

    goto/16 :goto_0

    :cond_13
    sget-object v4, Lpq4$b;->LABEL:Lpq4$b;

    iput-object v4, p0, Lpq4;->a:Lpq4$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lpq4;->d:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_14

    iget-object v4, p0, Lpq4;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    :goto_5
    if-ne v3, v5, :cond_1

    sget-object p1, Lpq4$b;->PARAGRAPH:Lpq4$b;

    iput-object p1, p0, Lpq4;->a:Lpq4$b;

    :cond_15
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ldq2;)Lrj0;
    .locals 0

    iget-boolean p0, p1, Ldq2;->h:Z

    if-nez p0, :cond_0

    iget p0, p1, Ldq2;->b:I

    invoke-static {p0}, Lrj0;->a(I)Lrj0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Ll54;)V
    .locals 2

    iget-object v0, p0, Le36;->b:Lpq4;

    iget-object v0, v0, Lpq4;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Le36;->a:Ld36;

    invoke-interface {p1, v0, p0}, Ll54;->a(Ljava/lang/String;Lzn5;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Le36;->b:Lpq4;

    iget-object v0, v0, Lpq4;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Le36;->a:Ld36;

    invoke-virtual {p0}, Lzn5;->f()V

    :cond_0
    return-void
.end method
