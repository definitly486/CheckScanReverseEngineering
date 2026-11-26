.class public final Ll15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public b:Lcn2;

.field public c:Ljava/lang/String;

.field public d:Lru/tinkoff/decoro/MaskImpl;

.field public e:Lcom/google/android/material/textfield/TextInputEditText;

.field public f:Z

.field public g:Z

.field public h:Lru/tinkoff/decoro/MaskImpl;


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v3, Lru/tinkoff/decoro/MaskImpl;

    iget-object v4, p0, Ll15;->h:Lru/tinkoff/decoro/MaskImpl;

    invoke-direct {v3, v4}, Lru/tinkoff/decoro/MaskImpl;-><init>(Lru/tinkoff/decoro/MaskImpl;)V

    iput-object v3, p0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    new-instance v4, Lcn2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ll15;->b:Lcn2;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ll15;->e:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Ll15;->f:Z

    invoke-virtual {v3}, Lru/tinkoff/decoro/MaskImpl;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Ll15;->e:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    invoke-virtual {v0}, Lru/tinkoff/decoro/MaskImpl;->c()I

    move-result v0

    iget-object v2, p0, Ll15;->e:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-gt v0, v2, :cond_3

    iget-object v2, p0, Ll15;->e:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    iput-boolean v1, p0, Ll15;->f:Z

    :cond_4
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    iget-boolean v0, p0, Ll15;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Ll15;->g:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Lru/tinkoff/decoro/MaskImpl;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ll15;->b:Lcn2;

    iget v2, v2, Lcn2;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v2, v4, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/SpannableString;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v9, v5

    goto :goto_2

    :cond_3
    :goto_1
    move-object v9, v0

    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Ll15;->f:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v7, 0x0

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    iput-boolean v1, p0, Ll15;->f:Z

    goto :goto_3

    :cond_4
    move-object v6, p1

    :goto_3
    if-ltz v2, :cond_5

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-gt v2, p1, :cond_5

    iget-object p1, p0, Ll15;->e:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-gt v2, p1, :cond_5

    iget-object p1, p0, Ll15;->e:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Ll15;->c:Ljava/lang/String;

    return-void

    :cond_6
    :goto_4
    iput-boolean v1, p0, Ll15;->g:Z

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-boolean v0, p0, Ll15;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ll15;->c:Ljava/lang/String;

    iget-object p0, p0, Ll15;->b:Lcn2;

    iput p2, p0, Lcn2;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcn2;->c:I

    iput p1, p0, Lcn2;->d:I

    iput p1, p0, Lcn2;->b:I

    const/4 p2, -0x1

    iput p2, p0, Lcn2;->e:I

    const/4 p2, 0x1

    if-lez p4, :cond_1

    iput p2, p0, Lcn2;->d:I

    iput p4, p0, Lcn2;->b:I

    move v0, p2

    goto :goto_0

    :cond_1
    move p4, p1

    move v0, p4

    :goto_0
    if-lez p3, :cond_2

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn2;->d:I

    iput p3, p0, Lcn2;->c:I

    goto :goto_1

    :cond_2
    move p3, p1

    :goto_1
    if-lez p4, :cond_3

    if-lez p3, :cond_3

    if-ge p4, p3, :cond_3

    move p1, p2

    :cond_3
    iput-boolean p1, p0, Lcn2;->f:Z

    :cond_4
    :goto_2
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-boolean p2, p0, Ll15;->f:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p2, p0, Ll15;->b:Lcn2;

    iget p3, p2, Lcn2;->d:I

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-ne p3, p4, :cond_1

    iget p3, p2, Lcn2;->a:I

    iget p2, p2, Lcn2;->b:I

    add-int/2addr p2, p3

    invoke-interface {p1, p3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object p3, p0, Ll15;->b:Lcn2;

    iget-boolean v0, p3, Lcn2;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll15;->c:Ljava/lang/String;

    iget v1, p3, Lcn2;->a:I

    iget p3, p3, Lcn2;->b:I

    add-int/2addr p3, v1

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Ll15;->b:Lcn2;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p3, Lcn2;->c:I

    iget v2, p3, Lcn2;->b:I

    sub-int/2addr v1, v2

    iput v1, p3, Lcn2;->c:I

    iget v1, p3, Lcn2;->a:I

    add-int/2addr v1, v0

    iput v1, p3, Lcn2;->a:I

    iget v0, p3, Lcn2;->d:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p3, Lcn2;->d:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    iget-object p3, p0, Ll15;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Ll15;->g:Z

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Ll15;->b:Lcn2;

    iget p3, p1, Lcn2;->d:I

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    and-int/2addr p3, p4

    const/4 v0, 0x0

    if-ne p3, p4, :cond_4

    move p3, p4

    goto :goto_1

    :cond_4
    move p3, v0

    :goto_1
    iget-object v1, p0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    if-nez p3, :cond_5

    iget p3, p1, Lcn2;->a:I

    iget v0, p1, Lcn2;->c:I

    add-int/2addr p3, v0

    sub-int/2addr p3, p4

    invoke-virtual {v1, p3, v0, p4}, Lru/tinkoff/decoro/MaskImpl;->f(IIZ)I

    move-result p3

    iput p3, p1, Lcn2;->e:I

    goto :goto_2

    :cond_5
    iget p3, p1, Lcn2;->a:I

    iget v2, p1, Lcn2;->c:I

    add-int/2addr p3, v2

    sub-int/2addr p3, p4

    invoke-virtual {v1, p3, v2, v0}, Lru/tinkoff/decoro/MaskImpl;->f(IIZ)I

    move-result p3

    iput p3, p1, Lcn2;->e:I

    :cond_6
    :goto_2
    iget-object p1, p0, Ll15;->b:Lcn2;

    iget p3, p1, Lcn2;->d:I

    and-int/2addr p3, p4

    if-ne p3, p4, :cond_7

    iget-object p0, p0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    iget p3, p1, Lcn2;->a:I

    invoke-virtual {p0, p3, p2}, Lru/tinkoff/decoro/MaskImpl;->d(ILjava/lang/CharSequence;)I

    move-result p0

    iput p0, p1, Lcn2;->e:I

    :cond_7
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lru/tinkoff/decoro/MaskImpl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
