.class public final Lcom/warefly/checkscan/presentation/CiceroneActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/CiceroneActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Lam5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/CiceroneActivity;

.field public final synthetic c:Lkv6;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;Lkv6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$h;->b:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$h;->c:Lkv6;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lam5;"
        }
    .end annotation

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$h;->b:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    invoke-static {v0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lam5;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$h;->c:Lkv6;

    invoke-static {v1, v0, p0, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
