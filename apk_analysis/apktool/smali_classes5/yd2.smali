.class public final Lyd2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyd2$a;
    }
.end annotation


# static fields
.field public static final c:Lwb4;

.field public static final d:Lyd2;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lyd2$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lwb4;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lwb4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyd2;->c:Lwb4;

    new-instance v0, Lyd2;

    invoke-direct {v0}, Lyd2;-><init>()V

    new-instance v1, Lbn1$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lyd2;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lyd2;-><init>(Lbn1;ZLyd2;)V

    new-instance v0, Lyd2;

    sget-object v1, Lbn1$b;->a:Lbn1$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lyd2;-><init>(Lbn1;ZLyd2;)V

    sput-object v0, Lyd2;->d:Lyd2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lyd2;->a:Ljava/util/Map;

    .line 182
    new-array v0, v1, [B

    iput-object v0, p0, Lyd2;->b:[B

    return-void
.end method

.method public constructor <init>(Lbn1;ZLyd2;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lxd2;->getMessageEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Comma is currently not allowed in message encoding"

    invoke-static {v1, v2}, Lo8;->f(ZLjava/lang/Object;)V

    iget-object v1, p3, Lyd2;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p3, Lyd2;->a:Ljava/util/Map;

    invoke-interface {p1}, Lxd2;->getMessageEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object p3, p3, Lyd2;->a:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyd2$a;

    iget-object v3, v1, Lyd2$a;->a:Lbn1;

    invoke-interface {v3}, Lxd2;->getMessageEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lyd2$a;

    iget-object v5, v1, Lyd2$a;->a:Lbn1;

    iget-boolean v1, v1, Lyd2$a;->b:Z

    invoke-direct {v4, v5, v1}, Lyd2$a;-><init>(Lbn1;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p3, Lyd2$a;

    invoke-direct {p3, p1, p2}, Lyd2$a;-><init>(Lbn1;Z)V

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lyd2;->a:Ljava/util/Map;

    new-instance p2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyd2$a;

    iget-boolean v0, v0, Lyd2$a;->b:Z

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    sget-object p2, Lyd2;->c:Lwb4;

    invoke-virtual {p2, p1}, Lwb4;->b(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "US-ASCII"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lyd2;->b:[B

    return-void
.end method
