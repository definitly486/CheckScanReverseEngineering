.class public final Lyads/h16;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ea;

.field public final b:Lyads/e4;

.field public final c:Lyads/d9;

.field public final d:Lyads/b00;

.field public final e:Lyads/e40;


# direct methods
.method public constructor <init>(Lyads/ea;Lyads/e4;Lyads/d9;)V
    .locals 2

    new-instance v0, Lyads/b00;

    invoke-direct {v0}, Lyads/b00;-><init>()V

    new-instance v1, Lyads/e40;

    invoke-direct {v1}, Lyads/e40;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/h16;->a:Lyads/ea;

    iput-object p2, p0, Lyads/h16;->b:Lyads/e4;

    iput-object p3, p0, Lyads/h16;->c:Lyads/d9;

    iput-object v0, p0, Lyads/h16;->d:Lyads/b00;

    iput-object v1, p0, Lyads/h16;->e:Lyads/e40;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lyads/zz;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lyads/h16;->e:Lyads/e40;

    iget-object v1, p0, Lyads/h16;->c:Lyads/d9;

    iget-object v2, p0, Lyads/h16;->b:Lyads/e4;

    invoke-virtual {v0, v2, v1}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v0

    iget-object v1, p0, Lyads/h16;->d:Lyads/b00;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyads/a00;->a(Lyads/zz;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "{CLICK_DEST}"

    invoke-static {v1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v1, p0, Lyads/h16;->a:Lyads/ea;

    sget-object v2, Lyads/i16;->c:Lyads/i16;

    invoke-virtual {v1, p3, v2, p2, v0}, Lyads/ea;->a(Ljava/lang/String;Lyads/i16;Ljava/util/Map;Lyads/h75;)V

    goto :goto_0

    :cond_0
    return-void
.end method
