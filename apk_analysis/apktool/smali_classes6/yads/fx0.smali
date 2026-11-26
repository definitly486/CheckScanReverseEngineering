.class public final Lyads/fx0;
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

    iput-object p1, p0, Lyads/fx0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 10

    new-instance v0, Lyads/xw0;

    iget-object v1, p0, Lyads/fx0;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->V0:Lcl4;

    const-string v2, "headers"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v1

    sget-object v6, Lyads/ix0;->b:Lyads/m36;

    sget-object v7, Lyads/ww0;->d:Lnl3;

    sget-object v9, Lyads/ix0;->a:Lyads/xr2;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v5, "method"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v9}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v2

    :goto_0
    sget-object v6, Lyads/w36;->e:Lyads/v36;

    sget-object v7, Lyads/bt4;->b:Lnl3;

    const-string v5, "url"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lyads/xw0;-><init>(Ljava/util/List;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
