.class public final Lyads/k71;
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

    iput-object p1, p0, Lyads/k71;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lyads/j71;

    sget-object v1, Lyads/w36;->g:Lyads/t36;

    const-string v2, "data"

    invoke-static {p1, p2, v2, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    const-string v2, "data_element_name"

    invoke-static {p1, p2, v2}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "it"

    :cond_0
    iget-object p0, p0, Lyads/k71;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->g2:Lcl4;

    sget-object v3, Lyads/n71;->a:Lyads/st3;

    const-string v4, "prototypes"

    invoke-static {p1, p2, v4, p0, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyads/j71;-><init>(Lyads/as2;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
