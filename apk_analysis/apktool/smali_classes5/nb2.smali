.class public final synthetic Lnb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

.field public final synthetic c:Ls48;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;Ls48;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb2;->b:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

    iput-object p2, p0, Lnb2;->c:Ls48;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnb2;->c:Ls48;

    iget-object p0, p0, Lnb2;->b:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;->d:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$e;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
