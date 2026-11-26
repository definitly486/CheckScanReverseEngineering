.class public final Ly05;
.super Lv05;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView$BufferType;

.field public final b:Lv36;

.field public final c:Lf15;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb15;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(Lv36;Lf15;Ljava/util/List;)V
    .locals 1

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-direct {p0}, Lv05;-><init>()V

    iput-object v0, p0, Ly05;->a:Landroid/widget/TextView$BufferType;

    iput-object p1, p0, Ly05;->b:Lv36;

    iput-object p2, p0, Ly05;->c:Lf15;

    iput-object p3, p0, Ly05;->d:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ly05;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Ly05;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, p2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb15;

    invoke-interface {v3, v2}, Lb15;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ly05;->b:Lv36;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_f

    new-instance v3, Ldq2;

    iget-object v4, v1, Lv36;->a:Ljava/util/ArrayList;

    iget-object v5, v1, Lv36;->c:Ln54;

    iget-object v6, v1, Lv36;->b:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5, v6}, Ldq2;-><init>(Ljava/util/ArrayList;Ln54;Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move v7, v5

    :goto_2
    const/4 v8, -0x1

    const/16 v9, 0xd

    const/16 v10, 0xa

    if-ge v7, v6, :cond_2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v10, :cond_3

    if-eq v11, v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v8

    :cond_3
    if-eq v7, v8, :cond_4

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ldq2;->i(Ljava/lang/String;)V

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_1

    add-int/lit8 v7, v7, 0x2

    move v5, v7

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ldq2;->i(Ljava/lang/String;)V

    :cond_6
    iget-object v2, v3, Ldq2;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ldq2;->f(Ljava/util/List;)V

    new-instance v2, Lm54;

    iget-object v5, v3, Ldq2;->k:Ljava/util/ArrayList;

    iget-object v6, v3, Ldq2;->m:Ljava/util/LinkedHashMap;

    invoke-direct {v2, v5, v6}, Lm54;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v5, v3, Ldq2;->j:Ln54;

    invoke-interface {v5, v2}, Ln54;->a(Lm54;)Ll54;

    move-result-object v2

    iget-object v5, v3, Ldq2;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luj0;

    invoke-interface {v6, v2}, Luj0;->g(Ll54;)V

    goto :goto_3

    :cond_7
    iget-object v2, v3, Ldq2;->l:Laq2;

    iget-object v2, v2, Laq2;->a:Lzp2;

    iget-object v1, v1, Lv36;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lie6;

    invoke-interface {v2}, Lie6;->a()Lzn5;

    move-result-object v2

    goto :goto_4

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb15;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_9
    iget-object v1, p0, Ly05;->c:Lf15;

    iget-object v3, v1, Lf15;->c:Ljava/lang/Object;

    check-cast v3, Lg15$a;

    iget-object v1, v1, Lf15;->d:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lx05;

    new-instance v7, Lg27;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v7, Lg27;->b:Ljava/lang/Object;

    new-instance v10, Lsj0;

    invoke-direct {v10, v4}, Lsj0;-><init>(I)V

    new-instance v5, Lg15;

    new-instance v8, Lf58;

    invoke-direct {v8}, Lf58;-><init>()V

    iget-object v1, v3, Lg15$a;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-direct/range {v5 .. v10}, Lg15;-><init>(Lx05;Lg27;Lf58;Ljava/util/Map;Lsj0;)V

    invoke-virtual {v2, v5}, Lzn5;->a(Lg15;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb15;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_a
    new-instance v1, Lf58$b;

    iget-object v2, v5, Lg15;->c:Lf58;

    iget-object v3, v2, Lf58;->b:Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lf58;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf58$a;

    iget-object v4, v3, Lf58$a;->a:Ljava/lang/Object;

    iget v5, v3, Lf58$a;->b:I

    iget v6, v3, Lf58$a;->c:I

    iget v3, v3, Lf58$a;->d:I

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Ly05;->e:Z

    if-eqz v2, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb15;

    invoke-interface {v2, p1, v1}, Lb15;->c(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    goto :goto_8

    :cond_d
    iget-object p0, p0, Ly05;->a:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb15;

    invoke-interface {p2, p1}, Lb15;->a(Landroid/widget/TextView;)V

    goto :goto_9

    :cond_e
    return-void

    :cond_f
    const-string p0, "input must not be null"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method
