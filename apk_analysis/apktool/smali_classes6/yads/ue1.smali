.class public final Lyads/ue1;
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
    .locals 7

    new-instance p0, Lyads/oe1;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    sget-object v5, Lyads/xe1;->b:Lyads/l66;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v4, Lyads/uq3;->b:Lnl3;

    const-string v2, "key"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    sget-object v5, Lyads/xe1;->c:Lyads/l66;

    sget-object v6, Lyads/xe1;->a:Lyads/zr2;

    const-string v2, "placeholder"

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, p2

    :goto_0
    const-string p2, "regex"

    invoke-static {v0, v1, p2, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, v6, p2}, Lyads/oe1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
