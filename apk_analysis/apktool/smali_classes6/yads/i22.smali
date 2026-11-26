.class public final Lyads/i22;
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

    iput-object p1, p0, Lyads/i22;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Lyads/v12;

    sget-object v1, Lyads/w36;->b:Lyads/s36;

    sget-object v2, Lyads/bt4;->e:Lnl3;

    const-string v3, "end"

    invoke-static {p1, p2, v3, v1, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v3

    iget-object v4, p0, Lyads/i22;->a:Lyads/tq3;

    iget-object v4, v4, Lyads/tq3;->X2:Lcl4;

    const-string v5, "margins"

    invoke-static {p1, p2, v5, v4}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/yc1;

    const-string v5, "start"

    invoke-static {p1, p2, v5, v1, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v1

    iget-object v2, p0, Lyads/i22;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->U2:Lcl4;

    const-string v5, "track_active_style"

    invoke-static {p1, p2, v5, v2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/tc1;

    iget-object p0, p0, Lyads/i22;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->U2:Lcl4;

    const-string v5, "track_inactive_style"

    invoke-static {p1, p2, v5, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lyads/tc1;

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lyads/v12;-><init>(Lyads/as2;Lyads/yc1;Lyads/as2;Lyads/tc1;Lyads/tc1;)V

    return-object v0
.end method
