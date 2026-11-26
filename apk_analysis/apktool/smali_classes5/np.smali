.class public final synthetic Lnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/a;

.field public final synthetic b:Lcom/warefly/checkscan/presentation/Deeplink;

.field public final synthetic c:Luj1;

.field public final synthetic d:Lvj1;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/a;Lcom/warefly/checkscan/presentation/Deeplink;Luj1;Lvj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp;->a:Lcom/warefly/checkscan/presentation/a;

    iput-object p2, p0, Lnp;->b:Lcom/warefly/checkscan/presentation/Deeplink;

    iput-object p3, p0, Lnp;->c:Luj1;

    iput-object p4, p0, Lnp;->d:Lvj1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lnp;->d:Lvj1;

    const/4 v1, 0x0

    iget-object v2, p0, Lnp;->a:Lcom/warefly/checkscan/presentation/a;

    iget-object v3, p0, Lnp;->b:Lcom/warefly/checkscan/presentation/Deeplink;

    iget-object p0, p0, Lnp;->c:Luj1;

    invoke-virtual {v2, v3, v1, p0, v0}, Lcom/warefly/checkscan/presentation/a;->c(Lcom/warefly/checkscan/presentation/Deeplink;ZLuj1;Lvj1;)V

    return-void
.end method
