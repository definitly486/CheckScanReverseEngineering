.class public final Lyads/cm1;
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

    new-instance p0, Lyads/bm1;

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    sget-object v4, Lyads/bt4;->c:Lnl3;

    sget-object v6, Lyads/fm1;->a:Lyads/xr2;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "allow_empty"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    sget-object p1, Lyads/w36;->c:Lyads/u36;

    const-string p2, "label_id"

    invoke-static {v0, v1, p2, p1}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    const-string p2, "variable"

    invoke-static {v0, v1, p2}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v6, p1, p2}, Lyads/bm1;-><init>(Lyads/as2;Lyads/as2;Ljava/lang/String;)V

    return-object p0
.end method
