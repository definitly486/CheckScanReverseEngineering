.class public final Lp15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final b:Lna1;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Lna1;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp15;->b:Lna1;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lp15;->c:Ljava/lang/ref/WeakReference;

    const-string p1, ""

    iput-object p1, p0, Lp15;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    if-nez p1, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lp15;->b:Lna1;

    iget-object v1, v0, Lna1;->a:Ljava/lang/Object;

    check-cast v1, Lj15;

    const-string v2, "mMask"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lj15;->c:Ljava/io/Serializable;

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v1, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lp15;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object p1, p0, Lp15;->d:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lna1;->a:Ljava/lang/Object;

    check-cast v1, Lj15;

    if-eqz v1, :cond_5

    new-instance v5, Lui3;

    invoke-direct {v5, v1, p1}, Lui3;-><init>(Lj15;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_14

    iget-object p1, p0, Lp15;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-nez p1, :cond_6

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v5}, Lui3;->length()I

    move-result v1

    iget-object v6, p0, Lp15;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget v6, p0, Lp15;->e:I

    if-lez v1, :cond_7

    add-int/2addr v6, v1

    goto :goto_9

    :cond_7
    if-gez v1, :cond_8

    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_8
    iget-object v0, v0, Lna1;->a:Ljava/lang/Object;

    check-cast v0, Lj15;

    if-eqz v0, :cond_9

    move-object v1, v0

    goto :goto_4

    :cond_9
    move-object v1, v3

    :goto_4
    if-eqz v0, :cond_b

    iget-object v0, v0, Lj15;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_a
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v3

    :cond_b
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_6

    :cond_c
    move v0, v4

    :goto_6
    if-le v6, v0, :cond_d

    move v6, v0

    :cond_d
    const/4 v0, 0x1

    if-ge v0, v6, :cond_e

    goto :goto_7

    :cond_e
    move v6, v0

    :goto_7
    if-eqz v1, :cond_10

    add-int/lit8 v0, v6, -0x1

    iget-object v1, v1, Lj15;->c:Ljava/io/Serializable;

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk15;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lk15;->a()Z

    move-result v0

    goto :goto_8

    :cond_f
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v3

    :cond_10
    move v0, v4

    :goto_8
    if-eqz v0, :cond_11

    goto :goto_3

    :cond_11
    :goto_9
    invoke-virtual {v5}, Lui3;->length()I

    move-result v0

    if-le v6, v0, :cond_12

    move v6, v0

    :cond_12
    if-lez v6, :cond_13

    move v4, v6

    :cond_13
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setSelection(I)V

    :goto_a
    invoke-virtual {v5}, Lui3;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp15;->d:Ljava/lang/String;

    :cond_14
    :goto_b
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lp15;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iput p1, p0, Lp15;->e:I

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
