.class public final Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lv05;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$b;->f:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$b;->f:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lw05;

    invoke-direct {v1, v0}, Lw05;-><init>(Landroid/content/Context;)V

    new-instance v0, Ld12;

    invoke-direct {v0}, Ld12;-><init>()V

    iget-object v2, v1, Lw05;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ld12;

    invoke-direct {v0}, Ld12;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/main/view/a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/auth/presentation/main/view/a;-><init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lw05;->a()Ly05;

    move-result-object p0

    return-object p0
.end method
