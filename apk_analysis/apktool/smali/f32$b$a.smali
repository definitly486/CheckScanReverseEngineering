.class public final Lf32$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf32$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lf32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf32<",
            "TT;",
            "Landroidx/viewbinding/ViewBinding;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Lf32;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf32<",
            "TT;",
            "Landroidx/viewbinding/ViewBinding;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf32$b$a;->b:Lf32;

    iput-object p2, p0, Lf32$b$a;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lf32$b$a;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lf32$a;

    iget-object v0, v0, Lf32$a;->l:Landroidx/viewbinding/ViewBinding;

    iget-object p0, p0, Lf32$b$a;->b:Lf32;

    invoke-virtual {p0, v0, p1, p2}, Lf32;->j(Landroidx/viewbinding/ViewBinding;J)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
