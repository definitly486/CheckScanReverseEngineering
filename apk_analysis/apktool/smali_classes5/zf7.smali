.class public final Lzf7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzf7;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 3

    sget-object p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->q:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;

    invoke-direct {p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;-><init>()V

    iget p0, p0, Lzf7;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lb36;

    const-string v1, "CHEQUE_ID_KEY"

    invoke-direct {v0, v1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lb36;

    const-string v1, "CHEQUE_JSON_KEY"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, p0}, [Lb36;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Lzf7;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lzf7;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lzf7;

    iget p0, p0, Lzf7;->a:I

    iget p1, p1, Lzf7;->a:I

    if-eq p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lzf7;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ChequePage(chequeId="

    const-string v1, ", cheque=null)"

    iget p0, p0, Lzf7;->a:I

    invoke-static {p0, v0, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
