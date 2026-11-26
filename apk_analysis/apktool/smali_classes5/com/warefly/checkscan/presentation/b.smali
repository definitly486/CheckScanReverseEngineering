.class public final Lcom/warefly/checkscan/presentation/b;
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

.field public final synthetic g:Lcom/warefly/checkscan/presentation/Deeplink$n;

.field public final synthetic h:Luj1;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/a;Lcom/warefly/checkscan/presentation/Deeplink$n;Luj1;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/b;->f:Lcom/warefly/checkscan/presentation/a;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/b;->g:Lcom/warefly/checkscan/presentation/Deeplink$n;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/b;->h:Luj1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/b;->g:Lcom/warefly/checkscan/presentation/Deeplink$n;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/b;->h:Luj1;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/b;->f:Lcom/warefly/checkscan/presentation/a;

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/presentation/a;->b(Lcom/warefly/checkscan/presentation/Deeplink$n;Luj1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
