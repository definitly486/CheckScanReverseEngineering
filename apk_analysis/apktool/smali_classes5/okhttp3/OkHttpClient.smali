.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$a;
    }
.end annotation


# static fields
.field public static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lts6;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltw1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:J

.field public final C:Lj87;

.field public final b:Lko2;

.field public final c:Lnw1;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf94;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf94;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lokhttp3/b$c;

.field public final g:Z

.field public final h:Lpx;

.field public final i:Z

.field public final j:Z

.field public final k:Ll02;

.field public final l:Llx0;

.field public final m:Lvp2;

.field public final n:Ljava/net/ProxySelector;

.field public final o:Lpx;

.field public final p:Ljavax/net/SocketFactory;

.field public final q:Ljavax/net/ssl/SSLSocketFactory;

.field public final r:Ljavax/net/ssl/X509TrustManager;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltw1;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lts6;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljavax/net/ssl/HostnameVerifier;

.field public final v:Lu81;

.field public final w:Ly14;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lts6;->HTTP_2:Lts6;

    sget-object v1, Lts6;->HTTP_1_1:Lts6;

    filled-new-array {v0, v1}, [Lts6;

    move-result-object v0

    invoke-static {v0}, Lgb9;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->D:Ljava/util/List;

    sget-object v0, Ltw1;->e:Ltw1;

    sget-object v1, Ltw1;->f:Ltw1;

    filled-new-array {v0, v1}, [Ltw1;

    move-result-object v0

    invoke-static {v0}, Lgb9;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->E:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 403
    new-instance v0, Lokhttp3/OkHttpClient$a;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$a;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient$a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->a:Lko2;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->b:Lko2;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->b:Lnw1;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->c:Lnw1;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lgb9;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lgb9;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->e:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->e:Lokhttp3/b$c;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->f:Lokhttp3/b$c;

    iget-boolean v0, p1, Lokhttp3/OkHttpClient$a;->f:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->g:Z

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->g:Lpx;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->h:Lpx;

    iget-boolean v0, p1, Lokhttp3/OkHttpClient$a;->h:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->i:Z

    iget-boolean v0, p1, Lokhttp3/OkHttpClient$a;->i:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->j:Z

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->j:Ll02;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->k:Ll02;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->k:Llx0;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->l:Llx0;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->l:Lvp2;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->m:Lvp2;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->m:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lyp5;->a:Lyp5;

    :cond_1
    iput-object v0, p0, Lokhttp3/OkHttpClient;->n:Ljava/net/ProxySelector;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->n:Lpx;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->o:Lpx;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->o:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->r:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->s:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/OkHttpClient$a;->s:Ljava/util/List;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->t:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/OkHttpClient$a;->t:Ljavax/net/ssl/HostnameVerifier;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/HostnameVerifier;

    iget v1, p1, Lokhttp3/OkHttpClient$a;->w:I

    iput v1, p0, Lokhttp3/OkHttpClient;->x:I

    iget v1, p1, Lokhttp3/OkHttpClient$a;->x:I

    iput v1, p0, Lokhttp3/OkHttpClient;->y:I

    iget v1, p1, Lokhttp3/OkHttpClient$a;->y:I

    iput v1, p0, Lokhttp3/OkHttpClient;->z:I

    iget v1, p1, Lokhttp3/OkHttpClient$a;->z:I

    iput v1, p0, Lokhttp3/OkHttpClient;->A:I

    iget-wide v1, p1, Lokhttp3/OkHttpClient$a;->A:J

    iput-wide v1, p0, Lokhttp3/OkHttpClient;->B:J

    iget-object v1, p1, Lokhttp3/OkHttpClient$a;->B:Lj87;

    if-nez v1, :cond_2

    new-instance v1, Lj87;

    invoke-direct {v1}, Lj87;-><init>()V

    :cond_2
    iput-object v1, p0, Lokhttp3/OkHttpClient;->C:Lj87;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw1;

    iget-boolean v1, v1, Ltw1;->a:Z

    if-eqz v1, :cond_4

    iget-object v0, p1, Lokhttp3/OkHttpClient$a;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_6

    iput-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lokhttp3/OkHttpClient$a;->v:Ly14;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->w:Ly14;

    iget-object v3, p1, Lokhttp3/OkHttpClient$a;->q:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    iget-object p1, p1, Lokhttp3/OkHttpClient$a;->u:Lu81;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lu81;->b:Ly14;

    invoke-static {v4, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    new-instance v4, Lu81;

    iget-object p1, p1, Lu81;->a:Ljava/util/Set;

    invoke-direct {v4, p1, v1}, Lu81;-><init>(Ljava/util/Set;Ly14;)V

    move-object p1, v4

    :goto_0
    iput-object p1, p0, Lokhttp3/OkHttpClient;->v:Lu81;

    goto :goto_3

    :cond_6
    sget-object v0, Lz86;->a:Lz86;

    sget-object v0, Lz86;->a:Lz86;

    invoke-virtual {v0}, Lz86;->n()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    sget-object v0, Lz86;->a:Lz86;

    invoke-virtual {v0, v3}, Lz86;->m(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v1, Lz86;->a:Lz86;

    invoke-virtual {v1, v3}, Lz86;->b(Ljavax/net/ssl/X509TrustManager;)Ly14;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->w:Ly14;

    iget-object p1, p1, Lokhttp3/OkHttpClient$a;->u:Lu81;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lu81;->b:Ly14;

    invoke-static {v4, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    new-instance v4, Lu81;

    iget-object p1, p1, Lu81;->a:Ljava/util/Set;

    invoke-direct {v4, p1, v1}, Lu81;-><init>(Ljava/util/Set;Ly14;)V

    move-object p1, v4

    :goto_1
    iput-object p1, p0, Lokhttp3/OkHttpClient;->v:Lu81;

    goto :goto_3

    :cond_8
    :goto_2
    iput-object v2, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v2, p0, Lokhttp3/OkHttpClient;->w:Ly14;

    iput-object v2, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lu81;->c:Lu81;

    iput-object p1, p0, Lokhttp3/OkHttpClient;->v:Lu81;

    move-object v0, v2

    move-object v1, v0

    move-object v3, v1

    :goto_3
    iget-object p1, p0, Lokhttp3/OkHttpClient;->e:Ljava/util/List;

    iget-object v4, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object p1, p0, Lokhttp3/OkHttpClient;->s:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v4, p1, Ljava/util/Collection;

    if-eqz v4, :cond_9

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltw1;

    iget-boolean v4, v4, Ltw1;->a:Z

    if-eqz v4, :cond_a

    if-eqz v0, :cond_d

    if-eqz v1, :cond_c

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    const-string p0, "x509TrustManager == null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    throw v2

    :cond_c
    const-string p0, "certificateChainCleaner == null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    throw v2

    :cond_d
    const-string p0, "sslSocketFactory == null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    throw v2

    :cond_e
    :goto_4
    const-string p1, "Check failed."

    if-nez v0, :cond_12

    if-nez v1, :cond_11

    if-nez v3, :cond_10

    iget-object p0, p0, Lokhttp3/OkHttpClient;->v:Lu81;

    sget-object v0, Lu81;->c:Lu81;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    :goto_5
    return-void

    :cond_f
    invoke-static {p1}, Lah;->f(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-static {p1}, Lah;->f(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static {p1}, Lah;->f(Ljava/lang/String;)V

    throw v2

    :cond_12
    invoke-static {p1}, Lah;->f(Ljava/lang/String;)V

    throw v2

    :cond_13
    const-string p0, "Null network interceptor: "

    invoke-static {p1, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_14
    const-string p0, "Null interceptor: "

    invoke-static {v4, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final b(Lb37;)Ljy6;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljy6;

    invoke-direct {v0, p0, p1}, Ljy6;-><init>(Lokhttp3/OkHttpClient;Lb37;)V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lokhttp3/OkHttpClient$a;
    .locals 3

    new-instance v0, Lokhttp3/OkHttpClient$a;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$a;-><init>()V

    iget-object v1, p0, Lokhttp3/OkHttpClient;->b:Lko2;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->a:Lko2;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->c:Lnw1;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->b:Lnw1;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v0, Lokhttp3/OkHttpClient$a;->c:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v1, p0, Lokhttp3/OkHttpClient;->e:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v0, Lokhttp3/OkHttpClient$a;->d:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v1, p0, Lokhttp3/OkHttpClient;->f:Lokhttp3/b$c;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->e:Lokhttp3/b$c;

    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->g:Z

    iput-boolean v1, v0, Lokhttp3/OkHttpClient$a;->f:Z

    iget-object v1, p0, Lokhttp3/OkHttpClient;->h:Lpx;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->g:Lpx;

    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->i:Z

    iput-boolean v1, v0, Lokhttp3/OkHttpClient$a;->h:Z

    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->j:Z

    iput-boolean v1, v0, Lokhttp3/OkHttpClient$a;->i:Z

    iget-object v1, p0, Lokhttp3/OkHttpClient;->k:Ll02;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->j:Ll02;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->l:Llx0;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->k:Llx0;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->m:Lvp2;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->l:Lvp2;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->n:Ljava/net/ProxySelector;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->m:Ljava/net/ProxySelector;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->o:Lpx;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->n:Lpx;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/SocketFactory;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->o:Ljavax/net/SocketFactory;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->p:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->q:Ljavax/net/ssl/X509TrustManager;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->s:Ljava/util/List;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->r:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->t:Ljava/util/List;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->s:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/HostnameVerifier;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->t:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->v:Lu81;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->u:Lu81;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->w:Ly14;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->v:Ly14;

    iget v1, p0, Lokhttp3/OkHttpClient;->x:I

    iput v1, v0, Lokhttp3/OkHttpClient$a;->w:I

    iget v1, p0, Lokhttp3/OkHttpClient;->y:I

    iput v1, v0, Lokhttp3/OkHttpClient$a;->x:I

    iget v1, p0, Lokhttp3/OkHttpClient;->z:I

    iput v1, v0, Lokhttp3/OkHttpClient$a;->y:I

    iget v1, p0, Lokhttp3/OkHttpClient;->A:I

    iput v1, v0, Lokhttp3/OkHttpClient$a;->z:I

    iget-wide v1, p0, Lokhttp3/OkHttpClient;->B:J

    iput-wide v1, v0, Lokhttp3/OkHttpClient$a;->A:J

    iget-object p0, p0, Lokhttp3/OkHttpClient;->C:Lj87;

    iput-object p0, v0, Lokhttp3/OkHttpClient$a;->B:Lj87;

    return-object v0
.end method
