.class public final synthetic Lu26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroidx/paging/LoadStates;

.field public final synthetic f:Landroidx/paging/LoadStates;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu26;->b:Ljava/util/List;

    iput p2, p0, Lu26;->c:I

    iput p3, p0, Lu26;->d:I

    iput-object p4, p0, Lu26;->e:Landroidx/paging/LoadStates;

    iput-object p5, p0, Lu26;->f:Landroidx/paging/LoadStates;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lu26;->e:Landroidx/paging/LoadStates;

    iget-object v1, p0, Lu26;->f:Landroidx/paging/LoadStates;

    iget-object v2, p0, Lu26;->b:Ljava/util/List;

    iget v3, p0, Lu26;->c:I

    iget p0, p0, Lu26;->d:I

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/paging/PagingData$Companion;->b(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method
