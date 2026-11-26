.class public final Lio/grpc/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/l$a$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lzs6;

.field public final c:Lch8;

.field public final d:Lgd7;

.field public final e:Lez4$o;

.field public final f:Lo91;

.field public final g:Lez4$h;

.field public final h:Lua5;

.field public final i:Lio/grpc/n;

.field public final j:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/l$a$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/grpc/l$a$b;->a:Ljava/lang/Integer;

    const-string v1, "defaultPort not set"

    invoke-static {v0, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/grpc/l$a;->a:I

    iget-object v0, p1, Lio/grpc/l$a$b;->b:Lzs6;

    const-string v1, "proxyDetector not set"

    invoke-static {v0, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/l$a;->b:Lzs6;

    iget-object v0, p1, Lio/grpc/l$a$b;->c:Lch8;

    const-string v1, "syncContext not set"

    invoke-static {v0, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/l$a;->c:Lch8;

    iget-object v0, p1, Lio/grpc/l$a$b;->d:Lgd7;

    const-string v1, "serviceConfigParser not set"

    invoke-static {v0, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/l$a;->d:Lgd7;

    iget-object v0, p1, Lio/grpc/l$a$b;->e:Lez4$o;

    iput-object v0, p0, Lio/grpc/l$a;->e:Lez4$o;

    iget-object v0, p1, Lio/grpc/l$a$b;->f:Lo91;

    iput-object v0, p0, Lio/grpc/l$a;->f:Lo91;

    iget-object v0, p1, Lio/grpc/l$a$b;->g:Lez4$h;

    iput-object v0, p0, Lio/grpc/l$a;->g:Lez4$h;

    iget-object v0, p1, Lio/grpc/l$a$b;->h:Lva5;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/l$a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object v0, p0, Lio/grpc/l$a;->h:Lua5;

    iget-object p1, p1, Lio/grpc/l$a$b;->i:Lio/grpc/n;

    iput-object p1, p0, Lio/grpc/l$a;->i:Lio/grpc/n;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/grpc/l$a;->j:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "defaultPort"

    iget v2, p0, Lio/grpc/l$a;->a:I

    invoke-virtual {v0, v2, v1}, Lod5$a;->a(ILjava/lang/String;)V

    const-string v1, "proxyDetector"

    iget-object v2, p0, Lio/grpc/l$a;->b:Lzs6;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "syncContext"

    iget-object v2, p0, Lio/grpc/l$a;->c:Lch8;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serviceConfigParser"

    iget-object v2, p0, Lio/grpc/l$a;->d:Lgd7;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "customArgs"

    iget-object v2, p0, Lio/grpc/l$a;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scheduledExecutorService"

    iget-object v2, p0, Lio/grpc/l$a;->e:Lez4$o;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channelLogger"

    iget-object v2, p0, Lio/grpc/l$a;->f:Lo91;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "executor"

    iget-object v2, p0, Lio/grpc/l$a;->g:Lez4$h;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "overrideAuthority"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metricRecorder"

    iget-object v2, p0, Lio/grpc/l$a;->h:Lua5;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolverRegistry"

    iget-object p0, p0, Lio/grpc/l$a;->i:Lio/grpc/n;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
