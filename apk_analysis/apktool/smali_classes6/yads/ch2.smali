.class public final Lyads/ch2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ch2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lyads/ah2;

    sget-object v1, Lyads/w36;->b:Lyads/s36;

    sget-object v2, Lyads/bt4;->e:Lnl3;

    const-string v3, "bitrate"

    invoke-static {p1, p2, v3, v1, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v1

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v3, "mime_type"

    invoke-static {p1, p2, v3, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v2

    iget-object p0, p0, Lyads/ch2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->g9:Lcl4;

    const-string v3, "resolution"

    invoke-static {p1, p2, v3, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zg2;

    sget-object v6, Lyads/w36;->e:Lyads/v36;

    sget-object v7, Lyads/bt4;->b:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v5, "url"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, v1, v2, p0, p1}, Lyads/ah2;-><init>(Lyads/as2;Lyads/as2;Lyads/zg2;Lyads/as2;)V

    return-object v0
.end method
