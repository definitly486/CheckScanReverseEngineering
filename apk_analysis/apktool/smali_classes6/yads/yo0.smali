.class public final Lyads/yo0;
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
    .locals 2

    new-instance p0, Lyads/xo0;

    sget-object v0, Lyads/w36;->h:Lyads/q36;

    const-string v1, "value"

    invoke-static {p1, p2, v1, v0}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/xo0;-><init>(Lyads/as2;)V

    return-object p0
.end method
