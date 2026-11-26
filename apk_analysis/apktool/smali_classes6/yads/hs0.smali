.class public final Lyads/hs0;
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
    .locals 0

    check-cast p2, Lyads/is0;

    new-instance p0, Lyads/es0;

    iget-object p1, p2, Lyads/is0;->a:Lyads/zw2;

    const-string p2, "animator_id"

    invoke-static {p1, p3, p2}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lyads/es0;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
