.class public final Lnw7$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnw7;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lqw7;Lnl3;Lnl3;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lnw7;


# direct methods
.method public constructor <init>(Lnw7;)V
    .locals 0

    iput-object p1, p0, Lnw7$b;->h:Lnw7;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lnw7$b;->h:Lnw7;

    invoke-virtual {p0}, Lnw7;->b()V

    return-void
.end method
