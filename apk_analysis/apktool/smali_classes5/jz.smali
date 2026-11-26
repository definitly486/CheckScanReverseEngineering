.class public final Ljz;
.super Lp54;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^<([a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljz;->e:Ljava/util/regex/Pattern;

    const-string v0, "^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljz;->f:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final b()Lzn5;
    .locals 3

    sget-object v0, Ljz;->e:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lp54;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v2, v2, v0}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lhq4;

    const-string v2, "mailto:"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lhq4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ldq8;

    invoke-direct {v1, p0}, Ldq8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lzn5;->b(Lzn5;)V

    return-object v0

    :cond_0
    sget-object v0, Ljz;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lp54;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v2, v2, p0}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lhq4;

    invoke-direct {v0, p0, v1}, Lhq4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ldq8;

    invoke-direct {v1, p0}, Ldq8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lzn5;->b(Lzn5;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final d()C
    .locals 0

    const/16 p0, 0x3c

    return p0
.end method
