.class public final Ld57;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lwm6;)Landroid/text/SpannedString;
    .locals 3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lwm6;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lwm6;->b()Lgw3;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgw3;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lwm6;->b()Lgw3;

    move-result-object p0

    invoke-virtual {p0}, Lgw3;->b()Lne6;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lne6;->a()Ljava/lang/Boolean;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    const/4 p0, -0x1

    goto :goto_2

    :cond_2
    const/high16 p0, -0x10000

    :goto_2
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p0, 0x12

    invoke-virtual {v0, v1, v2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :cond_3
    new-instance p0, Landroid/text/SpannedString;

    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final b(Lwm6;)Landroid/text/SpannedString;
    .locals 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lwm6;->a()Ldw3;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ldw3;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lwm6;->d()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    const-string p0, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/16 v2, 0x12

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f59999a    # 0.85f

    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v0, p0, v4, v4, v3}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, p0, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    new-instance p0, Landroid/text/SpannedString;

    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final c(Lxf6;Landroid/widget/ImageView$ScaleType;)Lsv7;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lxf6;->c()Lwm6;

    move-result-object v0

    invoke-virtual {v0}, Lwm6;->b()Lgw3;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lxf6;->c()Lwm6;

    move-result-object v0

    invoke-virtual {v0}, Lwm6;->b()Lgw3;

    move-result-object v0

    invoke-virtual {v0}, Lgw3;->b()Lne6;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lne6;->a()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lxf6;->a()I

    move-result v4

    invoke-virtual {p0}, Lxf6;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_0
    invoke-virtual {p0}, Lxf6;->e()Z

    move-result v7

    invoke-virtual {p0}, Lxf6;->c()Lwm6;

    move-result-object p0

    invoke-static {p0}, Ld57;->a(Lwm6;)Landroid/text/SpannedString;

    move-result-object v5

    new-instance v3, Lsv7$b;

    const/4 v8, 0x1

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lsv7$b;-><init>(ILandroid/text/Spanned;Ljava/lang/String;ZZLandroid/widget/ImageView$ScaleType;)V

    return-object v3

    :cond_2
    move-object v9, p1

    invoke-virtual {p0}, Lxf6;->a()I

    move-result v5

    invoke-virtual {p0}, Lxf6;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    move-object v7, v2

    goto :goto_1

    :cond_3
    move-object v7, p1

    :goto_1
    invoke-virtual {p0}, Lxf6;->e()Z

    move-result v8

    invoke-virtual {p0}, Lxf6;->c()Lwm6;

    move-result-object p0

    invoke-static {p0}, Ld57;->a(Lwm6;)Landroid/text/SpannedString;

    move-result-object v6

    new-instance v4, Lsv7$a;

    invoke-direct/range {v4 .. v9}, Lsv7$a;-><init>(ILandroid/text/Spanned;Ljava/lang/String;ZLandroid/widget/ImageView$ScaleType;)V

    return-object v4

    :cond_4
    move-object v9, p1

    invoke-virtual {p0}, Lxf6;->c()Lwm6;

    move-result-object p1

    invoke-virtual {p1}, Lwm6;->a()Ldw3;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ldw3;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lxf6;->c()Lwm6;

    move-result-object p1

    invoke-virtual {p1}, Lwm6;->a()Ldw3;

    move-result-object p1

    invoke-virtual {p1}, Ldw3;->b()Lle6;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lle6;->a()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lxf6;->a()I

    move-result v5

    invoke-virtual {p0}, Lxf6;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    move-object v7, v2

    goto :goto_3

    :cond_7
    move-object v7, p1

    :goto_3
    invoke-virtual {p0}, Lxf6;->e()Z

    move-result v8

    invoke-virtual {p0}, Lxf6;->c()Lwm6;

    move-result-object p0

    invoke-static {p0}, Ld57;->b(Lwm6;)Landroid/text/SpannedString;

    move-result-object v6

    new-instance v4, Lsv7$b;

    move-object v10, v9

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v10}, Lsv7$b;-><init>(ILandroid/text/Spanned;Ljava/lang/String;ZZLandroid/widget/ImageView$ScaleType;)V

    return-object v4

    :cond_8
    invoke-virtual {p0}, Lxf6;->a()I

    move-result v5

    invoke-virtual {p0}, Lxf6;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    move-object v7, v2

    goto :goto_4

    :cond_9
    move-object v7, p1

    :goto_4
    invoke-virtual {p0}, Lxf6;->e()Z

    move-result v8

    invoke-virtual {p0}, Lxf6;->c()Lwm6;

    move-result-object p0

    invoke-static {p0}, Ld57;->b(Lwm6;)Landroid/text/SpannedString;

    move-result-object v6

    new-instance v4, Lsv7$a;

    invoke-direct/range {v4 .. v9}, Lsv7$a;-><init>(ILandroid/text/Spanned;Ljava/lang/String;ZLandroid/widget/ImageView$ScaleType;)V

    return-object v4

    :cond_a
    new-instance v4, Lsv7$a;

    invoke-virtual {p0}, Lxf6;->a()I

    move-result v5

    invoke-virtual {p0}, Lxf6;->d()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    move-object p1, v2

    :cond_b
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lxf6;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    move-object v7, v2

    goto :goto_5

    :cond_c
    move-object v7, p1

    :goto_5
    invoke-virtual {p0}, Lxf6;->e()Z

    move-result v8

    invoke-direct/range {v4 .. v9}, Lsv7$a;-><init>(ILandroid/text/Spanned;Ljava/lang/String;ZLandroid/widget/ImageView$ScaleType;)V

    return-object v4
