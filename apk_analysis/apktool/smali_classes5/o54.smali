.class public final Lo54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll54;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo54$a;
    }
.end annotation


# static fields
.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/util/BitSet;

.field public final b:Ljava/util/BitSet;

.field public final c:Ljava/util/HashMap;

.field public final d:Lm54;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Lnl2;

.field public h:Lpt0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^[!\"#\\$%&\'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->i:Ljava/util/regex/Pattern;

    const-string v0, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->j:Ljava/util/regex/Pattern;

    const-string v0, "^[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->k:Ljava/util/regex/Pattern;

    const-string v0, "^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->l:Ljava/util/regex/Pattern;

    const-string v0, "`+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->m:Ljava/util/regex/Pattern;

    const-string v0, "^`+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->n:Ljava/util/regex/Pattern;

    const-string v0, "^<([a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->o:Ljava/util/regex/Pattern;

    const-string v0, "^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->p:Ljava/util/regex/Pattern;

    const-string v0, "^ *(?:\n *)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->q:Ljava/util/regex/Pattern;

    const-string v0, "^[\\p{Zs}\t\r\n\u000c]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->r:Ljava/util/regex/Pattern;

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->s:Ljava/util/regex/Pattern;

    const-string v0, " *$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo54;->t:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lm54;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lm54;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lis;

    invoke-direct {v2}, Lis;-><init>()V

    new-instance v3, Lf59;

    invoke-direct {v3}, Lf59;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Lol2;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lo54;->c(Ljava/lang/Iterable;Ljava/util/HashMap;)V

    invoke-static {v0, v1}, Lo54;->c(Ljava/lang/Iterable;Ljava/util/HashMap;)V

    iput-object v1, p0, Lo54;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lo54;->b:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iput-object v0, p0, Lo54;->a:Ljava/util/BitSet;

    iput-object p1, p0, Lo54;->d:Lm54;

    return-void
.end method

.method public static b(CLol2;Ljava/util/HashMap;)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lol2;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Delimiter processor conflict with delimiter char \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/lang/Iterable;Ljava/util/HashMap;)V
    .locals 5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol2;

    invoke-interface {v0}, Lol2;->c()C

    move-result v1

    invoke-interface {v0}, Lol2;->a()C

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lol2;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lol2;->c()C

    move-result v3

    invoke-interface {v2}, Lol2;->a()C

    move-result v4

    if-ne v3, v4, :cond_1

    instance-of v3, v2, Lq68;

    if-eqz v3, :cond_0

    check-cast v2, Lq68;

    goto :goto_1

    :cond_0
    new-instance v3, Lq68;

    invoke-direct {v3, v1}, Lq68;-><init>(C)V

    invoke-virtual {v3, v2}, Lq68;->f(Lol2;)V

    move-object v2, v3

    :goto_1
    invoke-virtual {v2, v0}, Lq68;->f(Lol2;)V

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v1, v0, p1}, Lo54;->b(CLol2;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    invoke-static {v1, v0, p1}, Lo54;->b(CLol2;Ljava/util/HashMap;)V

    invoke-static {v2, v0, p1}, Lo54;->b(CLol2;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static e(Ldq8;Ldq8;I)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eq p0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p2, p0, Ldq8;->f:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lzn5;->e:Lzn5;

    iget-object p1, p1, Lzn5;->e:Lzn5;

    :goto_0
    if-eq p2, p1, :cond_0

    move-object v1, p2

    check-cast v1, Ldq8;

    iget-object v1, v1, Ldq8;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lzn5;->e:Lzn5;

    invoke-virtual {p2}, Lzn5;->f()V

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldq8;->f:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static f(Lzn5;Lzn5;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move v4, v1

    :goto_0
    if-eqz p0, :cond_3

    instance-of v5, p0, Ldq8;

    if-eqz v5, :cond_1

    move-object v3, p0

    check-cast v3, Ldq8;

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    iget-object v5, v3, Ldq8;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    move v4, v5

    goto :goto_1

    :cond_1
    invoke-static {v2, v3, v4}, Lo54;->e(Ldq8;Ldq8;I)V

    move-object v2, v0

    move-object v3, v2

    move v4, v1

    :goto_1
    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lzn5;->e:Lzn5;

    goto :goto_0

    :cond_3
    :goto_2
    invoke-static {v2, v3, v4}, Lo54;->e(Ldq8;Ldq8;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lzn5;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo54;->e:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lo54;->f:I

    const/4 v3, 0x0

    iput-object v3, v0, Lo54;->g:Lnl2;

    iput-object v3, v0, Lo54;->h:Lpt0;

    move-object v4, v3

    :goto_0
    invoke-virtual {v0}, Lo54;->g()C

    move-result v7

    if-nez v7, :cond_0

    move v5, v2

    :goto_1
    move-object v4, v3

    goto/16 :goto_24

    :cond_0
    const-string v5, " "

    const/4 v11, 0x1

    const/16 v8, 0xa

    if-eq v7, v8, :cond_3d

    const/16 v4, 0x21

    if-eq v7, v4, :cond_3a

    const/16 v4, 0x26

    if-eq v7, v4, :cond_39

    const/16 v4, 0x3c

    if-eq v7, v4, :cond_36

    const/16 v10, 0x60

    if-eq v7, v10, :cond_30

    packed-switch v7, :pswitch_data_0

    iget-object v4, v0, Lo54;->b:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v0, Lo54;->c:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lol2;

    iget v5, v0, Lo54;->f:I

    move v6, v2

    :goto_2
    invoke-virtual {v0}, Lo54;->g()C

    move-result v8

    if-ne v8, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    iget v8, v0, Lo54;->f:I

    add-int/2addr v8, v11

    iput v8, v0, Lo54;->f:I

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Lol2;->b()I

    move-result v8

    if-ge v6, v8, :cond_2

    iput v5, v0, Lo54;->f:I

    move-object v9, v3

    goto/16 :goto_b

    :cond_2
    const-string v8, "\n"

    if-nez v5, :cond_3

    move-object v9, v8

    goto :goto_3

    :cond_3
    iget-object v9, v0, Lo54;->e:Ljava/lang/String;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v0}, Lo54;->g()C

    move-result v10

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    :goto_4
    sget-object v10, Lo54;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    sget-object v13, Lo54;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v10, :cond_5

    if-nez v9, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    move v13, v11

    goto :goto_5

    :cond_6
    move v13, v2

    :goto_5
    if-nez v9, :cond_8

    if-eqz v12, :cond_7

    if-nez v8, :cond_7

    if-eqz v10, :cond_8

    :cond_7
    move v8, v11

    goto :goto_6

    :cond_8
    move v8, v2

    :goto_6
    const/16 v9, 0x5f

    if-ne v7, v9, :cond_d

    if-eqz v13, :cond_a

    if-eqz v8, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    move v4, v11

    goto :goto_7

    :cond_a
    move v4, v2

    :goto_7
    if-eqz v8, :cond_c

    if-eqz v13, :cond_b

    if-eqz v10, :cond_c

    :cond_b
    move v8, v11

    goto :goto_a

    :cond_c
    move v8, v2

    goto :goto_a

    :cond_d
    if-eqz v13, :cond_e

    invoke-interface {v4}, Lol2;->c()C

    move-result v9

    if-ne v7, v9, :cond_e

    move v9, v11

    goto :goto_8

    :cond_e
    move v9, v2

    :goto_8
    if-eqz v8, :cond_f

    invoke-interface {v4}, Lol2;->a()C

    move-result v4

    if-ne v7, v4, :cond_f

    move v8, v11

    goto :goto_9

    :cond_f
    move v8, v2

    :goto_9
    move v4, v9

    :goto_a
    iput v5, v0, Lo54;->f:I

    new-instance v9, Lo54$a;

    invoke-direct {v9, v6, v4, v8}, Lo54$a;-><init>(IZZ)V

    :goto_b
    if-nez v9, :cond_11

    :cond_10
    move-object v10, v3

    goto :goto_c

    :cond_11
    iget v4, v9, Lo54$a;->a:I

    add-int v6, v5, v4

    iput v6, v0, Lo54;->f:I

    iget-object v8, v0, Lo54;->e:Ljava/lang/String;

    new-instance v10, Ldq8;

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ldq8;-><init>(Ljava/lang/String;)V

    new-instance v5, Lnl2;

    iget-boolean v8, v9, Lo54$a;->c:Z

    iget-boolean v9, v9, Lo54$a;->b:Z

    move-object v6, v10

    iget-object v10, v0, Lo54;->g:Lnl2;

    invoke-direct/range {v5 .. v10}, Lnl2;-><init>(Ldq8;CZZLnl2;)V

    iput-object v5, v0, Lo54;->g:Lnl2;

    iput v4, v5, Lnl2;->g:I

    iput v4, v5, Lnl2;->h:I

    if-eqz v10, :cond_12

    iput-object v5, v10, Lnl2;->f:Lnl2;

    :cond_12
    move-object v10, v6

    :goto_c
    move v5, v2

    goto/16 :goto_23

    :cond_13
    iget v4, v0, Lo54;->f:I

    iget-object v5, v0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_d
    iget v6, v0, Lo54;->f:I

    if-eq v6, v5, :cond_15

    iget-object v8, v0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v8, v0, Lo54;->a:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_e

    :cond_14
    iget v6, v0, Lo54;->f:I

    add-int/2addr v6, v11

    iput v6, v0, Lo54;->f:I

    goto :goto_d

    :cond_15
    :goto_e
    iget v5, v0, Lo54;->f:I

    if-eq v4, v5, :cond_10

    iget-object v6, v0, Lo54;->e:Ljava/lang/String;

    new-instance v8, Ldq8;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ldq8;-><init>(Ljava/lang/String;)V

    move-object v10, v8

    goto :goto_c

    :pswitch_0
    iget v8, v0, Lo54;->f:I

    add-int/2addr v8, v11

    iput v8, v0, Lo54;->f:I

    iget-object v10, v0, Lo54;->h:Lpt0;

    const-string v12, "]"

    if-nez v10, :cond_16

    new-instance v4, Ldq8;

    invoke-direct {v4, v12}, Ldq8;-><init>(Ljava/lang/String;)V

    :goto_f
    move-object v10, v4

    goto/16 :goto_1d

    :cond_16
    iget-object v13, v10, Lpt0;->a:Ldq8;

    iget-boolean v14, v10, Lpt0;->c:Z

    iget-boolean v15, v10, Lpt0;->f:Z

    if-nez v15, :cond_17

    iget-object v4, v10, Lpt0;->d:Lpt0;

    iput-object v4, v0, Lo54;->h:Lpt0;

    new-instance v4, Ldq8;

    invoke-direct {v4, v12}, Ldq8;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_17
    invoke-virtual {v0}, Lo54;->g()C

    move-result v15

    const/16 v3, 0x28

    const/4 v2, -0x1

    if-ne v15, v3, :cond_1e

    iget v3, v0, Lo54;->f:I

    add-int/2addr v3, v11

    iput v3, v0, Lo54;->f:I

    sget-object v3, Lo54;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Lo54;->d(Ljava/util/regex/Pattern;)Ljava/lang/String;

    iget-object v15, v0, Lo54;->e:Ljava/lang/String;

    move/from16 v16, v11

    iget v11, v0, Lo54;->f:I

    invoke-static {v11, v15}, Lo8;->t(ILjava/lang/CharSequence;)I

    move-result v11

    if-ne v11, v2, :cond_18

    const/4 v4, 0x0

    goto :goto_11

    :cond_18
    invoke-virtual {v0}, Lo54;->g()C

    move-result v15

    iget-object v6, v0, Lo54;->e:Ljava/lang/String;

    iget v9, v0, Lo54;->f:I

    if-ne v15, v4, :cond_19

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_19
    invoke-virtual {v6, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_10
    iput v11, v0, Lo54;->f:I

    invoke-static {v4}, Lw03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_11
    if-eqz v4, :cond_1d

    invoke-virtual {v0, v3}, Lo54;->d(Ljava/util/regex/Pattern;)Ljava/lang/String;

    iget-object v6, v0, Lo54;->e:Ljava/lang/String;

    iget v9, v0, Lo54;->f:I

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lo54;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v0, Lo54;->e:Ljava/lang/String;

    iget v9, v0, Lo54;->f:I

    invoke-static {v9, v6}, Lo8;->v(ILjava/lang/CharSequence;)I

    move-result v6

    if-ne v6, v2, :cond_1a

    const/4 v6, 0x0

    goto :goto_12

    :cond_1a
    iget-object v9, v0, Lo54;->e:Ljava/lang/String;

    iget v11, v0, Lo54;->f:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v15, v6, -0x1

    invoke-virtual {v9, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput v6, v0, Lo54;->f:I

    invoke-static {v9}, Lw03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_12
    invoke-virtual {v0, v3}, Lo54;->d(Ljava/util/regex/Pattern;)Ljava/lang/String;

    goto :goto_13

    :cond_1b
    const/4 v6, 0x0

    :goto_13
    invoke-virtual {v0}, Lo54;->g()C

    move-result v3

    const/16 v9, 0x29

    if-ne v3, v9, :cond_1c

    iget v3, v0, Lo54;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lo54;->f:I

    move/from16 v3, v16

    goto :goto_15

    :cond_1c
    iput v8, v0, Lo54;->f:I

    const/4 v3, 0x0

    goto :goto_15

    :cond_1d
    const/4 v3, 0x0

    :goto_14
    const/4 v6, 0x0

    goto :goto_15

    :cond_1e
    move/from16 v16, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_14

    :goto_15
    if-nez v3, :cond_25

    iget v9, v0, Lo54;->f:I

    iget-object v11, v0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_22

    iget-object v11, v0, Lo54;->e:Ljava/lang/String;

    iget v15, v0, Lo54;->f:I

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v15, 0x5b

    if-eq v11, v15, :cond_1f

    goto :goto_16

    :cond_1f
    iget v11, v0, Lo54;->f:I

    add-int/lit8 v11, v11, 0x1

    iget-object v15, v0, Lo54;->e:Ljava/lang/String;

    invoke-static {v11, v15}, Lo8;->u(ILjava/lang/CharSequence;)I

    move-result v15

    sub-int v11, v15, v11

    if-eq v15, v2, :cond_22

    const/16 v2, 0x3e7

    if-le v11, v2, :cond_20

    goto :goto_16

    :cond_20
    iget-object v2, v0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v15, v2, :cond_22

    iget-object v2, v0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v11, 0x5d

    if-eq v2, v11, :cond_21

    goto :goto_16

    :cond_21
    add-int/lit8 v15, v15, 0x1

    iput v15, v0, Lo54;->f:I

    :cond_22
    :goto_16
    iget v2, v0, Lo54;->f:I

    sub-int/2addr v2, v9

    const/4 v11, 0x2

    if-le v2, v11, :cond_23

    iget-object v11, v0, Lo54;->e:Ljava/lang/String;

    add-int/2addr v2, v9

    invoke-virtual {v11, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_23
    iget-boolean v2, v10, Lpt0;->g:Z

    if-nez v2, :cond_24

    iget-object v2, v0, Lo54;->e:Ljava/lang/String;

    iget v9, v10, Lpt0;->b:I

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_24
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_25

    sget-object v9, Lw03;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move/from16 v11, v16

    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lw03;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lo54;->d:Lm54;

    iget-object v5, v5, Lm54;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loq4;

    if-eqz v2, :cond_25

    iget-object v4, v2, Loq4;->g:Ljava/lang/String;

    iget-object v6, v2, Loq4;->h:Ljava/lang/String;

    const/4 v3, 0x1

    :cond_25
    if-eqz v3, :cond_2b

    if-eqz v14, :cond_26

    new-instance v2, Lw04;

    invoke-direct {v2, v4, v6}, Lw04;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_26
    new-instance v2, Lhq4;

    invoke-direct {v2, v4, v6}, Lhq4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    iget-object v3, v13, Lzn5;->e:Lzn5;

    :goto_19
    if-eqz v3, :cond_27

    iget-object v4, v3, Lzn5;->e:Lzn5;

    invoke-virtual {v2, v3}, Lzn5;->b(Lzn5;)V

    move-object v3, v4

    goto :goto_19

    :cond_27
    iget-object v3, v10, Lpt0;->e:Lnl2;

    invoke-virtual {v0, v3}, Lo54;->h(Lnl2;)V

    iget-object v3, v2, Lzn5;->b:Lzn5;

    iget-object v4, v2, Lzn5;->c:Lzn5;

    if-ne v3, v4, :cond_28

    goto :goto_1a

    :cond_28
    invoke-static {v3, v4}, Lo54;->f(Lzn5;Lzn5;)V

    :goto_1a
    invoke-virtual {v13}, Lzn5;->f()V

    iget-object v3, v0, Lo54;->h:Lpt0;

    iget-object v3, v3, Lpt0;->d:Lpt0;

    iput-object v3, v0, Lo54;->h:Lpt0;

    if-nez v14, :cond_2a

    :goto_1b
    if-eqz v3, :cond_2a

    iget-boolean v4, v3, Lpt0;->c:Z

    if-nez v4, :cond_29

    const/4 v4, 0x0

    iput-boolean v4, v3, Lpt0;->f:Z

    :cond_29
    iget-object v3, v3, Lpt0;->d:Lpt0;

    goto :goto_1b

    :cond_2a
    :goto_1c
    move-object v10, v2

    goto :goto_1d

    :cond_2b
    iput v8, v0, Lo54;->f:I

    iget-object v2, v0, Lo54;->h:Lpt0;

    iget-object v2, v2, Lpt0;->d:Lpt0;

    iput-object v2, v0, Lo54;->h:Lpt0;

    new-instance v2, Ldq8;

    invoke-direct {v2, v12}, Ldq8;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :cond_2c
    :goto_1d
    const/4 v5, 0x0

    goto/16 :goto_23

    :pswitch_1
    iget v2, v0, Lo54;->f:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lo54;->f:I

    invoke-virtual {v0}, Lo54;->g()C

    move-result v2

    if-ne v2, v8, :cond_2d

    new-instance v2, Lpu3;

    invoke-direct {v2}, Lpu3;-><init>()V

    iget v3, v0, Lo54;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lo54;->f:I

    goto :goto_1c

    :cond_2d
    iget v2, v0, Lo54;->f:I

    iget-object v3, v0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    iget-object v2, v0, Lo54;->e:Ljava/lang/String;

    iget v3, v0, Lo54;->f:I

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo54;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lo54;->e:Ljava/lang/String;

    iget v3, v0, Lo54;->f:I

    add-int/lit8 v4, v3, 0x1

    new-instance v5, Ldq8;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ldq8;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lo54;->f:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lo54;->f:I

    move-object v10, v5

    goto :goto_1d

    :cond_2e
    new-instance v2, Ldq8;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ldq8;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :pswitch_2
    iget v2, v0, Lo54;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lo54;->f:I

    new-instance v3, Ldq8;

    const-string v4, "["

    invoke-direct {v3, v4}, Ldq8;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lo54;->h:Lpt0;

    iget-object v5, v0, Lo54;->g:Lnl2;

    new-instance v17, Lpt0;

    const/16 v22, 0x0

    move/from16 v19, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-direct/range {v17 .. v22}, Lpt0;-><init>(Ldq8;ILpt0;Lnl2;Z)V

    move-object/from16 v3, v17

    move-object/from16 v2, v20

    if-eqz v2, :cond_2f

    const/4 v11, 0x1

    iput-boolean v11, v2, Lpt0;->g:Z

    :cond_2f
    iput-object v3, v0, Lo54;->h:Lpt0;

    move-object/from16 v10, v18

    goto/16 :goto_1d

    :cond_30
    sget-object v2, Lo54;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Lo54;->d(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_32

    :cond_31
    const/4 v10, 0x0

    goto/16 :goto_1d

    :cond_32
    iget v3, v0, Lo54;->f:I

    :cond_33
    sget-object v4, Lo54;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Lo54;->d(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    new-instance v4, Lum1;

    invoke-direct {v4}, Lum1;-><init>()V

    iget-object v5, v0, Lo54;->e:Ljava/lang/String;

    iget v6, v0, Lo54;->f:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v6, v2

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_34

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v5, v6, v2}, Ltz;->b(CIILjava/lang/CharSequence;)I

    move-result v3

    if-eq v3, v6, :cond_34

    invoke-static {v11, v11, v2}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_34
    iput-object v2, v4, Lum1;->f:Ljava/lang/String;

    goto/16 :goto_f

    :cond_35
    iput v3, v0, Lo54;->f:I

    new-instance v3, Ldq8;

    invoke-direct {v3, v2}, Ldq8;-><init>(Ljava/lang/String;)V

    :goto_1e
    move-object v10, v3

    goto/16 :goto_1d

    :cond_36
    sget-object v2, Lo54;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Lo54;->d(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    const/4 v11, 0x1

    invoke-static {v11, v11, v2}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lhq4;

    const-string v4, "mailto:"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lhq4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ldq8;

    invoke-direct {v4, v2}, Ldq8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lzn5;->b(Lzn5;)V

    :goto_1f
    move-object v10, v3

    goto :goto_20

    :cond_37
    const/4 v5, 0x0

    sget-object v2, Lo54;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Lo54;->d(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    const/4 v11, 0x1

    invoke-static {v11, v11, v2}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lhq4;

    invoke-direct {v3, v2, v5}, Lhq4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ldq8;

    invoke-direct {v4, v2}, Ldq8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lzn5;->b(Lzn5;)V

    goto :goto_1f

    :cond_38
    const/4 v10, 0x0

    :goto_20
    if-nez v10, :cond_2c

    sget-object v2, Lo54;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Lo54;->d(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    new-instance v2, Lux3;

    invoke-direct {v2}, Lzn5;-><init>()V

    goto/16 :goto_1c

    :cond_39
    sget-object v2, Lo54;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Lo54;->d(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-static {v2}, Lkx3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ldq8;

    invoke-direct {v3, v2}, Ldq8;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :cond_3a
    iget v2, v0, Lo54;->f:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    iput v2, v0, Lo54;->f:I

    invoke-virtual {v0}, Lo54;->g()C

    move-result v3

    const/16 v15, 0x5b

    if-ne v3, v15, :cond_3c

    iget v3, v0, Lo54;->f:I

    add-int/2addr v3, v11

    iput v3, v0, Lo54;->f:I

    new-instance v3, Ldq8;

    const-string v4, "!["

    invoke-direct {v3, v4}, Ldq8;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lo54;->h:Lpt0;

    iget-object v5, v0, Lo54;->g:Lnl2;

    new-instance v19, Lpt0;

    const/16 v24, 0x1

    move/from16 v21, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v19 .. v24}, Lpt0;-><init>(Ldq8;ILpt0;Lnl2;Z)V

    move-object/from16 v3, v19

    move-object/from16 v2, v22

    if-eqz v2, :cond_3b

    iput-boolean v11, v2, Lpt0;->g:Z

    :cond_3b
    iput-object v3, v0, Lo54;->h:Lpt0;

    move-object/from16 v10, v20

    goto/16 :goto_1d

    :cond_3c
    new-instance v2, Ldq8;

    const-string v3, "!"

    invoke-direct {v2, v3}, Ldq8;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_3d
    iget v2, v0, Lo54;->f:I

    add-int/2addr v2, v11

    iput v2, v0, Lo54;->f:I

    instance-of v2, v4, Ldq8;

    if-eqz v2, :cond_41

    check-cast v4, Ldq8;

    iget-object v2, v4, Ldq8;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, v4, Ldq8;->f:Ljava/lang/String;

    sget-object v3, Lo54;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    sub-int v3, v5, v3

    goto :goto_21

    :cond_3e
    const/4 v3, 0x0

    :goto_21
    const/4 v5, 0x0

    if-lez v3, :cond_3f

    invoke-static {v3, v5, v2}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Ldq8;->f:Ljava/lang/String;

    :cond_3f
    const/4 v11, 0x2

    if-lt v3, v11, :cond_40

    new-instance v2, Lpu3;

    invoke-direct {v2}, Lpu3;-><init>()V

    :goto_22
    move-object v10, v2

    goto :goto_23

    :cond_40
    new-instance v2, Lo48;

    invoke-direct {v2}, Lo48;-><init>()V

    goto :goto_22

    :cond_41
    const/4 v5, 0x0

    new-instance v2, Lo48;

    invoke-direct {v2}, Lo48;-><init>()V

    goto :goto_22

    :goto_23
    if-eqz v10, :cond_42

    move-object v4, v10

    goto :goto_24

    :cond_42
    iget v2, v0, Lo54;->f:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lo54;->f:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ldq8;

    invoke-direct {v3, v2}, Ldq8;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_24
    if-eqz v4, :cond_43

    invoke-virtual {v1, v4}, Lzn5;->b(Lzn5;)V

    move v2, v5

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_43
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lo54;->h(Lnl2;)V

    iget-object v0, v1, Lzn5;->b:Lzn5;

    iget-object v1, v1, Lzn5;->c:Lzn5;

    if-ne v0, v1, :cond_44

    return-void

    :cond_44
    invoke-static {v0, v1}, Lo54;->f(Lzn5;Lzn5;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lo54;->f:I

    iget-object v1, p0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iget v0, p0, Lo54;->f:I

    iget-object v1, p0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lo54;->f:I

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public final g()C
    .locals 2

    iget v0, p0, Lo54;->f:I

    iget-object v1, p0, Lo54;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lo54;->e:Ljava/lang/String;

    iget p0, p0, Lo54;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(Lnl2;)V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lo54;->g:Lnl2;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lnl2;->e:Lnl2;

    if-eq v2, p1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v1, :cond_b

    iget-object v2, v1, Lnl2;->a:Ldq8;

    iget-char v3, v1, Lnl2;->b:C

    iget-object v4, p0, Lo54;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lol2;

    iget-boolean v5, v1, Lnl2;->d:Z

    if-eqz v5, :cond_a

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {v4}, Lol2;->c()C

    move-result v5

    iget-object v6, v1, Lnl2;->e:Lnl2;

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_2
    if-eqz v6, :cond_3

    if-eq v6, p1, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v6, v10, :cond_3

    iget-boolean v10, v6, Lnl2;->c:Z

    if-eqz v10, :cond_2

    iget-char v10, v6, Lnl2;->b:C

    if-ne v10, v5, :cond_2

    invoke-interface {v4, v6, v1}, Lol2;->e(Lnl2;Lnl2;)I

    move-result v8

    const/4 v9, 0x1

    if-lez v8, :cond_2

    move v5, v9

    goto :goto_3

    :cond_2
    iget-object v6, v6, Lnl2;->e:Lnl2;

    goto :goto_2

    :cond_3
    move v5, v9

    move v9, v7

    :goto_3
    if-nez v9, :cond_5

    if-nez v5, :cond_4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iget-object v3, v1, Lnl2;->e:Lnl2;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lnl2;->c:Z

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lo54;->i(Lnl2;)V

    :cond_4
    iget-object v1, v1, Lnl2;->f:Lnl2;

    goto :goto_1

    :cond_5
    iget-object v3, v6, Lnl2;->a:Ldq8;

    iget v5, v6, Lnl2;->g:I

    sub-int/2addr v5, v8

    iput v5, v6, Lnl2;->g:I

    iget v5, v1, Lnl2;->g:I

    sub-int/2addr v5, v8

    iput v5, v1, Lnl2;->g:I

    iget-object v5, v3, Ldq8;->f:Ljava/lang/String;

    invoke-static {v8, v7, v5}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Ldq8;->f:Ljava/lang/String;

    iget-object v5, v2, Ldq8;->f:Ljava/lang/String;

    invoke-static {v8, v7, v5}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Ldq8;->f:Ljava/lang/String;

    iget-object v5, v1, Lnl2;->e:Lnl2;

    :goto_4
    if-eqz v5, :cond_6

    if-eq v5, v6, :cond_6

    iget-object v7, v5, Lnl2;->e:Lnl2;

    invoke-virtual {p0, v5}, Lo54;->i(Lnl2;)V

    move-object v5, v7

    goto :goto_4

    :cond_6
    if-eq v3, v2, :cond_8

    iget-object v5, v3, Lzn5;->e:Lzn5;

    if-ne v5, v2, :cond_7

    goto :goto_5

    :cond_7
    iget-object v7, v2, Lzn5;->d:Lzn5;

    invoke-static {v5, v7}, Lo54;->f(Lzn5;Lzn5;)V

    :cond_8
    :goto_5
    invoke-interface {v4, v3, v2, v8}, Lol2;->d(Ldq8;Ldq8;I)V

    iget v3, v6, Lnl2;->g:I

    if-nez v3, :cond_9

    iget-object v3, v6, Lnl2;->a:Ldq8;

    invoke-virtual {v3}, Lzn5;->f()V

    invoke-virtual {p0, v6}, Lo54;->i(Lnl2;)V

    :cond_9
    iget v3, v1, Lnl2;->g:I

    if-nez v3, :cond_0

    iget-object v3, v1, Lnl2;->f:Lnl2;

    invoke-virtual {v2}, Lzn5;->f()V

    invoke-virtual {p0, v1}, Lo54;->i(Lnl2;)V

    move-object v1, v3

    goto/16 :goto_1

    :cond_a
    :goto_6
    iget-object v1, v1, Lnl2;->f:Lnl2;

    goto/16 :goto_1

    :cond_b
    :goto_7
    iget-object v0, p0, Lo54;->g:Lnl2;

    if-eqz v0, :cond_c

    if-eq v0, p1, :cond_c

    invoke-virtual {p0, v0}, Lo54;->i(Lnl2;)V

    goto :goto_7

    :cond_c
    return-void
.end method

.method public final i(Lnl2;)V
    .locals 2

    iget-object v0, p1, Lnl2;->e:Lnl2;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lnl2;->f:Lnl2;

    iput-object v1, v0, Lnl2;->f:Lnl2;

    :cond_0
    iget-object p1, p1, Lnl2;->f:Lnl2;

    if-nez p1, :cond_1

    iput-object v0, p0, Lo54;->g:Lnl2;

    return-void

    :cond_1
    iput-object v0, p1, Lnl2;->e:Lnl2;

    return-void
.end method
