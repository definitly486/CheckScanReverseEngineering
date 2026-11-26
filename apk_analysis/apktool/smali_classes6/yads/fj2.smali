.class public final Lyads/fj2;
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

    iput-object p1, p0, Lyads/fj2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lyads/ej2;

    sget-object v1, Lyads/w36;->a:Lyads/o36;

    sget-object v2, Lyads/bt4;->c:Lnl3;

    const-string v3, "constrained"

    invoke-static {p1, p2, v3, v1, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v1

    iget-object v2, p0, Lyads/fj2;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->Q6:Lcl4;

    const-string v3, "max_size"

    invoke-static {p1, p2, v3, v2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/h12;

    iget-object p0, p0, Lyads/fj2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q6:Lcl4;

    const-string v3, "min_size"

    invoke-static {p1, p2, v3, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h12;

    invoke-direct {v0, v2, p0, v1}, Lyads/ej2;-><init>(Lyads/h12;Lyads/h12;Lyads/as2;)V

    return-object v0
.end method
