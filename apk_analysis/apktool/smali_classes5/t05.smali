.class public final Lt05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls05;


# virtual methods
.method public final a(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;I)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget p1, Lg58;->a:I

    sget-object p1, Lj17;->e:Lg17;

    invoke-static {p1, p0}, Lg17;->b(Lg17;Ljava/lang/CharSequence;)Lep3;

    move-result-object p1

    new-instance v0, Lep3$a;

    invoke-direct {v0, p1}, Lep3$a;-><init>(Lep3;)V

    :goto_0
    invoke-virtual {v0}, Lep3$a;->hasNext()Z

    move-result p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lep3$a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr15;

    invoke-interface {p1}, Lr15;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v2, v1}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0, v1, p1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    sget-object p1, Lj17;->a:Lg17;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lg17;->b(Lg17;Ljava/lang/CharSequence;)Lep3;

    move-result-object p1

    new-instance v0, Lep3$a;

    invoke-direct {v0, p1}, Lep3$a;-><init>(Lep3;)V

    :goto_1
    invoke-virtual {v0}, Lep3$a;->hasNext()Z

    move-result p1

    const/4 v3, 0x1

    const/16 v4, 0x12

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lep3$a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr15;

    invoke-interface {p1}, Lr15;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v2, v1}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    const-string v7, "**"

    invoke-static {p1, v7, v6}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {p0, v5, p1, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p0, p1, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    sget-object p1, Lj17;->b:Lg17;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lg17;->b(Lg17;Ljava/lang/CharSequence;)Lep3;

    move-result-object p1

    new-instance v0, Lep3$a;

    invoke-direct {v0, p1}, Lep3$a;-><init>(Lep3;)V

    :goto_2
    invoke-virtual {v0}, Lep3$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lep3$a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr15;

    invoke-interface {p1}, Lr15;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v2, v1}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    const-string v7, "_"

    invoke-static {p1, v7, v6}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {p0, v5, p1, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v7, 0x2

    invoke-direct {p1, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0, p1, v5, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    sget-object p1, Lj17;->d:Lg17;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lg17;->b(Lg17;Ljava/lang/CharSequence;)Lep3;

    move-result-object p1

    new-instance v0, Lep3$a;

    invoke-direct {v0, p1}, Lep3$a;-><init>(Lep3;)V

    :goto_3
    invoke-virtual {v0}, Lep3$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lep3$a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr15;

    invoke-interface {p1}, Lr15;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v5, "\n"

    const-string v6, ""

    invoke-static {p1, v5, v6}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v2, v1}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    const-string v7, "- "

    invoke-static {p1, v7, v6}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {p0, v5, p1, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p1, Landroid/text/style/BulletSpan;

    const/16 v7, 0xa

    const/high16 v8, -0x1000000

    invoke-direct {p1, v7, v8}, Landroid/text/style/BulletSpan;-><init>(II)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0, p1, v5, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_3
    sget-object p1, Lj17;->c:Lg17;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lg17;->b(Lg17;Ljava/lang/CharSequence;)Lep3;

    move-result-object p1

    new-instance v0, Lep3$a;

    invoke-direct {v0, p1}, Lep3$a;-><init>(Lep3;)V

    :goto_4
    invoke-virtual {v0}, Lep3$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lep3$a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr15;

    invoke-interface {p1}, Lr15;->getValue()Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0x5b

    invoke-static {v5, v2, v1, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x5d

    invoke-static {v6, v2, v1, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v2, v2, v1}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v6

    const/16 v7, 0x28

    invoke-static {v7, v2, v1, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v7

    add-int/2addr v7, v3

    const/16 v8, 0x29

    invoke-static {v8, v2, v1, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v6

    invoke-virtual {p0, v6, p1, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, v6, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p1, v6, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Lr05;

    invoke-direct {p1, v7}, Lr05;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void
.end method
