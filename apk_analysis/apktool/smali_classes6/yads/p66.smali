.class public final Lyads/p66;
.super Lyads/u66;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lyads/u66;-><init>()V

    iput-object p1, p0, Lyads/p66;->b:Ljava/lang/String;

    iput-object p2, p0, Lyads/p66;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lyads/p66;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1}, Lyads/p66;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lyads/p66;->c:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lyads/p66;->c:Lorg/json/JSONObject;

    invoke-virtual {p0, p0}, Lyads/u66;->a(Lyads/u66;)V

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lyads/p66;->c:Lorg/json/JSONObject;

    return-object p0
.end method
