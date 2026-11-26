.class public final Ld03;
.super Lp54;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ld03;->e:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final b()Lzn5;
    .locals 1

    sget-object v0, Ld03;->e:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lp54;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkx3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp54;->f(Ljava/lang/String;)Ldq8;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()C
    .locals 0

    const/16 p0, 0x26

    return p0
.end method
