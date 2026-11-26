.class public final Lorg/jsoup/nodes/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/jsoup/nodes/b;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const-string v29, "truespeed"

    const-string v30, "typemustmatch"

    const-string v1, "allowfullscreen"

    const-string v2, "async"

    const-string v3, "autofocus"

    const-string v4, "checked"

    const-string v5, "compact"

    const-string v6, "declare"

    const-string v7, "default"

    const-string v8, "defer"

    const-string v9, "disabled"

    const-string v10, "formnovalidate"

    const-string v11, "hidden"

    const-string v12, "inert"

    const-string v13, "ismap"

    const-string v14, "itemscope"

    const-string v15, "multiple"

    const-string v16, "muted"

    const-string v17, "nohref"

    const-string v18, "noresize"

    const-string v19, "noshade"

    const-string v20, "novalidate"

    const-string v21, "nowrap"

    const-string v22, "open"

    const-string v23, "readonly"

    const-string v24, "required"

    const-string v25, "reversed"

    const-string v26, "seamless"

    const-string v27, "selected"

    const-string v28, "sortable"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/a;->e:[Ljava/lang/String;

    const-string v0, "[^-a-zA-Z0-9_:.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/a;->f:Ljava/util/regex/Pattern;

    const-string v0, "[\\x00-\\x1f\\x7f-\\x9f \"\'/=]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/a;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static b(Ljava/lang/String;Lorg/jsoup/nodes/f$a$a;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/jsoup/nodes/f$a$a;->xml:Lorg/jsoup/nodes/f$a$a;

    const/4 v1, 0x0

    const-string v2, "_"

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lorg/jsoup/nodes/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lorg/jsoup/nodes/a;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/nodes/a;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Lorg/jsoup/nodes/f$a$a;->html:Lorg/jsoup/nodes/f$a$a;

    if-ne p1, v0, :cond_3

    invoke-static {p0}, Lorg/jsoup/nodes/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lorg/jsoup/nodes/a;->g:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/nodes/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lnw6;Lorg/jsoup/nodes/f$a;)V
    .locals 2

    invoke-virtual {p2, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    iget-object v0, p3, Lorg/jsoup/nodes/f$a;->g:Lorg/jsoup/nodes/f$a$a;

    sget-object v1, Lorg/jsoup/nodes/f$a$a;->html:Lorg/jsoup/nodes/f$a$a;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/jsoup/nodes/a;->e:[Ljava/lang/String;

    invoke-static {p0}, Lmo5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string p0, "=\""

    invoke-virtual {p2, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    invoke-static {p1}, Lorg/jsoup/nodes/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p2, p0, p3, p1}, Lorg/jsoup/nodes/j;->c(Lnw6;Ljava/lang/String;Lorg/jsoup/nodes/f$a;I)V

    const/16 p0, 0x22

    invoke-virtual {p2, p0}, Lnw6;->a(C)Lnw6;

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_3

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    const/16 v4, 0x5f

    const/16 v5, 0x5a

    const/16 v6, 0x41

    const/16 v7, 0x7a

    const/16 v8, 0x61

    if-lt v2, v8, :cond_1

    if-le v2, v7, :cond_3

    :cond_1
    if-lt v2, v6, :cond_2

    if-le v2, v5, :cond_3

    :cond_2
    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x1

    move v9, v2

    :goto_0
    if-ge v9, v0, :cond_8

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v8, :cond_4

    if-le v10, v7, :cond_7

    :cond_4
    if-lt v10, v6, :cond_5

    if-le v10, v5, :cond_7

    :cond_5
    const/16 v11, 0x30

    if-lt v10, v11, :cond_6

    const/16 v11, 0x39

    if-le v10, v11, :cond_7

    :cond_6
    const/16 v11, 0x2d

    if-eq v10, v11, :cond_7

    if-eq v10, v4, :cond_7

    if-eq v10, v3, :cond_7

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_7

    return v1

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_8
    return v2
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lorg/jsoup/nodes/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/jsoup/nodes/a;

    iget-object v0, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    iget-object p1, p1, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    invoke-static {p0}, Lorg/jsoup/nodes/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/nodes/a;->d:Lorg/jsoup/nodes/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/b;->l(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/a;->d:Lorg/jsoup/nodes/b;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/jsoup/nodes/a;->d:Lorg/jsoup/nodes/b;

    iget-object v0, v0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aput-object p1, v0, v2

    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lorg/jsoup/nodes/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lja8;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Lnw6;->d(Ljava/lang/StringBuilder;)Lnw6;

    move-result-object v1

    new-instance v2, Lorg/jsoup/nodes/f$a;

    invoke-direct {v2}, Lorg/jsoup/nodes/f$a;-><init>()V

    iget-object v3, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    iget-object v4, v2, Lorg/jsoup/nodes/f$a;->g:Lorg/jsoup/nodes/f$a$a;

    invoke-static {v3, v4}, Lorg/jsoup/nodes/a;->b(Ljava/lang/String;Lorg/jsoup/nodes/f$a$a;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, p0, v1, v2}, Lorg/jsoup/nodes/a;->c(Ljava/lang/String;Ljava/lang/String;Lnw6;Lorg/jsoup/nodes/f$a;)V

    :goto_0
    invoke-static {v0}, Lja8;->k(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
