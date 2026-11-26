.class public final Lp00;
.super Lp54;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "`+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lp00;->e:Ljava/util/regex/Pattern;

    const-string v0, "^`+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lp00;->f:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final b()Lzn5;
    .locals 5

    sget-object v0, Lp00;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lp54;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, p0, Lp54;->d:I

    :cond_1
    sget-object v2, Lp00;->e:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2}, Lp54;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lum1;

    invoke-direct {v2}, Lum1;-><init>()V

    iget-object v3, p0, Lp54;->c:Ljava/lang/String;

    iget p0, p0, Lp54;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {v3, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v0, v3, p0}, Ltz;->b(CIILjava/lang/CharSequence;)I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-static {v4, v4, p0}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    iput-object p0, v2, Lum1;->f:Ljava/lang/String;

    return-object v2

    :cond_3
    iput v1, p0, Lp54;->d:I

    invoke-virtual {p0, v0}, Lp54;->f(Ljava/lang/String;)Ldq8;

    move-result-object p0

    return-object p0
.end method

.method public final d()C
    .locals 0

    const/16 p0, 0x60

    return p0
.end method
