.class public final Lmt9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llma$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmt9;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrn9;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Lifa;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrn9;Ljava/util/concurrent/CountDownLatch;Lifa;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmt9$a;->a:Lrn9;

    iput-object p2, p0, Lmt9$a;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lmt9$a;->c:Lifa;

    iput-object p4, p0, Lmt9$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lmt9$a;->a:Lrn9;

    const/4 v1, 0x0

    iput-object v1, v0, Lxha;->d:Ljava/lang/Object;

    iget-object v0, p0, Lmt9$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lmt9$a;->c:Lifa;

    iget-object v0, v0, Lifa;->b:Lpp9;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmt9$a;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0xfa1

    invoke-virtual {v0, v1, v2, p0}, Lpp9;->d(IILjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lmt9$a;->a:Lrn9;

    .line 39
    iput-object p1, v0, Lxha;->d:Ljava/lang/Object;

    .line 40
    iget-object p0, p0, Lmt9$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
