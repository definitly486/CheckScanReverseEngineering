.class public final Lyads/hk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/i36;


# instance fields
.field public final synthetic a:Lyads/ur;

.field public final synthetic b:Lyads/qg3;

.field public final synthetic c:Lyads/bn1;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyads/ur;Lyads/qg3;Lyads/bn1;Lyads/tt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyads/hk1;->a:Lyads/ur;

    iput-object p2, p0, Lyads/hk1;->b:Lyads/qg3;

    iput-object p3, p0, Lyads/hk1;->c:Lyads/bn1;

    iput-object p4, p0, Lyads/hk1;->d:Lyads/tt;

    iput-object p5, p0, Lyads/hk1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lyads/hk1;Lnl3;Landroid/text/Editable;)Lj59;
    .locals 4

    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    move-object p2, v0

    :cond_1
    iget-object v1, p0, Lyads/hk1;->a:Lyads/ur;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lyads/hk1;->c:Lyads/bn1;

    invoke-virtual {v1}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p2

    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lyads/ur;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v1}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, v1, Lyads/ur;->d:I

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v1}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lyads/hk1;->d:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->b:Lyads/fs2;

    invoke-static {v0}, Lyads/w56;->b(Lyads/fs2;)Lyads/z66;

    move-result-object v0

    iget-object p0, p0, Lyads/hk1;->e:Ljava/lang/String;

    if-eqz p0, :cond_5

    if-eqz v0, :cond_4

    invoke-interface {v0, p0}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0, p2}, Lyads/u66;->c(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_2
    if-gt v0, p0, :cond_7

    invoke-virtual {v1}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/rr;

    instance-of v3, v2, Lyads/pr;

    if-eqz v3, :cond_6

    check-cast v2, Lyads/pr;

    iget-object v2, v2, Lyads/pr;->a:Ljava/lang/Character;

    if-eqz v2, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x2c

    const/16 v0, 0x2e

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lyads/hk1;->b:Lyads/qg3;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lyads/hk1;->c:Lyads/bn1;

    iget-object v1, v0, Lyads/qg3;->b:Ljava/lang/String;

    invoke-static {v1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v0, p2}, Lyads/qg3;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object p1, v0, Lyads/qg3;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, v0, Lyads/qg3;->c:I

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3

    :cond_a
    iput-object p2, v0, Lyads/qg3;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p0

    iput p0, v0, Lyads/qg3;->c:I

    :cond_b
    invoke-interface {p1, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 215
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 216
    const-string p1, ""

    .line 217
    :cond_0
    iget-object v0, p0, Lyads/hk1;->a:Lyads/ur;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lyads/hk1;->c:Lyads/bn1;

    .line 218
    invoke-virtual {v0, p1}, Lyads/ur;->a(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object v3, p0, Lyads/hk1;->d:Lyads/tt;

    .line 221
    iget-object v3, v3, Lyads/tt;->b:Lyads/fs2;

    .line 222
    invoke-static {v3}, Lyads/w56;->b(Lyads/fs2;)Lyads/z66;

    move-result-object v3

    .line 223
    iget-object p0, p0, Lyads/hk1;->e:Ljava/lang/String;

    if-eqz p0, :cond_2

    if-eqz v3, :cond_1

    .line 224
    invoke-interface {v3, p0}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v1, p1}, Lyads/u66;->c(Ljava/lang/String;)V

    .line 226
    :cond_2
    invoke-virtual {v0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 227
    :cond_3
    iget-object v0, p0, Lyads/hk1;->b:Lyads/qg3;

    if-eqz v0, :cond_5

    .line 228
    invoke-virtual {v0, p1}, Lyads/qg3;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 229
    :cond_4
    iput-object p1, v0, Lyads/qg3;->b:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 231
    iput v2, v0, Lyads/qg3;->c:I

    .line 232
    :cond_5
    iget-object v0, p0, Lyads/hk1;->c:Lyads/bn1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {v1, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    return-void

    .line 233
    :cond_7
    iget-object p0, p0, Lyads/hk1;->c:Lyads/bn1;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Lnl3;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lyads/hk1;->c:Lyads/bn1;

    new-instance v1, Ljx9;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Ljx9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 210
    iget-object p0, v0, Lyads/bn1;->j:Lyads/zm1;

    if-nez p0, :cond_0

    .line 211
    new-instance p0, Lyads/zm1;

    invoke-direct {p0, v0}, Lyads/zm1;-><init>(Lyads/bn1;)V

    .line 212
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    iput-object p0, v0, Lyads/bn1;->j:Lyads/zm1;

    .line 214
    :cond_0
    iget-object p0, v0, Lyads/bn1;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
