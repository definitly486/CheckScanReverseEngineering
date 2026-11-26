.class public final Lyads/nu1;
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

    check-cast p2, Lyads/ou1;

    new-instance p0, Lyads/ku1;

    iget-object p1, p2, Lyads/ou1;->a:Lyads/zw2;

    const-string p2, "raw_text_variable"

    invoke-static {p1, p3, p2}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lyads/ku1;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
