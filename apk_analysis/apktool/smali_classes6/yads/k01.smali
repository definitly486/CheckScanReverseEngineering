.class public final Lyads/k01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/m01;


# instance fields
.field public final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/k01;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lyads/k01;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final get(Ljava/lang/String;)Lyads/m01;
    .locals 0

    iget-object p0, p0, Lyads/k01;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

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
