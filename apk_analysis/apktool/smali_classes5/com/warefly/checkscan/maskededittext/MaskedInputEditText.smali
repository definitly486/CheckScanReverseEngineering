.class public final Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;
.super Lcom/google/android/material/textfield/TextInputEditText;
.source "SourceFile"


# instance fields
.field public n:Lna1;

.field public o:Lp15;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Low6;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->setMask(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final getMaskString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->n:Lna1;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lna1;->a:Ljava/lang/Object;

    check-cast p0, Lj15;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lj15;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getMaskedWatcher()Lp15;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->o:Lp15;

    return-object p0
.end method

.method public final getUnMaskedText()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->n:Lna1;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lna1;->a:Ljava/lang/Object;

    check-cast p0, Lj15;

    if-eqz p0, :cond_1

    new-instance v2, Lui3;

    invoke-direct {v2, p0, v0}, Lui3;-><init>(Lj15;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object p0, v2, Lui3;->d:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final setMask(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lna1;

    invoke-direct {v0, p1}, Lna1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->n:Lna1;

    iget-object p1, p0, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->o:Lp15;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->n:Lna1;

    if-eqz p1, :cond_1

    new-instance v0, Lp15;

    invoke-direct {v0, p1, p0}, Lp15;-><init>(Lna1;Landroidx/appcompat/widget/AppCompatEditText;)V

    iput-object v0, p0, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->o:Lp15;

    :cond_1
    iget-object p1, p0, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->o:Lp15;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final setMaskedWatcher(Lp15;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/maskededittext/MaskedInputEditText;->o:Lp15;

    return-void
.end method
