.class public final Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$k;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Ls22;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->showAd(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$k;->c:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    sget-object p1, Ls22$a;->b:Ls22$a;

    invoke-direct {p0, p1}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method


# virtual methods
.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->q:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$k;->c:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const p1, 0x7f14001c

    invoke-static {p1, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
