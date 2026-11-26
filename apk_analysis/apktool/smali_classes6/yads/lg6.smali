.class public final synthetic Lyads/lg6;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# static fields
.field public static final b:Lyads/lg6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/lg6;

    invoke-direct {v0}, Lyads/lg6;-><init>()V

    sput-object v0, Lyads/lg6;->b:Lyads/lg6;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "getDecoratedMeasuredHeight(Landroid/view/View;)I"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-class v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v3, "getDecoratedMeasuredHeight"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
