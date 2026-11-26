.class public final Le72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# static fields
.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lta6;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "accept-encoding"

    const-string v1, "content-encoding"

    const-string v2, "content-type"

    const-string v3, "user-agent"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le72;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lta6;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le72;->a:Lta6;

    iget-object v0, p1, Lnb6;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lfz3$a;

    invoke-direct {v2}, Lfz3$a;-><init>()V

    invoke-virtual {v2, v1, v0}, Lfz3$a;->c(Lfz3;Ljava/lang/String;)V

    invoke-virtual {v2}, Lfz3$a;->a()Lfz3;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lfz3;->d:Ljava/lang/String;

    :cond_0
    iput-object v1, p0, Le72;->b:Ljava/lang/String;

    iget-object p1, p1, Lnb6;->s:Lmx2;

    invoke-static {p1}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le72;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 8

    iget-object v0, p1, Lez6;->e:Lb37;

    iget-object v1, p0, Le72;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lb37;->a:Lfz3;

    iget-object v2, v2, Lfz3;->d:Ljava/lang/String;

    iget-object v3, p0, Le72;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lb37;->a()Lb37$a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le72;->d:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lb37;->c:Ljv3;

    invoke-virtual {v5, v4}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :try_start_0
    invoke-virtual {v2, v4, v3}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v5, p0, Le72;->a:Lta6;

    iget-object v5, v5, Lnb6;->v:Lic6;

    const-string v6, "Dropping invalid request header \'"

    const-string v7, "\': "

    invoke-static {v6, v4, v7}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lic6;->a(Ljava/lang/String;)V

    :goto_1
    sget-object v3, Lj59;->a:Lj59;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lb37$a;->a()Lb37;

    move-result-object p0

    invoke-virtual {p1, p0}, Lez6;->b(Lb37;)Lz47;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Lez6;->b(Lb37;)Lz47;

    move-result-object p0

    return-object p0
.end method
