.class public final Lyads/j01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/m01;


# instance fields
.field public final a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/j01;->a:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    iget-object v0, p0, Lyads/j01;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lyads/j01;->a:Lorg/json/JSONArray;

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_0
    invoke-static {}, Lv93;->b()V

    return-void
.end method

.method public final get(Ljava/lang/String;)Lyads/m01;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lyads/j01;->a:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONArray;

    if-eqz p1, :cond_0

    new-instance p1, Lyads/j01;

    check-cast p0, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lyads/j01;-><init>(Lorg/json/JSONArray;)V

    return-object p1

    :cond_0
    instance-of p1, p0, Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    new-instance p1, Lyads/k01;

    check-cast p0, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lyads/k01;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    sget-object p0, Lyads/l01;->a:Lyads/l01;

    return-object p0
.end method
