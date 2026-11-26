.class public final synthetic Lmk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/work/impl/model/WorkProgressDao_Impl;

.field public final synthetic c:Landroidx/work/impl/model/WorkProgress;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/work/impl/model/WorkProgress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmk9;->b:Landroidx/work/impl/model/WorkProgressDao_Impl;

    iput-object p2, p0, Lmk9;->c:Landroidx/work/impl/model/WorkProgress;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmk9;->c:Landroidx/work/impl/model/WorkProgress;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p0, p0, Lmk9;->b:Landroidx/work/impl/model/WorkProgressDao_Impl;

    invoke-static {p0, v0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl;->d(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/work/impl/model/WorkProgress;Landroidx/sqlite/SQLiteConnection;)Lj59;

    move-result-object p0

    return-object p0
.end method
