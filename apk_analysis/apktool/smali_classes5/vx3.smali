.class public final Lvx3;
.super Lp54;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lvx3;->e:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final b()Lzn5;
    .locals 1

    sget-object v0, Lvx3;->e:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lp54;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Lux3;

    invoke-direct {p0}, Lzn5;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()C
    .locals 0

    const/16 p0, 0x3c

    return p0
.end method
