.class public final Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$a;->b:Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$a;->b:Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->o()Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->validateLinkFormat(Ljava/lang/String;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
