.class public final Lyads/lw0;
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

    iput-object p1, p0, Lyads/lw0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lyads/kw0;

    iget-object p0, p0, Lyads/lw0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X8:Lcl4;

    const-string v1, "value"

    invoke-static {p1, p2, v1, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "variable_name"

    invoke-static {p1, p2, v2, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lyads/kw0;-><init>(Lyads/oe2;Lyads/as2;)V

    return-object v0
.end method
