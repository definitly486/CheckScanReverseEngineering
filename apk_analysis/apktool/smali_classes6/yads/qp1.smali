.class public final Lyads/qp1;
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

    iput-object p1, p0, Lyads/qp1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lyads/pp1;

    iget-object v1, p0, Lyads/qp1;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->Q6:Lcl4;

    const-string v2, "max_size"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/h12;

    iget-object p0, p0, Lyads/qp1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q6:Lcl4;

    const-string v2, "min_size"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h12;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/tp1;->a:Lyads/l66;

    const/4 v8, 0x0

    const-string v4, "weight"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lyads/pp1;-><init>(Lyads/h12;Lyads/h12;Lyads/as2;)V

    return-object v0
.end method
