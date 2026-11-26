.class public final Lyads/gb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ju4;


# instance fields
.field public final a:Lyads/f75;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyads/f75;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gb;->a:Lyads/f75;

    iput-object p2, p0, Lyads/gb;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/util/Map;
    .locals 4

    sget-object v0, Lmx2;->b:Lmx2;

    invoke-static {v0}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    iget-object v1, p0, Lyads/gb;->b:Ljava/lang/String;

    const-string v2, "undefined"

    const-string v3, "adapter"

    if-nez v1, :cond_2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p0, p0, Lyads/gb;->a:Lyads/f75;

    iget-object p0, p0, Lyads/f75;->b:Ljava/lang/String;

    const-string v1, "status"

    if-nez p0, :cond_3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string p0, "duration"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
