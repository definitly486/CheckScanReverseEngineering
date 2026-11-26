.class public final Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Lt79;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$c;->b:Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt79;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$c;->b:Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;

    instance-of v0, p0, Log4;

    const-class v1, Lt79;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Log4;

    invoke-interface {p0}, Log4;->getScope()Lze7;

    move-result-object p0

    invoke-static {v1, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
