.class public final Lyads/t82;
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
    .locals 4

    new-instance p0, Lyads/u72;

    sget-object v0, Lyads/w36;->c:Lyads/u36;

    const-string v1, "description"

    invoke-static {p1, p2, v1, v0}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    sget-object v1, Lyads/t72;->d:Lnl3;

    sget-object v2, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "type"

    invoke-static {p1, p2, v3, v1, v2}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/t72;

    if-nez p1, :cond_0

    sget-object p1, Lyads/w82;->a:Lyads/t72;

    :cond_0
    invoke-direct {p0, v0, p1}, Lyads/u72;-><init>(Lyads/as2;Lyads/t72;)V

    return-object p0
.end method
