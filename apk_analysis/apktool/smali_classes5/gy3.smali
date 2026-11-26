.class public abstract Lgy3;
.super Lt$b;
.source "SourceFile"


# static fields
.field public static final v:Lla5$f;


# instance fields
.field public r:Lh88;

.field public s:Lla5;

.field public t:Ljava/nio/charset/Charset;

.field public u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgy3$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, ":status"

    invoke-static {v1, v0}, Ln94;->a(Ljava/lang/String;Ln94$a;)Lla5$f;

    move-result-object v0

    sput-object v0, Lgy3;->v:Lla5$f;

    return-void
.end method

.method public static k(Lla5;)Ljava/nio/charset/Charset;
    .locals 2

    sget-object v0, Lvs3;->i:Lla5$b;

    invoke-virtual {p0, v0}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "charset="

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    :try_start_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static l(Lla5;)Lh88;
    .locals 4

    sget-object v0, Lgy3;->v:Lla5$f;

    invoke-virtual {p0, v0}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object p0, Lh88;->l:Lh88;

    const-string v0, "Missing HTTP status code"

    invoke-virtual {p0, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lvs3;->i:Lla5$b;

    invoke-virtual {p0, v1}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v2, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "application/grpc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_7

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lvs3;->f(I)Lh88;

    move-result-object v0

    if-nez p0, :cond_6

    const-string p0, "missing content-type in response headers"

    invoke-virtual {v0, p0}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v1, "invalid content-type: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
