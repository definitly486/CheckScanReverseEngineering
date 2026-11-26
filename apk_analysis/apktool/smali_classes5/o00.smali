.class public final Lo00;
.super Lp54;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lz05;->n:Ljava/util/regex/Pattern;

    sput-object v0, Lo00;->e:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final b()Lzn5;
    .locals 4

    iget v0, p0, Lp54;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp54;->d:I

    invoke-virtual {p0}, Lp54;->c()C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    new-instance v0, Lpu3;

    invoke-direct {v0}, Lpu3;-><init>()V

    iget v1, p0, Lp54;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lp54;->d:I

    return-object v0

    :cond_0
    iget v0, p0, Lp54;->d:I

    iget-object v1, p0, Lp54;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lp54;->c:Ljava/lang/String;

    iget v1, p0, Lp54;->d:I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo00;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp54;->c:Ljava/lang/String;

    iget v1, p0, Lp54;->d:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lp54;->a:Lz05;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ldq8;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ldq8;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lp54;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp54;->d:I

    return-object v3

    :cond_1
    const-string v0, "\\"

    invoke-virtual {p0, v0}, Lp54;->f(Ljava/lang/String;)Ldq8;

    move-result-object p0

    return-object p0
.end method

.method public final d()C
    .locals 0

    const/16 p0, 0x5c

    return p0
.end method
