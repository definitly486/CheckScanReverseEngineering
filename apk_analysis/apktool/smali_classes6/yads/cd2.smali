.class public final Lyads/cd2;
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

    iput-object p1, p0, Lyads/cd2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lyads/bd2;

    iget-object v1, p0, Lyads/cd2;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->O5:Lcl4;

    const-string v2, "pivot_x"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ru1;

    if-nez v1, :cond_0

    sget-object v1, Lyads/fd2;->a:Lyads/qu1;

    :cond_0
    iget-object p0, p0, Lyads/cd2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->O5:Lcl4;

    const-string v2, "pivot_y"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ru1;

    if-nez p0, :cond_1

    sget-object p0, Lyads/fd2;->b:Lyads/qu1;

    :cond_1
    sget-object v2, Lyads/w36;->d:Lyads/r36;

    sget-object v3, Lyads/bt4;->d:Lnl3;

    const-string v4, "rotation"

    invoke-static {p1, p2, v4, v2, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lyads/bd2;-><init>(Lyads/ru1;Lyads/ru1;Lyads/as2;)V

    return-object v0
.end method
