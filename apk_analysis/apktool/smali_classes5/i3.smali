.class public final Li3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg17;

.field public final b:Lg17;

.field public final c:Lg17;

.field public final d:Ljava/lang/String;

.field public final e:Lg17;

.field public final f:Lg17;

.field public final g:Lg17;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg17;

    const-string v1, "([_A-Za-z0-9-+]+)(\\.[_A-Za-z0-9-+]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li3;->a:Lg17;

    new-instance v0, Lg17;

    const-string v1, "^\\+\\d{11}$"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li3;->b:Lg17;

    const-string v0, "^\\d{10}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "^\\d{6}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg17;

    const-string v1, "(\\d)(\\d{3})(\\d{3})(\\d{2})(\\d{2})"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li3;->c:Lg17;

    const-string v0, "$1 $2 $3 $4 $5"

    iput-object v0, p0, Li3;->d:Ljava/lang/String;

    new-instance v0, Lg17;

    const-string v1, "^[\u0410-\u042f\u0401][\u0430-\u044f\u0451]+(\\s[\u0410-\u042f\u0401\u0430-\u044f\u0451]+|-[\u0410-\u042f\u0401\u0430-\u044f\u0451]+)*$"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li3;->e:Lg17;

    const-string v0, "[\u0430-\u044f\u0451\u0410-\u042f\u0401]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "[\u0430-\u044f\u0451\u0410-\u042f\u0401]+(-[\u0430-\u044f\u0451\u0410-\u042f\u0401]+)?[ ]+[\u0430-\u044f\u0451\u0410-\u042f\u0401]+(-[\u0430-\u044f\u0451\u0410-\u042f\u0401]+)?[ ]+[\u0430-\u044f\u0451\u0410-\u042f\u0401]+(-[\u0430-\u044f\u0451\u0410-\u042f\u0401]+)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "[a-zA-Z]+(-[a-zA-Z]+)?[ ]+[a-zA-Z]+(-[a-zA-Z]+)?[ ]+[a-zA-Z]+(-[a-zA-Z]+)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "(^[A-Z]{1}[a-z]{1,14} [A-Z]{1}[a-z]{1,14} [A-Z]{1}[a-z]{1,14}( )?$)|(^[\u0410-\u042f]{1}[\u0430-\u044f]{1,14} [\u0410-\u042f]{1}[\u0430-\u044f]{1,14} [\u0410-\u042f]{1}[\u0430-\u044f]{1,14}$)|(^[a-z\u0430-\u044f]{1}[a-z]{1,14} [a-z\u0430-\u044f]{1}[a-z]{1,14} [a-z\u0430-\u044f]{1}[a-z]{1,14}( )?$)|(^[\u0430-\u044f]{2,15} [\u0430-\u044f]{2,15} [\u0430-\u044f]{2,15}$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg17;

    const-string v1, "\\D+"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li3;->f:Lg17;

    new-instance v0, Lg17;

    const-string v1, "^79+\\d{9}$"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li3;->g:Lg17;

    const-string p0, "[A-Z0-9]{8,24}$"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "[-.()\\s]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "8"

    invoke-static {p0, v1, v0}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "+7"

    invoke-static {p0, v1, v0}, Lra8;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "[-.()\\s]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v5, v2, 0x1

    if-ne v2, v4, :cond_0

    const/16 v4, 0x37

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/16 v2, 0x39

    if-eq v3, v2, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    :cond_2
    return v4
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Li3;->a:Lg17;

    invoke-virtual {p0, p1}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Li3;->b:Lg17;

    invoke-static {p1}, Li3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
