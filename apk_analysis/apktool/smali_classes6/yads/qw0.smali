.class public final Lyads/qw0;
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

    new-instance p0, Lyads/pw0;

    sget-object v0, Lyads/w36;->c:Lyads/u36;

    const-string v1, "id"

    invoke-static {p1, p2, v1, v0}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    sget-object v1, Lyads/w36;->a:Lyads/o36;

    sget-object v2, Lyads/bt4;->c:Lnl3;

    const-string v3, "multiple"

    invoke-static {p1, p2, v3, v1, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lyads/pw0;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
