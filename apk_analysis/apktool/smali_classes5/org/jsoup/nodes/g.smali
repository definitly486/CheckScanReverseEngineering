.class public final Lorg/jsoup/nodes/g;
.super Lorg/jsoup/nodes/m;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "doctypeInternalSubset"

    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/g;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final G(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lja8;->e(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    const-string p0, "#doctype"

    return-object p0
.end method

.method public final y(Lnw6;Lorg/jsoup/nodes/f$a;)V
    .locals 4

    iget-object p2, p2, Lorg/jsoup/nodes/f$a;->g:Lorg/jsoup/nodes/f$a$a;

    sget-object v0, Lorg/jsoup/nodes/f$a$a;->html:Lorg/jsoup/nodes/f$a$a;

    const-string v1, "systemId"

    const-string v2, "publicId"

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/g;->G(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/g;->G(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "<!doctype"

    invoke-virtual {p1, p2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    goto :goto_0

    :cond_0
    const-string p2, "<!DOCTYPE"

    invoke-virtual {p1, p2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    :goto_0
    const-string p2, "name"

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/g;->G(Ljava/lang/String;)Z

    move-result v0

    const-string v3, " "

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    :cond_1
    const-string p2, "pubSysKey"

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/g;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    :cond_2
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/g;->G(Ljava/lang/String;)Z

    move-result p2

    const/16 v0, 0x22

    const-string v3, " \""

    if-eqz p2, :cond_3

    invoke-virtual {p1, v3}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p2

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p2

    invoke-virtual {p2, v0}, Lnw6;->a(C)Lnw6;

    :cond_3
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/g;->G(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v3}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p2

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p2

    invoke-virtual {p2, v0}, Lnw6;->a(C)Lnw6;

    :cond_4
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Lorg/jsoup/nodes/b;

    move-result-object p2

    sget-object v0, Lorg/jsoup/nodes/g;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/b;->j(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, " ["

    invoke-virtual {p1, p2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p2

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    const/16 p2, 0x5d

    invoke-virtual {p0, p2}, Lnw6;->a(C)Lnw6;

    :cond_5
    const/16 p0, 0x3e

    invoke-virtual {p1, p0}, Lnw6;->a(C)Lnw6;

    return-void
.end method
