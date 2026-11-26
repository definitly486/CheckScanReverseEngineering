.class public final Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;-><init>()V
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
.field public final synthetic b:Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$c;->b:Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt79;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$c;->b:Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Lt79;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
