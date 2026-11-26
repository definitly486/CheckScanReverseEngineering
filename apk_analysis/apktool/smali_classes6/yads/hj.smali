.class public final Lyads/hj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lyads/ij;

    new-instance p0, Lyads/ej;

    iget-object p2, p2, Lyads/ij;->a:Lyads/zw2;

    sget-object v0, Lyads/w36;->g:Lyads/t36;

    const-string v1, "value"

    invoke-static {p1, p2, p3, v1, v0}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/ej;-><init>(Lyads/as2;)V

    return-object p0
.end method
