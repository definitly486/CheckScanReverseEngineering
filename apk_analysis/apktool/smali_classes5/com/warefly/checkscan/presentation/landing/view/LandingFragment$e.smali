.class public final Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Ls05;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$e;->b:Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls05;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$e;->b:Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Ls05;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
