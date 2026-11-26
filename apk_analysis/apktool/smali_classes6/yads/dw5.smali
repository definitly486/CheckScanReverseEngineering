.class public final Lyads/dw5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Lyads/te3;

.field public static final d:Lyads/te3;

.field public static final e:Lyads/te3;

.field public static final f:Lyads/te3;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lyads/dw5;->b:Ljava/util/regex/Pattern;

    const-string v0, "auto"

    const-string v1, "none"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lyads/te3;->b(I[Ljava/lang/Object;)Lyads/te3;

    move-result-object v0

    sput-object v0, Lyads/dw5;->c:Lyads/te3;

    const-string v0, "sesame"

    const-string v2, "circle"

    const-string v3, "dot"

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lyads/te3;->b(I[Ljava/lang/Object;)Lyads/te3;

    move-result-object v0

    sput-object v0, Lyads/dw5;->d:Lyads/te3;

    const-string v0, "filled"

    const-string v3, "open"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lyads/te3;->b(I[Ljava/lang/Object;)Lyads/te3;

    move-result-object v0

    sput-object v0, Lyads/dw5;->e:Lyads/te3;

    const-string v0, "before"

    const-string v1, "outside"

    const-string v3, "after"

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lyads/te3;->b(I[Ljava/lang/Object;)Lyads/te3;

    move-result-object v0

    sput-object v0, Lyads/dw5;->f:Lyads/te3;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/dw5;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lyads/dw5;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/oj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lyads/dw5;->b:Ljava/util/regex/Pattern;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v1, p0}, Lyads/te3;->b(I[Ljava/lang/Object;)Lyads/te3;

    move-result-object p0

    goto :goto_0

    :cond_2
    aget-object p0, p0, v2

    new-instance v1, Lyads/pl5;

    invoke-direct {v1, p0}, Lyads/pl5;-><init>(Ljava/lang/Object;)V

    move-object p0, v1

    goto :goto_0

    :cond_3
    sget-object p0, Lyads/q55;->j:Lyads/q55;

    :goto_0
    sget-object v1, Lyads/dw5;->f:Lyads/te3;

    const-string v4, "set1"

    if-eqz v1, :cond_1f

    if-eqz p0, :cond_1e

    new-instance v5, Lyads/pj5;

    invoke-direct {v5, v1, p0}, Lyads/pj5;-><init>(Lyads/te3;Lyads/te3;)V

    new-instance v1, Lyads/oj5;

    invoke-direct {v1, v5}, Lyads/oj5;-><init>(Lyads/pj5;)V

    invoke-virtual {v1}, Lyads/h;->hasNext()Z

    move-result v5

    const-string v6, "outside"

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lyads/h;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v6

    :goto_1
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v7, -0x5305c081

    const/4 v8, -0x1

    const/4 v9, 0x2

    if-eq v5, v7, :cond_7

    const v7, -0x41ecca5b

    if-eq v5, v7, :cond_6

    const v6, 0x58705dc

    if-eq v5, v6, :cond_5

    goto :goto_2

    :cond_5
    const-string v5, "after"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_3

    :cond_7
    const-string v5, "before"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v9

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v8

    :goto_3
    if-eqz v1, :cond_a

    if-eq v1, v3, :cond_9

    move v1, v3

    goto :goto_4

    :cond_9
    const/4 v1, -0x2

    goto :goto_4

    :cond_a
    move v1, v9

    :goto_4
    sget-object v5, Lyads/dw5;->c:Lyads/te3;

    if-eqz v5, :cond_1d

    new-instance v6, Lyads/pj5;

    invoke-direct {v6, v5, p0}, Lyads/pj5;-><init>(Lyads/te3;Lyads/te3;)V

    invoke-static {p0, v5}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_e

    new-instance p0, Lyads/oj5;

    invoke-direct {p0, v6}, Lyads/oj5;-><init>(Lyads/pj5;)V

    invoke-virtual {p0}, Lyads/h;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, 0x2dddaf

    if-eq v0, v3, :cond_c

    const v3, 0x33af38

    if-eq v0, v3, :cond_b

    goto :goto_5

    :cond_b
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    move v8, v2

    goto :goto_5

    :cond_c
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    new-instance p0, Lyads/dw5;

    invoke-direct {p0, v8, v2, v1}, Lyads/dw5;-><init>(III)V

    return-object p0

    :cond_e
    sget-object v5, Lyads/dw5;->e:Lyads/te3;

    if-eqz v5, :cond_1c

    new-instance v6, Lyads/pj5;

    invoke-direct {v6, v5, p0}, Lyads/pj5;-><init>(Lyads/te3;Lyads/te3;)V

    sget-object v7, Lyads/dw5;->d:Lyads/te3;

    if-eqz v7, :cond_1b

    new-instance v0, Lyads/pj5;

    invoke-direct {v0, v7, p0}, Lyads/pj5;-><init>(Lyads/te3;Lyads/te3;)V

    invoke-static {p0, v5}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {p0, v7}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_f

    new-instance p0, Lyads/dw5;

    invoke-direct {p0, v8, v2, v1}, Lyads/dw5;-><init>(III)V

    return-object p0

    :cond_f
    new-instance p0, Lyads/oj5;

    invoke-direct {p0, v6}, Lyads/oj5;-><init>(Lyads/pj5;)V

    invoke-virtual {p0}, Lyads/h;->hasNext()Z

    move-result v4

    const-string v5, "filled"

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lyads/h;->next()Ljava/lang/Object;

    move-result-object p0

    goto :goto_6

    :cond_10
    move-object p0, v5

    :goto_6
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v6, -0x4bf7529e

    if-eq v4, v6, :cond_12

    const v5, 0x34264a

    if-eq v4, v5, :cond_11

    goto :goto_7

    :cond_11
    const-string v4, "open"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v9

    goto :goto_8

    :cond_12
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_13
    :goto_7
    move p0, v3

    :goto_8
    new-instance v4, Lyads/oj5;

    invoke-direct {v4, v0}, Lyads/oj5;-><init>(Lyads/pj5;)V

    invoke-virtual {v4}, Lyads/h;->hasNext()Z

    move-result v0

    const-string v5, "circle"

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Lyads/h;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_14
    move-object v0, v5

    :goto_9
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v6, -0x51134330

    if-eq v4, v6, :cond_17

    const v5, -0x35fdaa48    # -2135406.0f

    if-eq v4, v5, :cond_16

    const v5, 0x18549

    if-eq v4, v5, :cond_15

    goto :goto_a

    :cond_15
    const-string v4, "dot"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_b

    :cond_16
    const-string v2, "sesame"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v2, v3

    goto :goto_b

    :cond_17
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v2, v9

    goto :goto_b

    :cond_18
    :goto_a
    move v2, v8

    :goto_b
    if-eqz v2, :cond_1a

    if-eq v2, v3, :cond_19

    goto :goto_c

    :cond_19
    const/4 v3, 0x3

    goto :goto_c

    :cond_1a
    move v3, v9

    :goto_c
    new-instance v0, Lyads/dw5;

    invoke-direct {v0, v3, p0, v1}, Lyads/dw5;-><init>(III)V

    return-object v0

    :cond_1b
    invoke-static {v4}, Lo2;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1c
    invoke-static {v4}, Lo2;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1d
    invoke-static {v4}, Lo2;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1e
    const-string p0, "set2"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1f
    invoke-static {v4}, Lo2;->d(Ljava/lang/String;)V

    return-object v0
.end method
