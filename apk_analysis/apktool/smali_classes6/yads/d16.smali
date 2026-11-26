.class public final Lyads/d16;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/q84;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p3, p3, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p3}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/d16;->a:Lyads/e4;

    iput-object p1, p0, Lyads/d16;->b:Lyads/q84;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lyads/fe5;)V
    .locals 3

    sget-object v0, Lyads/e75;->c:Lyads/e75;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lyads/fe5;->A0:Z

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lyads/d16;->a:Lyads/e4;

    iget-object v0, p2, Lyads/e4;->a:Lyads/n70;

    iget-object v0, v0, Lyads/n70;->b:Ljava/lang/String;

    new-instance v1, Lb36;

    const-string v2, "ad_type"

    invoke-direct {v1, v2, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p2, Lyads/e4;->c:Lyads/ma;

    iget-object p2, p2, Lyads/ma;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    new-instance v0, Lb36;

    const-string v2, "ad_unit_id"

    invoke-direct {v0, v2, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v0}, [Lb36;

    move-result-object p2

    invoke-static {p2}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p2, p1}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    new-instance p2, Lyads/g75;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p1, "tracking_event"

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/d16;->b:Lyads/q84;

    invoke-virtual {p0, p2}, Lyads/q84;->a(Lyads/g75;)V

    :cond_1
    return-void
.end method
