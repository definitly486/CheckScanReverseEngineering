.class public final Lyads/oc4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/q84;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;Lyads/bf5;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p3, p3, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p3}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/oc4;->a:Lyads/d9;

    iput-object p1, p0, Lyads/oc4;->b:Lyads/q84;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/oc4;->c:Z

    iput-boolean p1, p0, Lyads/oc4;->d:Z

    iput-boolean p1, p0, Lyads/oc4;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lyads/g75;

    sget-object v1, Lyads/e75;->c:Lyads/e75;

    new-instance v1, Lb36;

    const-string v2, "event_type"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->d([Lb36;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lyads/oc4;->a:Lyads/d9;

    iget-object v1, v1, Lyads/d9;->i:Lyads/c;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p1, "multibanner_event"

    invoke-direct {v0, p1, v2, v1}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/oc4;->b:Lyads/q84;

    invoke-virtual {p0, v0}, Lyads/q84;->a(Lyads/g75;)V

    return-void
.end method
