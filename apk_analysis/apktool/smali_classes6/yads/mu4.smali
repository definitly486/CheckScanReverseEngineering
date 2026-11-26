.class public abstract Lyads/mu4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Lyads/sr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/tr;

    const-string v1, "\\d"

    const/16 v2, 0x5f

    const/16 v3, 0x30

    invoke-direct {v0, v3, v1, v2}, Lyads/tr;-><init>(CLjava/lang/String;C)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/mu4;->a:Ljava/util/List;

    new-instance v1, Lyads/sr;

    const-string v2, ""

    invoke-static {v2}, Lyads/mu4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lyads/sr;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    sput-object v1, Lyads/mu4;->b:Lyads/sr;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "000000000000000"

    return-object p0

    :cond_0
    sget-object v0, Lyads/nu4;->a:Lorg/json/JSONObject;

    const/4 v1, 0x0

    :goto_0
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "*"

    if-lt v1, v3, :cond_1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v4, v1

    :cond_2
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lorg/json/JSONObject;

    move v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "00"

    invoke-static {p0, v0}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a()Lyads/sr;
    .locals 1

    .line 78
    sget-object v0, Lyads/mu4;->b:Lyads/sr;

    return-object v0
.end method