.end method

.method public static final d(Ltx5;Z)Lsv7$c;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ltx5;->a()I

    move-result v1

    invoke-virtual {p0}, Ltx5;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    invoke-virtual {p0}, Ltx5;->d()Z

    move-result v5

    invoke-virtual {p0}, Ltx5;->c()Lwm6;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lwm6;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_2

    move-object v3, v2

    :cond_2
    invoke-virtual {p0}, Ltx5;->c()Lwm6;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lwm6;->a()Ldw3;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    const/high16 v7, -0x10000

    const/16 v8, 0x12

    const/4 v9, 0x0

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Ltx5;->c()Lwm6;

    move-result-object v6

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v6}, Lwm6;->a()Ldw3;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ldw3;->a()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    move-object v11, v4

    :goto_2
    if-nez v11, :cond_5

    move-object v11, v2

    :cond_5
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Lwm6;->d()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v6

    :goto_3
    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "\n"

    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v10, v2, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v12, 0x3f59999a    # 0.85f

    invoke-direct {v6, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v12, 0x6

    invoke-static {v10, v2, v9, v9, v12}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v10, v6, v2, v12, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v10, v2, v9, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, v10}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_8
    invoke-virtual {p0}, Ltx5;->c()Lwm6;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lwm6;->b()Lgw3;

    move-result-object v6

    goto :goto_4

    :cond_9
    move-object v6, v4

    :goto_4
    if-eqz v6, :cond_d

    invoke-virtual {p0}, Ltx5;->c()Lwm6;

    move-result-object v6

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v6}, Lwm6;->d()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a

    goto :goto_5

    :cond_a
    move-object v2, v11

    :goto_5
    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Lwm6;->b()Lgw3;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lgw3;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_b
    move-object v2, v4

    :goto_6
    if-eqz v2, :cond_c

    invoke-virtual {v6}, Lwm6;->b()Lgw3;

    move-result-object v2

    invoke-virtual {v2}, Lgw3;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10, v2, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :cond_c
    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, v10}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_d
    invoke-virtual {p0}, Ltx5;->c()Lwm6;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lwm6;->d()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_e
    move-object v6, v4

    :goto_7
    if-nez v6, :cond_f

    goto :goto_8

    :cond_f
    move-object v2, v6

    :goto_8
    invoke-static {v2}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_9
    invoke-virtual {p0}, Ltx5;->c()Lwm6;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lwm6;->a()Ldw3;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ldw3;->b()Lle6;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lle6;->a()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_a

    :cond_10
    move v6, v9

    :goto_a
    const/4 v7, 0x1

    if-nez v6, :cond_13

    invoke-virtual {p0}, Ltx5;->c()Lwm6;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lwm6;->b()Lgw3;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lgw3;->b()Lne6;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lne6;->a()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_b

    :cond_11
    move v6, v9

    :goto_b
    if-eqz v6, :cond_12

    goto :goto_c

    :cond_12
    move v6, v7

    move v7, v9

    goto :goto_d

    :cond_13
    :goto_c
    move v6, v7

    :goto_d
    xor-int/lit8 v8, p1, 0x1

    invoke-virtual {p0}, Ltx5;->c()Lwm6;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lwm6;->a()Ldw3;

    move-result-object v4

    :cond_14
    if-eqz v4, :cond_15

    :goto_e
    move-object v4, v2

    move-object v2, v0

    goto :goto_f

    :cond_15
    move v6, v9

    goto :goto_e

    :goto_f
    new-instance v0, Lsv7$c;

    invoke-direct/range {v0 .. v8}, Lsv7$c;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/text/Spanned;ZZZZ)V

    return-object v0
.end method
