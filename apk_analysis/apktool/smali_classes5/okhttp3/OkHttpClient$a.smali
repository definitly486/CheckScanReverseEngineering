.class public final Lokhttp3/OkHttpClient$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:J

.field public B:Lj87;

.field public a:Lko2;

.field public b:Lnw1;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Lokhttp3/b$c;

.field public f:Z

.field public g:Lpx;

.field public h:Z

.field public i:Z

.field public j:Ll02;

.field public k:Llx0;

.field public l:Lvp2;

.field public m:Ljava/net/ProxySelector;

.field public n:Lpx;

.field public o:Ljavax/net/SocketFactory;

.field public p:Ljavax/net/ssl/SSLSocketFactory;

.field public q:Ljavax/net/ssl/X509TrustManager;

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltw1;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lts6;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljavax/net/ssl/HostnameVerifier;

.field public u:Lu81;

.field public v:Ly14;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lko2;

    invoke-direct {v0}, Lko2;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->a:Lko2;

    new-instance v0, Lnw1;

    invoke-direct {v0}, Lnw1;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->b:Lnw1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->d:Ljava/util/ArrayList;

    sget-object v0, Lokhttp3/b;->NONE:Lokhttp3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ly52;

    invoke-direct {v1, v0}, Ly52;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lokhttp3/OkHttpClient$a;->e:Lokhttp3/b$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$a;->f:Z

    sget-object v1, Lpx;->c:Lpx;

    iput-object v1, p0, Lokhttp3/OkHttpClient$a;->g:Lpx;

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$a;->h:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$a;->i:Z

    sget-object v0, Ll02;->a:Lk02;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->j:Ll02;

    sget-object v0, Lvp2;->b:Lvp2;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->l:Lvp2;

    iput-object v1, p0, Lokhttp3/OkHttpClient$a;->n:Lpx;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->o:Ljavax/net/SocketFactory;

    sget-object v0, Lokhttp3/OkHttpClient;->E:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->r:Ljava/util/List;

    sget-object v0, Lokhttp3/OkHttpClient;->D:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->s:Ljava/util/List;

    sget-object v0, Lev5;->a:Lev5;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->t:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lu81;->c:Lu81;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->u:Lu81;

    const/16 v0, 0x2710

    iput v0, p0, Lokhttp3/OkHttpClient$a;->x:I

    iput v0, p0, Lokhttp3/OkHttpClient$a;->y:I

    iput v0, p0, Lokhttp3/OkHttpClient$a;->z:I

    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lokhttp3/OkHttpClient$a;->A:J

    return-void
.end method
