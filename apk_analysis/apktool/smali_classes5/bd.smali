.class public final Lbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final b:Landroid/widget/EditText;

.field public final c:Li09;

.field public final d:Ljava/text/DecimalFormat;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Li09;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd;->b:Landroid/widget/EditText;

    iput-object p2, p0, Lbd;->c:Li09;

    new-instance p1, Ljava/text/DecimalFormatSymbols;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "#,###.##"

    invoke-direct {p2, v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    iput-object p2, p0, Lbd;->d:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "0."

    return-object p0

    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lta8;->Y(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lqa8;->q(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p0, p0, Lbd;->d:Ljava/text/DecimalFormat;

    invoke-virtual {p0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x1

    if-le p1, v3, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-static {p0, v0, p1}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    iget-object v0, p0, Lbd;->b:Landroid/widget/EditText;

    iget-boolean v1, p0, Lbd;->e:Z

    if-nez v1, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbd;->e:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    move v4, v3

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2e

    if-ge v3, v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_1

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, " "

    const-string v3, ""

    invoke-static {p1, v2, v3}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v5, "."

    invoke-static {v2, v3, v5}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lbd;->c:Li09;

    if-lez v3, :cond_9

    :try_start_1
    invoke-virtual {p0, v2}, Lbd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    move v7, v1

    move v8, v7

    :goto_1
    if-ge v7, p1, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    :cond_5
    if-lt v8, v4, :cond_6

    add-int/lit8 p1, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p1, v4, :cond_8

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x20

    if-ne v4, v6, :cond_8

    add-int/lit8 p1, v7, 0x2

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    :cond_8
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {v5, p1}, Li09;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_3
    invoke-static {v2}, Lqa8;->m(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v5, p1}, Li09;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iput-boolean v1, p0, Lbd;->e:Z

    :cond_b
    :goto_6
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
