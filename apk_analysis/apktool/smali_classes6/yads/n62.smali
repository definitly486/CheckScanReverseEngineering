.class public final Lyads/n62;
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

    iput-object p1, p0, Lyads/n62;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lyads/u52;

    iget-object v1, p0, Lyads/n62;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->v3:Lcl4;

    const-string v2, "height"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/af1;

    if-nez v1, :cond_0

    sget-object v1, Lyads/q62;->a:Lyads/af1;

    :cond_0
    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "image_url"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    iget-object p0, p0, Lyads/n62;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v3:Lcl4;

    const-string p2, "width"

    invoke-static {v2, v3, p2, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/af1;

    if-nez p0, :cond_1

    sget-object p0, Lyads/q62;->b:Lyads/af1;

    :cond_1
    invoke-direct {v0, v1, p1, p0}, Lyads/u52;-><init>(Lyads/af1;Lyads/as2;Lyads/af1;)V

    return-object v0
.end method
