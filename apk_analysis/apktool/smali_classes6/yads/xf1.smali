.class public final Lyads/xf1;
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
    .locals 3

    new-instance p0, Lyads/wf1;

    const-string p1, "name"

    invoke-static {p1, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lyads/fd1;->d:Lnl3;

    sget-object v1, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "type"

    invoke-static {p2, v2, v0, v1}, Lyads/wq3;->a(Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/fd1;

    invoke-direct {p0, p1, p2}, Lyads/wf1;-><init>(Ljava/lang/String;Lyads/fd1;)V

    return-object p0
.end method
