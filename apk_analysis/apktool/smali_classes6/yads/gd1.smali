.class public final Lyads/gd1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gd1;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/gd1;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Lyads/gd1;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/gd1;->a:Ljava/lang/String;

    iget-object v2, p1, Lyads/gd1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lyads/gd1;->b:Lorg/json/JSONObject;

    iget-object p1, p1, Lyads/gd1;->b:Lorg/json/JSONObject;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
