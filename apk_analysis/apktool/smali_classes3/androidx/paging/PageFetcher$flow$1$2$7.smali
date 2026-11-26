.class final synthetic Landroidx/paging/PageFetcher$flow$1$2$7;
.super Lk8;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PageFetcher$flow$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk8;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "refresh(Ljava/lang/Object;)V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Landroidx/paging/PageFetcher;

    const-string v4, "refresh"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lk8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/paging/PageFetcher$flow$1$2$7;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    iget-object p0, p0, Lk8;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/PageFetcher;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Landroidx/paging/PageFetcher;->refresh$default(Landroidx/paging/PageFetcher;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method
