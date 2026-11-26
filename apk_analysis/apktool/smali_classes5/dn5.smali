.class public final Ldn5;
.super Lp54;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " *$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldn5;->e:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final b()Lzn5;
    .locals 4

    iget v0, p0, Lp54;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp54;->d:I

    iget-object p0, p0, Lp54;->b:Lzn5;

    iget-object p0, p0, Lzn5;->c:Lzn5;

    instance-of v0, p0, Ldq8;

    if-eqz v0, :cond_3

    check-cast p0, Ldq8;

    iget-object v0, p0, Ldq8;->f:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldq8;->f:Ljava/lang/String;

    sget-object v1, Ldn5;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-lez v2, :cond_1

    invoke-static {v2, v3, v0}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldq8;->f:Ljava/lang/String;

    :cond_1
    const/4 p0, 0x2

    if-lt v2, p0, :cond_2

    new-instance p0, Lpu3;

    invoke-direct {p0}, Lpu3;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lo48;

    invoke-direct {p0}, Lo48;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lo48;

    invoke-direct {p0}, Lo48;-><init>()V

    return-object p0
.end method

.method public final d()C
    .locals 0

    const/16 p0, 0xa

    return p0
.end method
