.class public final Lcom/warefly/checkscan/CheckScanApplication$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/CheckScanApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lig4;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/CheckScanApplication;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/CheckScanApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/CheckScanApplication$b;->f:Lcom/warefly/checkscan/CheckScanApplication;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p1

    check-cast v0, Lig4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lig4;->a:Lhg4;

    iget-object v2, v1, Lhg4;->a:Llx2;

    sget-object v3, Luo4;->INFO:Luo4;

    iget-object v4, v2, Llx2;->a:Ljava/lang/Object;

    check-cast v4, Luo4;

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "[init] declare Android Context"

    invoke-virtual {v2, v3, v4}, Llx2;->a(Luo4;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Lkg4;

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/warefly/checkscan/CheckScanApplication$b;->f:Lcom/warefly/checkscan/CheckScanApplication;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lkg4;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4}, Lh;->c(Lnl3;)Ltc5;

    move-result-object v4

    invoke-static {v4}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v1, v4, v7, v6}, Lhg4;->b(Ljava/util/List;ZZ)V

    sget-object v8, Lwc5;->a:Ltc5;

    sget-object v9, Lpe;->a:Ltc5;

    sget-object v10, Lml5;->a:Ltc5;

    sget-object v11, Lge2;->a:Ltc5;

    sget-object v12, Loc8;->a:Ltc5;

    sget-object v13, Lk74;->a:Ltc5;

    sget-object v14, Lpj6;->a:Ltc5;

    sget-object v15, Lsa0;->a:Ltc5;

    sget-object v16, Ltw;->a:Ltc5;

    sget-object v17, Lbm6;->a:Ltc5;

    sget-object v18, Lh5;->a:Ltc5;

    sget-object v19, Lz53;->a:Ltc5;

    sget-object v20, Lpm2;->a:Ltc5;

    sget-object v21, Lwt7;->a:Ltc5;

    sget-object v22, Lz56;->a:Ltc5;

    sget-object v23, Lia7;->a:Ltc5;

    sget-object v24, Lef8;->a:Ltc5;

    sget-object v25, Lco3;->a:Ltc5;

    sget-object v26, Lfd;->a:Ltc5;

    sget-object v27, Lp41;->a:Ltc5;

    filled-new-array/range {v8 .. v27}, [Ltc5;

    move-result-object v4

    invoke-static {v4}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    sget-object v7, Lzu0;->a:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v4}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    iget-boolean v0, v0, Lig4;->b:Z

    iget-object v2, v2, Llx2;->a:Ljava/lang/Object;

    check-cast v2, Luo4;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_1

    invoke-static {}, Ldd5;->b()J

    move-result-wide v7

    invoke-virtual {v1, v4, v0, v6}, Lhg4;->b(Ljava/util/List;ZZ)V

    invoke-static {v7, v8}, Lqv8$a$a;->a(J)J

    move-result-wide v6

    iget-object v0, v1, Lhg4;->d:Lf64;

    iget-object v0, v0, Lf64;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    sget-object v0, Lwt2;->c:Lwt2$a;

    sget-object v0, Lau2;->MICROSECONDS:Lau2;

    invoke-static {v6, v7, v0}, Lwt2;->k(JLau2;)J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4, v0, v6}, Lhg4;->b(Ljava/util/List;ZZ)V

    :goto_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1405c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lb36;

    const-string v3, "server_host"

    invoke-direct {v2, v3, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140324

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lb36;

    const-string v6, "location_by_ip_base_url"

    invoke-direct {v4, v6, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f140487

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lb36;

    const-string v6, "ofd_base_url"

    invoke-direct {v5, v6, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "/v1/sse/event/subscribe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lb36;

    const-string v6, "sse_url"

    invoke-direct {v3, v6, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v4, v5, v3}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v1, Lhg4;->e:Lfs6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lfs6;->a:Lhg4;

    iget-object v2, v2, Lhg4;->a:Llx2;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Luo4;->DEBUG:Luo4;

    invoke-virtual {v2, v4, v3}, Llx2;->a(Luo4;Ljava/lang/String;)V

    iget-object v1, v1, Lfs6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
