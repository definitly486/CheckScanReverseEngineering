.class public final synthetic Lvm9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lz2a;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/my/target/t0;

.field public final synthetic f:Lkt9;

.field public final synthetic g:Lv4a;


# direct methods
.method public synthetic constructor <init>(Lwm9$a;Ljava/lang/String;Lz2a;Ljava/util/Map;Lcom/my/target/t0;Lkt9;Lv4a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lvm9;->b:Ljava/lang/String;

    iput-object p3, p0, Lvm9;->c:Lz2a;

    iput-object p4, p0, Lvm9;->d:Ljava/util/Map;

    iput-object p5, p0, Lvm9;->e:Lcom/my/target/t0;

    iput-object p6, p0, Lvm9;->f:Lkt9;

    iput-object p7, p0, Lvm9;->g:Lv4a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "DefaultAdServiceBuilder: mediation params is loaded"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lvm9;->b:Ljava/lang/String;

    iget-object v3, p0, Lvm9;->c:Lz2a;

    iget-object v4, p0, Lvm9;->d:Ljava/util/Map;

    iget-object v5, p0, Lvm9;->e:Lcom/my/target/t0;

    iget-object v6, p0, Lvm9;->f:Lkt9;

    iget-object v7, p0, Lvm9;->g:Lv4a;

    invoke-static/range {v2 .. v7}, Lwm9$a;->a(Ljava/lang/String;Lz2a;Ljava/util/Map;Lcom/my/target/t0;Lkt9;Lv4a;)V

    return-void
.end method
