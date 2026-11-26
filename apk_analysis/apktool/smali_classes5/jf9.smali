.class public final Ljf9;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Lkf9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljf9$a;
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public final l:Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;

.field public final m:Lff9;

.field public n:Lgf9;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Ljf9;->l:Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;

    iput-object p2, p0, Ljf9;->m:Lff9;

    return-void
.end method


# virtual methods
.method public final b()Lgf9;
    .locals 0

    iget-object p0, p0, Ljf9;->n:Lgf9;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "receipt"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
