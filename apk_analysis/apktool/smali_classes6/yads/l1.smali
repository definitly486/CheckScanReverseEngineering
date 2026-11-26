.class public final Lyads/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/e4;

.field public final c:Lyads/d9;

.field public final d:Lyads/e40;


# direct methods
.method public constructor <init>(Lyads/q84;Lyads/e4;Lyads/d9;)V
    .locals 1

    new-instance v0, Lyads/e40;

    invoke-direct {v0}, Lyads/e40;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/l1;->a:Lyads/q84;

    iput-object p2, p0, Lyads/l1;->b:Lyads/e4;

    iput-object p3, p0, Lyads/l1;->c:Lyads/d9;

    iput-object v0, p0, Lyads/l1;->d:Lyads/e40;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 101
    const-string v0, "on_pause"

    invoke-virtual {p0, v0}, Lyads/l1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lyads/l1;->d:Lyads/e40;

    iget-object v1, p0, Lyads/l1;->c:Lyads/d9;

    iget-object v2, p0, Lyads/l1;->b:Lyads/e4;

    invoke-virtual {v0, v2, v1}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v0

    sget-object v1, Lyads/jx4;->a:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ix4;

    const-string v2, "plugin_type"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v1, "unity"

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    const-string v1, "react-native"

    goto :goto_0

    :cond_2
    const-string v1, "flutter"

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    new-instance v3, Lyads/g75;

    sget-object v4, Lyads/e75;->c:Lyads/e75;

    iget-object v4, v0, Lyads/h75;->a:Ljava/util/Map;

    new-instance v5, Lb36;

    const-string v6, "activity_event"

    invoke-direct {v5, v6, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lb36;

    invoke-direct {p1, v2, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, p1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v4, p1}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object v0, v0, Lyads/h75;->b:Lyads/c;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p1, "activity_action"

    invoke-direct {v3, p1, v1, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/l1;->a:Lyads/q84;

    invoke-virtual {p0, v3}, Lyads/q84;->a(Lyads/g75;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const-string v0, "on_resume"

    invoke-virtual {p0, v0}, Lyads/l1;->a(Ljava/lang/String;)V

    return-void
.end method
