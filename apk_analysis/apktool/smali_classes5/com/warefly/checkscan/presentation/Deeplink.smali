.class public abstract Lcom/warefly/checkscan/presentation/Deeplink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/Deeplink$a;,
        Lcom/warefly/checkscan/presentation/Deeplink$b;,
        Lcom/warefly/checkscan/presentation/Deeplink$c;,
        Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog;,
        Lcom/warefly/checkscan/presentation/Deeplink$d;,
        Lcom/warefly/checkscan/presentation/Deeplink$e;,
        Lcom/warefly/checkscan/presentation/Deeplink$Desktop;,
        Lcom/warefly/checkscan/presentation/Deeplink$f;,
        Lcom/warefly/checkscan/presentation/Deeplink$g;,
        Lcom/warefly/checkscan/presentation/Deeplink$h;,
        Lcom/warefly/checkscan/presentation/Deeplink$i;,
        Lcom/warefly/checkscan/presentation/Deeplink$j;,
        Lcom/warefly/checkscan/presentation/Deeplink$k;,
        Lcom/warefly/checkscan/presentation/Deeplink$l;,
        Lcom/warefly/checkscan/presentation/Deeplink$m;,
        Lcom/warefly/checkscan/presentation/Deeplink$n;,
        Lcom/warefly/checkscan/presentation/Deeplink$o;,
        Lcom/warefly/checkscan/presentation/Deeplink$p;,
        Lcom/warefly/checkscan/presentation/Deeplink$q;,
        Lcom/warefly/checkscan/presentation/Deeplink$r;,
        Lcom/warefly/checkscan/presentation/Deeplink$s;,
        Lcom/warefly/checkscan/presentation/Deeplink$t;,
        Lcom/warefly/checkscan/presentation/Deeplink$u;,
        Lcom/warefly/checkscan/presentation/Deeplink$v;,
        Lcom/warefly/checkscan/presentation/Deeplink$w;,
        Lcom/warefly/checkscan/presentation/Deeplink$x;,
        Lcom/warefly/checkscan/presentation/Deeplink$y;,
        Lcom/warefly/checkscan/presentation/Deeplink$z;,
        Lcom/warefly/checkscan/presentation/Deeplink$a0;,
        Lcom/warefly/checkscan/presentation/Deeplink$Webview;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/Deeplink;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/Deeplink;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/Deeplink;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/Deeplink;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "checkscan://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
