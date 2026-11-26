.class public final Lcom/tapjoy/internal/j0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/HashMap;

.field public final synthetic b:Lcom/tapjoy/internal/l0;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/l0;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/j0;->b:Lcom/tapjoy/internal/l0;

    iput-object p2, p0, Lcom/tapjoy/internal/j0;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/tapjoy/internal/j0;->b:Lcom/tapjoy/internal/l0;

    iget-object v0, v0, Lcom/tapjoy/internal/l0;->e:Lcom/tapjoy/internal/r2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/internal/j0;->b:Lcom/tapjoy/internal/l0;

    iget-object v2, v2, Lcom/tapjoy/internal/l0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tapjoy/internal/j0;->b:Lcom/tapjoy/internal/l0;

    iget-object v2, v2, Lcom/tapjoy/internal/l0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/tapjoy/internal/j0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v2, "application/x-www-form-urlencoded"

    const-string v3, ""

    invoke-static {v1, v3, v0, v2, p0}, Lcom/tapjoy/internal/r2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    return-void
.end method
