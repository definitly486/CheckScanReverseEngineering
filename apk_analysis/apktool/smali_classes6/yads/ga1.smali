.class public final Lyads/ga1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    new-instance p0, Lyads/fa1;

    sget-object v0, Lyads/w36;->c:Lyads/u36;

    const-string v1, "locale"

    invoke-static {p1, p2, v1, v0}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    const-string v0, "raw_text_variable"

    invoke-static {v0, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lyads/fa1;-><init>(Ljava/lang/String;Lyads/as2;)V

    return-object p0
.end method
