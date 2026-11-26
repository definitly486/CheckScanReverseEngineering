.class public final synthetic Lw26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/paging/LoadStates;

.field public final synthetic c:Landroidx/paging/LoadStates;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw26;->b:Landroidx/paging/LoadStates;

    iput-object p2, p0, Lw26;->c:Landroidx/paging/LoadStates;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw26;->b:Landroidx/paging/LoadStates;

    iget-object p0, p0, Lw26;->c:Landroidx/paging/LoadStates;

    invoke-static {v0, p0}, Landroidx/paging/PagingData$Companion;->a(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method
