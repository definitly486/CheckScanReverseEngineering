.class public final Lup;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/a;

.field public final synthetic g:Lcom/warefly/checkscan/presentation/Deeplink;

.field public final synthetic h:Luj1;

.field public final synthetic i:Lvj1;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/a;Lcom/warefly/checkscan/presentation/Deeplink;Luj1;Lvj1;)V
    .locals 0

    iput-object p1, p0, Lup;->f:Lcom/warefly/checkscan/presentation/a;

    iput-object p2, p0, Lup;->g:Lcom/warefly/checkscan/presentation/Deeplink;

    iput-object p3, p0, Lup;->h:Luj1;

    iput-object p4, p0, Lup;->i:Lvj1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lup;->f:Lcom/warefly/checkscan/presentation/a;

    iget-object v1, v0, Lcom/warefly/checkscan/presentation/a;->l:Lhi0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lhi0;->onNext(Ljava/lang/Object;)V

    iget-object v1, p0, Lup;->h:Luj1;

    iget-object v2, p0, Lup;->i:Lvj1;

    iget-object p0, p0, Lup;->g:Lcom/warefly/checkscan/presentation/Deeplink;

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/warefly/checkscan/presentation/a;->c(Lcom/warefly/checkscan/presentation/Deeplink;ZLuj1;Lvj1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
