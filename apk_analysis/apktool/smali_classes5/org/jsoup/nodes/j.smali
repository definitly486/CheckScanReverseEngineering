.class public final Lorg/jsoup/nodes/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/j$c;,
        Lorg/jsoup/nodes/j$b;
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/nodes/j;->a:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/j;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x6a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/jsoup/nodes/j;->c:Ljava/util/ArrayList;

    new-instance v0, Lorg/jsoup/nodes/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/j;->d:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/j;->e:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public static a(Lnw6;Lorg/jsoup/nodes/j$c;I)V
    .locals 2

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/j$c;->d(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_0

    const/16 p2, 0x26

    invoke-virtual {p0, p2}, Lnw6;->a(C)Lnw6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    invoke-virtual {p0, v1}, Lnw6;->a(C)Lnw6;

    return-void

    :cond_0
    const-string p1, "&#x"

    invoke-virtual {p0, p1}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    invoke-virtual {p0, v1}, Lnw6;->a(C)Lnw6;

    return-void
.end method

.method public static b(Lorg/jsoup/nodes/j$b;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 3

    sget-object v0, Lorg/jsoup/nodes/j$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result p0

    return p0

    :cond_0
    const p0, 0xd800

    if-lt p1, p0, :cond_2

    const p0, 0xe000

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/16 p0, 0x80

    if-ge p1, p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public static c(Lnw6;Ljava/lang/String;Lorg/jsoup/nodes/f$a;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lorg/jsoup/nodes/f$a;->b:Lorg/jsoup/nodes/j$c;

    iget-object v1, v1, Lorg/jsoup/nodes/f$a;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Lorg/jsoup/nodes/j$b;->ascii:Lorg/jsoup/nodes/j$b;

    goto :goto_0

    :cond_0
    const-string v4, "UTF-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/jsoup/nodes/j$b;->utf:Lorg/jsoup/nodes/j$b;

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/jsoup/nodes/j$b;->fallback:Lorg/jsoup/nodes/j$b;

    :goto_0
    sget-object v4, Lorg/jsoup/nodes/j;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/charset/CharsetEncoder;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v6, v1, :cond_1d

    move-object/from16 v10, p1

    invoke-virtual {v10, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    and-int/lit8 v12, p3, 0x4

    const/16 v13, 0x20

    if-eqz v12, :cond_a

    invoke-static {v11}, Lja8;->h(I)Z

    move-result v12

    const/4 v14, 0x1

    if-eqz v12, :cond_8

    and-int/lit8 v12, p3, 0x8

    if-eqz v12, :cond_4

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v9, :cond_6

    :cond_5
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_6
    and-int/lit8 v12, p3, 0x10

    if-eqz v12, :cond_7

    move v7, v14

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v13}, Lnw6;->a(C)Lnw6;

    move v9, v14

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v0, v13}, Lnw6;->a(C)Lnw6;

    move v8, v14

    const/4 v7, 0x0

    :goto_3
    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    move v8, v14

    goto :goto_3

    :cond_a
    :goto_4
    sget-object v12, Lorg/jsoup/nodes/j$c;->xhtml:Lorg/jsoup/nodes/j$c;

    const/16 v15, 0xd

    const/16 v4, 0xa

    const/16 v14, 0x9

    if-ne v12, v2, :cond_d

    if-eq v11, v14, :cond_d

    if-eq v11, v4, :cond_d

    if-eq v11, v15, :cond_d

    if-lt v11, v13, :cond_b

    const v13, 0xd7ff

    if-le v11, v13, :cond_d

    :cond_b
    const v13, 0xe000

    if-lt v11, v13, :cond_c

    const v13, 0xfffd

    if-le v11, v13, :cond_d

    :cond_c
    const/high16 v13, 0x10000

    if-lt v11, v13, :cond_5

    const v13, 0x10ffff

    if-gt v11, v13, :cond_5

    :cond_d
    int-to-char v13, v11

    const/high16 v15, 0x10000

    if-ge v11, v15, :cond_1b

    if-eq v13, v14, :cond_1a

    if-eq v13, v4, :cond_1a

    const/16 v4, 0xd

    if-eq v13, v4, :cond_1a

    const/16 v4, 0x22

    if-eq v13, v4, :cond_18

    const/16 v4, 0x3c

    if-eq v13, v4, :cond_17

    const/16 v4, 0x3e

    if-eq v13, v4, :cond_16

    const/16 v4, 0xa0

    if-eq v13, v4, :cond_14

    const/16 v4, 0x26

    if-eq v13, v4, :cond_13

    const/16 v4, 0x27

    if-eq v13, v4, :cond_10

    const/16 v14, 0x20

    if-lt v13, v14, :cond_f

    invoke-static {v3, v13, v5}, Lorg/jsoup/nodes/j;->b(Lorg/jsoup/nodes/j$b;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v13}, Lnw6;->a(C)Lnw6;

    goto :goto_2

    :cond_f
    :goto_5
    invoke-static {v0, v2, v11}, Lorg/jsoup/nodes/j;->a(Lnw6;Lorg/jsoup/nodes/j$c;I)V

    goto :goto_2

    :cond_10
    and-int/lit8 v13, p3, 0x2

    if-eqz v13, :cond_12

    and-int/lit8 v13, p3, 0x1

    if-eqz v13, :cond_12

    if-ne v2, v12, :cond_11

    const-string v4, "&#x27;"

    invoke-virtual {v0, v4}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    goto/16 :goto_2

    :cond_11
    const-string v4, "&apos;"

    invoke-virtual {v0, v4}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v0, v4}, Lnw6;->a(C)Lnw6;

    goto/16 :goto_2

    :cond_13
    const-string v4, "&amp;"

    invoke-virtual {v0, v4}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    goto/16 :goto_2

    :cond_14
    if-eq v2, v12, :cond_15

    const-string v4, "&nbsp;"

    invoke-virtual {v0, v4}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    goto/16 :goto_2

    :cond_15
    const-string v4, "&#xa0;"

    invoke-virtual {v0, v4}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    goto/16 :goto_2

    :cond_16
    const-string v4, "&gt;"

    invoke-virtual {v0, v4}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    goto/16 :goto_2

    :cond_17
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    goto/16 :goto_2

    :cond_18
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_19

    const-string v4, "&quot;"

    invoke-virtual {v0, v4}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    goto/16 :goto_2

    :cond_19
    invoke-virtual {v0, v13}, Lnw6;->a(C)Lnw6;

    goto/16 :goto_2

    :cond_1a
    invoke-virtual {v0, v13}, Lnw6;->a(C)Lnw6;

    goto/16 :goto_2

    :cond_1b
    invoke-static {v3, v13, v5}, Lorg/jsoup/nodes/j;->b(Lorg/jsoup/nodes/j$b;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Lorg/jsoup/nodes/j;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    const/4 v12, 0x0

    invoke-static {v11, v4, v12}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v13

    invoke-virtual {v0, v4, v13}, Lnw6;->c([CI)Lnw6;

    goto :goto_6

    :cond_1c
    const/4 v12, 0x0

    invoke-static {v0, v2, v11}, Lorg/jsoup/nodes/j;->a(Lnw6;Lorg/jsoup/nodes/j$c;I)V

    :goto_6
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v6, v4

    goto/16 :goto_1

    :cond_1d
    return-void
.end method
